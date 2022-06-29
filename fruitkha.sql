-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 09, 2022 lúc 06:10 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fruitkha`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2022_04_15_115330_create_tbl_admin_table', 1),
(4, '2022_04_15_172929_create_tbl_category_product', 2),
(5, '2022_04_16_023754_create_tbl_brand_product', 3),
(6, '2022_04_16_031023_create_tbl_product', 4),
(7, '2022_04_20_081811_tbl_customer', 5),
(8, '2022_04_20_091744_tbl_customer', 6),
(9, '2022_04_20_094804_tbl_shipping', 7),
(10, '2022_04_20_172200_tbl_payment', 8),
(11, '2022_04_20_172247_tbl_order', 8),
(12, '2022_04_20_172328_tbl_order_details', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'chien@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'huuchien.np', '156055000', '2022-04-08 16:15:48', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand_product`
--

CREATE TABLE `tbl_brand_product` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand_product`
--

INSERT INTO `tbl_brand_product` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'Lemon', '1', 0, NULL, NULL),
(2, 'Strawberry', '3', 0, NULL, NULL),
(4, 'Berry', '4', 0, NULL, NULL),
(5, 'Mango', '3', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_post`
--

CREATE TABLE `tbl_category_post` (
  `cate_post_id` int(10) UNSIGNED NOT NULL,
  `cate_post_name` varchar(255) NOT NULL,
  `cate_post_status` int(11) NOT NULL,
  `cate_post_slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_post`
--

INSERT INTO `tbl_category_post` (`cate_post_id`, `cate_post_name`, `cate_post_status`, `cate_post_slug`) VALUES
(1, 'Tin tức nông nghiệp', 1, 'tin-tuc-nong-nghiep'),
(2, 'Tin tức công nghệ', 1, 'tin-tuc-cong-nghe'),
(3, 'Tin tức thị trường', 1, 'tin-tuc-thi-truong'),
(4, 'Tin tức nhà nông', 1, 'tin-tuc-nha-nong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Berry', 't', 0, NULL, NULL),
(2, 'Strawberry', 'w', 0, NULL, NULL),
(5, 'Lemon', 'e', 0, NULL, NULL),
(6, 'Apple', 'a', 0, NULL, NULL),
(8, 'Mango', 'Xoài', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_coupon`
--

CREATE TABLE `tbl_coupon` (
  `coupon_id` int(11) NOT NULL,
  `coupon_name` varchar(150) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_times` int(11) NOT NULL,
  `coupon_features` int(11) NOT NULL,
  `coupon_percent_discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_coupon`
--

INSERT INTO `tbl_coupon` (`coupon_id`, `coupon_name`, `coupon_code`, `coupon_times`, `coupon_features`, `coupon_percent_discount`) VALUES
(1, 'mã giảm 20000', 'A020KPM', 1, 2, 20000),
(2, 'mã giảm 10%', 'T410NPHC', 30, 1, 10),
(3, 'mã giảm 10000', 'CGB10E4', 20, 2, 10000),
(6, 'mã giảm 20%', 'UIF20A83', 190, 1, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_address`, `customer_phone`, `created_at`, `updated_at`) VALUES
(23, 'Strawberry', 'strawberry@mail.com', 'hai duong province', '7321234', NULL, NULL),
(24, 'Strawberry2', 'abc2@mail.com', 'hai duong 2 province', '086193', NULL, NULL),
(26, 'timo', 'timo@mail.com', '83 chương dương', '07823', NULL, NULL),
(27, 'grabbike', 'bike@mail.com', '23 province', '905157', NULL, NULL),
(28, 'Trang', 'trang@mail.com', 'haiduong', '23675', NULL, NULL),
(29, 'oanh', 'oanh@mail.com', 'hung yen', '385092', NULL, NULL),
(30, 'Quoc', 'quoc@mail.com', 'hanam', '0627884', NULL, NULL),
(32, 'phương phương', 'phuong@mail.com', 'hà giang', '9157762', NULL, NULL),
(33, 'Strawberry3', 'strawberry@mail.com', 'hai duong province', '7321234', NULL, NULL),
(34, 'grape', 'strawberry@mail.com', 'ha noi', '7321234', NULL, NULL),
(35, 'My', 'my@mail.com', 'ha nam', '0908146', NULL, NULL),
(36, 'Quyet', 'quyet@mail.com', 'phu tho', '021 684 1194', NULL, NULL),
(37, 'Giao hang tiet kiem', 'abc@mail.com', 'hai duong province', '7321234', NULL, NULL),
(38, 'Quoc', 'quoc@mail.com', 'hanam', '0627884', NULL, NULL),
(39, 'be chi nhanh 12', 'abc@mail.com', 'ha noi', '7321234', NULL, NULL),
(40, 'tiki', 'abc@mail.com', 'hai duong province', '7321234', NULL, NULL),
(41, 'tiki', 'abc@mail.com', 'hai duong province', '7321234', NULL, NULL),
(42, 'lazoda', 'abc@mail.com', 'hai nam', '7321234', NULL, NULL),
(43, 'Mai', 'abc@mail.com', 'vietnam', '00902', NULL, NULL),
(44, 'Trong', 'abc@mail.com', 'hai duong', '123457', NULL, NULL),
(45, 'Trung', 'trung@mail.com', 'ha noi', '0526049124', NULL, NULL),
(46, 'taliana', 'taliana@mail.com', 'ukraina', '114113', NULL, NULL),
(47, 'Chien', 'chienchi@mail.com', '12340 Me Tri street', '654321', NULL, NULL),
(48, 'Nguyên', 'dangthinguyen@mail.com', 'quang ninh', '123456789', NULL, NULL),
(49, 'Thien Ngan', 'ngan@mail.com', 'hai duong', '242424', NULL, NULL),
(50, 'Huyền', 'huyen@mail.com', 'hà nam', '293553', NULL, NULL),
(51, 'Mai Thị Thập', 'thap@mail.com', 'hà nam', '222222', NULL, NULL),
(52, 'Thúy Ngân', 'thuyngan@mail.com', 'hà nội', '0464150243', NULL, NULL),
(53, 'Thúy Loan', 'thuyloan@mail.com', 'hà nội', '642053147', NULL, NULL),
(54, 'Huyền', 'huyen@mail.com', '28B Nguyễn Văn Trực, q. Hòa Bình, tỉnh Hòa Ca', '60531 9999', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_fee`
--

CREATE TABLE `tbl_fee` (
  `fee_id` int(11) NOT NULL,
  `fee_matp` int(10) NOT NULL,
  `fee_maqh` int(10) NOT NULL,
  `fee_feeship` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_fee`
--

INSERT INTO `tbl_fee` (`fee_id`, `fee_matp`, `fee_maqh`, `fee_feeship`) VALUES
(29, 1, 1, '10000'),
(30, 2, 24, '27000'),
(31, 4, 40, '24500'),
(32, 6, 58, '25000'),
(33, 8, 70, '24000'),
(34, 10, 80, '24000'),
(35, 11, 94, '30000'),
(36, 12, 105, '30000'),
(37, 14, 116, '25000'),
(38, 15, 132, '26500'),
(39, 17, 148, '25000'),
(40, 19, 164, '22500'),
(41, 20, 178, '23000'),
(42, 22, 193, '22000'),
(43, 24, 213, '18000'),
(44, 25, 227, '20000'),
(45, 26, 243, '18000'),
(46, 30, 288, '19000'),
(47, 31, 303, '19000'),
(48, 36, 356, '16000'),
(49, 42, 436, '22000'),
(50, 44, 450, '26000'),
(51, 68, 672, '32500');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(26, 38, 27, 46, '1660000', 'Dang cho xu ly', '2022-05-02 11:27:10', NULL),
(27, 38, 28, 47, '490000', 'Dang cho xu ly', '2022-05-02 11:34:45', NULL),
(28, 39, 29, 48, '2552500', 'Dang cho xu ly', '2022-05-02 20:58:26', NULL),
(29, 39, 30, 49, '993000', 'Dang cho xu ly', '2022-05-02 21:14:56', NULL),
(30, 39, 31, 50, '3105000', 'Dang cho xu ly', '2022-05-02 21:21:48', NULL),
(31, 39, 32, 51, '707000', 'Dang cho xu ly', '2022-05-02 21:25:40', NULL),
(32, 40, 33, 52, '42500', 'Dang cho xu ly', '2022-05-03 09:58:06', NULL),
(33, 40, 34, 53, '278000', 'Dang cho xu ly', '2022-05-03 10:01:31', NULL),
(34, 41, 35, 54, '370000', 'Dang cho xu ly', '2022-05-03 10:04:47', NULL),
(35, 41, 36, 55, '1412500', 'Dang cho xu ly', '2022-05-03 10:09:47', NULL),
(36, 42, 37, 56, '3610000', 'Dang cho xu ly', '2022-05-03 18:58:58', NULL),
(37, 43, 38, 57, '53000', 'Dang cho xu ly', '2022-05-04 02:19:31', NULL),
(38, 44, 39, 58, '293600', 'Dang cho xu ly', '2022-05-04 09:16:54', NULL),
(39, 45, 40, 59, '32000', 'Dang cho xu ly', '2022-05-05 00:57:36', NULL),
(40, 46, 41, 60, '30000', 'Dang cho xu ly', '2022-05-14 00:04:01', NULL),
(41, 46, 42, 61, '1574000', 'Dang cho xu ly', '2022-05-14 00:09:03', NULL),
(42, 47, 43, 62, '2412100', 'Dang cho xu ly', '2022-05-15 01:56:03', NULL),
(43, 48, 44, 63, '726000', 'Dang cho xu ly', '2022-05-19 00:18:18', NULL),
(44, 50, 45, 64, '20000', 'Dang cho xu ly', '2022-05-25 09:37:14', NULL),
(45, 51, 46, 65, '30000', 'Dang cho xu ly', '2022-05-31 23:40:10', NULL),
(46, 53, 47, 66, '38000', 'Dang cho xu ly', '2022-06-01 03:08:16', NULL),
(47, 53, 48, 67, '400500', 'Dang cho xu ly', '2022-06-01 03:10:25', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_fee` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_coupon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `product_fee`, `product_coupon`, `created_at`, `updated_at`) VALUES
(14, 13, 8, 'Nho', '65000', '1', '', '', NULL, NULL),
(15, 14, 6, 'Apple', '120000', '50', '', '', NULL, NULL),
(16, 15, 9, 'Dâu', '120000', '16', '', '', NULL, NULL),
(17, 18, 9, 'Dâu', '120000', '3', '21000', 'T410NPHC', NULL, NULL),
(18, 19, 8, 'Nho', '65000', '15', '21000', 'Ko áp dụng', NULL, NULL),
(19, 20, 6, 'Apple', '120000', '2', '20000', 'CGB10E4', NULL, NULL),
(20, 21, 5, 'Lemon', '15000', '1', '20000', 'CGB10E4', NULL, NULL),
(21, 21, 2, 'Strawberry', '170000', '1', '20000', 'CGB10E4', NULL, NULL),
(22, 22, 4, 'Kiwi', '200000', '1', '10000', 'Ko áp dụng', NULL, NULL),
(23, 23, 8, 'Nho', '65000', '1', '21000', 'Ko áp dụng', NULL, NULL),
(24, 24, 9, 'Dâu', '120000', '1', '15000', 'A020KPM', NULL, NULL),
(25, 25, 9, 'Dâu', '120000', '15', '15000', 'A020KPM', NULL, NULL),
(26, 26, 8, 'Nho', '65000', '20', '10000', 'Ko áp dụng', NULL, NULL),
(27, 26, 9, 'Dâu', '120000', '3', '10000', 'Ko áp dụng', NULL, NULL),
(28, 27, 6, 'Apple', '120000', '3', '10000', 'Ko áp dụng', NULL, NULL),
(29, 27, 8, 'Nho', '65000', '2', '10000', 'Ko áp dụng', NULL, NULL),
(30, 28, 8, 'Nho', '65000', '15', '10000', 'T410NPHC', NULL, NULL),
(31, 28, 5, 'Lemon', '15000', '10', '10000', 'T410NPHC', NULL, NULL),
(32, 28, 2, 'Strawberry', '170000', '10', '10000', 'T410NPHC', NULL, NULL),
(33, 29, 8, 'Nho', '65000', '15', '18000', 'Ko áp dụng', NULL, NULL),
(34, 30, 9, 'Dâu', '120000', '10', '10000', 'T410NPHC', NULL, NULL),
(35, 30, 5, 'Lemon', '15000', '150', '10000', 'T410NPHC', NULL, NULL),
(36, 31, 8, 'Nho', '65000', '5', '22000', 'Ko áp dụng', NULL, NULL),
(37, 31, 6, 'Apple', '120000', '3', '22000', 'Ko áp dụng', NULL, NULL),
(38, 32, 6, 'Apple', '120000', '50', '22500', 'A020KPM', NULL, NULL),
(39, 32, 8, 'Nho', '65000', '1', '22500', 'A020KPM', NULL, NULL),
(40, 33, 8, 'Nho', '65000', '4', '18000', 'Ko áp dụng', NULL, NULL),
(41, 34, 9, 'Dâu', '120000', '3', '10000', 'Ko áp dụng', NULL, NULL),
(42, 35, 10, 'eee', '170000', '8', '22500', 'Ko áp dụng', NULL, NULL),
(43, 35, 5, 'Lemon', '15000', '2', '22500', 'Ko áp dụng', NULL, NULL),
(44, 36, 4, 'Kiwi', '200000', '20', '10000', 'T410NPHC', NULL, NULL),
(45, 37, 5, 'Lemon', '15000', '2', '23000', 'Ko áp dụng', NULL, NULL),
(46, 38, 13, 'Xoài đỏ', '185000', '1', '20000', 'T410NPHC', NULL, NULL),
(47, 38, 12, 'Táo fuji New Zealand', '99000', '1', '20000', 'T410NPHC', NULL, NULL),
(48, 38, 11, 'Xoài', '20000', '1', '20000', 'T410NPHC', NULL, NULL),
(49, 39, 2, 'Strawberry', '170000', '14', '22000', 'CGB10E4', NULL, NULL),
(50, 40, 2, 'Strawberry', '170000', '9', '10000', 'A020KPM', NULL, NULL),
(51, 41, 12, 'Táo fuji New Zealand', '99000', '12', '16000', 'Ko áp dụng', NULL, NULL),
(52, 41, 13, 'Xoài đỏ', '185000', '2', '16000', 'Ko áp dụng', NULL, NULL),
(53, 42, 13, 'Xoài đỏ', '185000', '10', '19000', 'T410NPHC', NULL, NULL),
(54, 42, 12, 'Táo fuji New Zealand', '99000', '1', '19000', 'T410NPHC', NULL, NULL),
(55, 42, 11, 'Xoài', '20000', '1', '19000', 'T410NPHC', NULL, NULL),
(56, 42, 9, 'Quả mâm xôi', '120000', '1', '19000', 'T410NPHC', NULL, NULL),
(57, 42, 8, 'Nho', '65000', '1', '19000', 'T410NPHC', NULL, NULL),
(58, 42, 6, 'Táo xanh', '120000', '1', '19000', 'T410NPHC', NULL, NULL),
(59, 42, 5, 'Lemon', '15000', '1', '19000', 'T410NPHC', NULL, NULL),
(60, 42, 4, 'Kiwi', '200000', '1', '19000', 'T410NPHC', NULL, NULL),
(61, 42, 2, 'Strawberry', '170000', '1', '19000', 'T410NPHC', NULL, NULL),
(62, 43, 13, 'Xoài đỏ', '185000', '3', '22000', 'UIF20A83', NULL, NULL),
(63, 43, 8, 'Nho', '65000', '5', '22000', 'UIF20A83', NULL, NULL),
(64, 44, 12, 'Táo fuji New Zealand', '99000', '15', '10000', 'CGB10E4', NULL, NULL),
(65, 44, 13, 'Xoài đỏ', '185000', '1', '10000', 'CGB10E4', NULL, NULL),
(66, 44, 2, 'Strawberry', '170000', '4', '10000', 'CGB10E4', NULL, NULL),
(67, 45, 13, 'Xoài đỏ', '185000', '20', '10000', 'A020KPM', NULL, NULL),
(68, 46, 12, 'Táo fuji New Zealand', '99000', '3', '18000', 'A020KPM', NULL, NULL),
(69, 46, 8, 'Nho', '65000', '4', '18000', 'A020KPM', NULL, NULL),
(70, 47, 13, 'Xoài đỏ', '185000', '1', '18000', 'T410NPHC', NULL, NULL),
(71, 47, 9, 'Quả mâm xôi', '120000', '2', '18000', 'T410NPHC', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(34, '2', 'Đang chờ xử lý', NULL, NULL),
(35, '2', 'Đang chờ xử lý', NULL, NULL),
(36, '2', 'Đang chờ xử lý', NULL, NULL),
(37, '2', 'Đang chờ xử lý', NULL, NULL),
(38, '2', 'Đang chờ xử lý', NULL, NULL),
(39, '2', 'Đang chờ xử lý', NULL, NULL),
(40, '2', 'Đang chờ xử lý', NULL, NULL),
(41, '2', 'Đang chờ xử lý', NULL, NULL),
(42, '2', 'Đang chờ xử lý', NULL, NULL),
(43, '2', 'Đang chờ xử lý', NULL, NULL),
(44, '1', 'Đang chờ xử lý', NULL, NULL),
(45, '1', 'Đang chờ xử lý', NULL, NULL),
(46, '2', 'Đang chờ xử lý', NULL, NULL),
(47, '2', 'Đang chờ xử lý', NULL, NULL),
(48, '1', 'Đang chờ xử lý', NULL, NULL),
(49, '2', 'Đang chờ xử lý', NULL, NULL),
(50, '1', 'Đang chờ xử lý', NULL, NULL),
(51, '2', 'Đang chờ xử lý', NULL, NULL),
(52, '2', 'Đang chờ xử lý', NULL, NULL),
(53, '2', 'Đang chờ xử lý', NULL, NULL),
(54, '1', 'Đang chờ xử lý', NULL, NULL),
(55, '2', 'Đang chờ xử lý', NULL, NULL),
(56, '2', 'Đang chờ xử lý', NULL, NULL),
(57, '2', 'Đang chờ xử lý', NULL, NULL),
(58, '2', 'Đang chờ xử lý', NULL, NULL),
(59, '1', 'Đang chờ xử lý', NULL, NULL),
(60, '2', 'Đang chờ xử lý', NULL, NULL),
(61, '2', 'Đang chờ xử lý', NULL, NULL),
(62, '1', 'Đang chờ xử lý', NULL, NULL),
(63, '1', 'Đang chờ xử lý', NULL, NULL),
(64, '1', 'Đang chờ xử lý', NULL, NULL),
(65, '1', 'Đang chờ xử lý', NULL, NULL),
(66, '1', 'Đang chờ xử lý', NULL, NULL),
(67, '1', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `post_id` int(11) NOT NULL,
  `post_title` tinytext NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_desc` text NOT NULL,
  `post_content` text NOT NULL,
  `post_meta_desc` varchar(255) NOT NULL,
  `post_meta_keywords` varchar(255) NOT NULL,
  `post_status` int(11) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `cate_post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_posts`
--

INSERT INTO `tbl_posts` (`post_id`, `post_title`, `post_slug`, `post_desc`, `post_content`, `post_meta_desc`, `post_meta_keywords`, `post_status`, `post_image`, `cate_post_id`) VALUES
(3, 'Sầu riêng tăng giá, cứ bán trái 1 cây 6 năm tuổi, nông dân Hậu Giang \"đút túi\" 5 triệu đồng', 'sau-rieng-tang-gia', '<p><span style=\"color:#c0392b\">Hiện thương l&aacute;i v&agrave;o tận vườn trồng sầu ri&ecirc;ng của n&ocirc;ng d&acirc;n huyện Phụng Hiệp (tỉnh Hậu Giang) thu mua tr&aacute;i với gi&aacute;</span><span style=\"color:#000000\"> <em>50.000 - 55.000 đồng/kg</em></span><span style=\"color:#c0392b\"> t&ugrave;y giống, cao hơn c&ugrave;ng kỳ năm trước gần 10.000 đồng/kg. Trừ hết chi ph&iacute;, mỗi c&acirc;y sầu ri&ecirc;ng cho thu nhập hơn 5 triệu đồng.</span></p>', '<p>Theo thống k&ecirc; của ng&agrave;nh chuy&ecirc;n m&ocirc;n, to&agrave;n huyện Phụng Hiệp hiện c&oacute; 385ha sầu ri&ecirc;ng, chủ yếu l&agrave; Ri 6 v&agrave; Monthon. Trong đ&oacute;, 223ha đang cho tr&aacute;i.</p>\r\n\r\n<p><a href=\"https://danviet.mediacdn.vn/296231569849192448/2022/5/3/sb3499-9-2-1651511579394-1651511579971651984292.jpg\" title=\"Nông dân huyện Phụng Hiệp, tỉnh Hậu Giang chăm sóc vườn sầu riêng.\"><img alt=\"Sầu riêng tăng giá, cứ bán trái 1 cây 6 năm tuổi, nông dân Hậu Giang &quot;đút túi&quot; 5 triệu đồng - Ảnh 1.\" height=\"\" src=\"https://danviet.mediacdn.vn/296231569849192448/2022/5/3/sb3499-9-2-1651511579394-1651511579971651984292.jpg\" title=\"Sầu riêng tăng giá, cứ bán trái 1 cây 6 năm tuổi, nông dân Hậu Giang &quot;đút túi&quot; 5 triệu đồng - Ảnh 1.\" width=\"\" /></a></p>\r\n\r\n<p><strong><em>N&ocirc;ng d&acirc;n huyện Phụng Hiệp, tỉnh Hậu Giang chăm s&oacute;c vườn sầu ri&ecirc;ng.</em></strong></p>\r\n\r\n<p>Sầu ri&ecirc;ng l&agrave; loại c&acirc;y l&acirc;u năm, đ&ograve;i hỏi kỹ thuật canh t&aacute;c cao. Sau 4 năm trồng c&acirc;y sầu ri&ecirc;ng mới bắt đầu cho tr&aacute;i, c&acirc;y c&agrave;ng lớn năng suất c&agrave;ng cao.&nbsp;</p>\r\n\r\n<p>Trung b&igrave;nh đối với c&acirc;y 6 năm tuổi cho năng suất từ 150-200kg/năm, hiện thương l&aacute;i v&agrave;o tận vườn thu mua với gi&aacute; 50.000 - 55.000 đồng/kg t&ugrave;y giống, cao hơn c&ugrave;ng kỳ năm trước gần 10.000 đồng/kg, trừ hết chi ph&iacute;, mỗi c&acirc;y cho thu nhập hơn 5 triệu đồng.&nbsp;</p>\r\n\r\n<p>&Ocirc;ng Nguyễn Thanh Bạc, nh&agrave; vườn trồng sầu ri&ecirc;ng ở x&atilde; Phụng Hiệp, huyện Phụng Hiệp (tỉnh Hậu Giang), cho biết gia đ&igrave;nh &ocirc;ng trồng được 70 gốc sầu ri&ecirc;ng Ri 6.</p>\r\n\r\n<p>Năm nay, &ocirc;ng Bạc ước đạt hơn 10 tấn tr&aacute;i sầu ri&ecirc;ng. Do trồng theo quy tr&igrave;nh sầu ri&ecirc;ng sạch, sử dụng ph&acirc;n thuốc hữu cơ, n&ecirc;n được hệ thống của si&ecirc;u thị thu mua với gi&aacute; 55.000 đồng/kg, cao hơn c&aacute;c hộ xung quanh 5.000 đồng/kg.</p>', 'Sầu riêng tăng giá, cứ bán trái 1 cây 6 năm tuổi, nông dân Hậu Giang \"đút túi\" 5 triệu đồng', 'sầu riêng, lãi, Hậu Giang', 1, '40.jpg', 4),
(4, 'Gia đình trẻ biến sân thượng trống thành \"khu vườn trên mây\"', 'gia-dinh-tre-bien-san-thuong-thanh-khu-vuon-tren-may', '<p>Sở hữu khu vườn s&acirc;n thượng 40m2 với thiết kế v&ocirc; c&ugrave;ng s&aacute;ng tạo, gia đ&igrave;nh 4 th&agrave;nh vi&ecirc;n nằm giữa th&agrave;nh phố Nha Trang đ&atilde; biến khu vườn th&agrave;nh một trang trại thu nhỏ với đủ m&agrave;u sắc c&acirc;y tr&aacute;i đều cho năng suất cao.</p>', '<p>Xuất ph&aacute;t từ đam m&ecirc; l&agrave;m vườn, vợ chồng anh Quốc Bảo sống ở th&agrave;nh phố Nha Trang đ&atilde; cải tạo khu vực s&acirc;n thượng tầng 3 ng&ocirc;i nh&agrave; của m&igrave;nh. Với diện t&iacute;ch chỉ 40m2 đủ để anh chị thỏa m&atilde;n t&igrave;nh y&ecirc;u thi&ecirc;n nhi&ecirc;n để trồng đủ c&aacute;c loại rau sạch bốn m&ugrave;a cho gia đ&igrave;nh thưởng thức.</p>\r\n\r\n<p><img alt=\"Gia đình trẻ biến sân thượng trống thành ‘khu vườn trên mây’ - Ảnh 1.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/2020/10/2/photo-1-16016151121111774813593.jpg\" title=\"Gia đình trẻ biến sân thượng trống thành ‘khu vườn trên mây’ - Ảnh 1.\" width=\"\" /></p>\r\n\r\n<p>Vợ anh coi s&acirc;n thượng l&agrave; nơi trồng c&acirc;y tr&aacute;i, vừa l&agrave; nơi thư gi&atilde;n của mọi người trong nh&agrave;</p>\r\n\r\n<p><a href=\"https://image2.tienphong.vn/w665/Uploaded/2020/bzivobpc/2020_10_01/rau2_exoa.jpg\" rel=\"nofollow\" target=\"_blank\"><img alt=\"Gia đình trẻ biến sân thượng trống thành ‘khu vườn trên mây’ - Ảnh 2.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/2020/10/2/photo-1-160161511947173994317.jpg\" title=\"Gia đình trẻ biến sân thượng trống thành ‘khu vườn trên mây’ - Ảnh 2.\" width=\"\" /></a></p>\r\n\r\n<p><a href=\"https://image2.tienphong.vn/w665/Uploaded/2020/bzivobpc/2020_10_01/rau2_exoa.jpg\" rel=\"nofollow\" target=\"_blank\">&quot;Gia đ&igrave;nh bắt đầu trồng rau tr&ecirc;n s&acirc;n thượng từ năm 2016. Vợ chồng m&igrave;nh bố tr&iacute; trồng c&aacute;c loại rau quả, c&acirc;y leo gi&agrave;n với chi ph&iacute; cải tạo ban đầu khoảng 30 triệu đồng, chủ yếu bằng phương ph&aacute;p thủy canh hồi lưu, từ c&aacute;c loại hạt giống nhập. Hơn nữa, m&igrave;nh kinh doanh hạt giống n&ecirc;n cũng am hiểu về lĩnh vực n&agrave;y.&quot; - chủ nh&acirc;n của khu vườn t&acirc;m sự.</a></p>\r\n\r\n<p><a href=\"https://image2.tienphong.vn/w665/Uploaded/2020/bzivobpc/2020_10_01/rau6_dluk.jpg\" rel=\"nofollow\" target=\"_blank\"><img alt=\"Gia đình trẻ biến sân thượng trống thành ‘khu vườn trên mây’ - Ảnh 3.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/2020/10/2/photo-2-1601615119476140464732.jpg\" title=\"Gia đình trẻ biến sân thượng trống thành ‘khu vườn trên mây’ - Ảnh 3.\" width=\"\" /></a></p>\r\n\r\n<p><a href=\"https://image2.tienphong.vn/w665/Uploaded/2020/bzivobpc/2020_10_01/rau6_dluk.jpg\" rel=\"nofollow\" target=\"_blank\">Khu vườn xanh tốt như n&ocirc;ng trại thu nhỏ tr&ecirc;n s&acirc;n thượng</a></p>\r\n\r\n<p>Mỗi ng&agrave;y d&ugrave; bận rộn đến đ&acirc;u, hai vợ chồng lu&ocirc;n c&ugrave;ng hai con d&agrave;nh khoảng thời gian nhất định để chăm s&oacute;c cho khu vườn nhỏ. Đặc biệt, đến mỗi m&ugrave;a thu hoạch hoa tr&aacute;i anh Bảo kh&ocirc;ng b&aacute;n m&agrave; sẽ tặng cho người th&acirc;n, bạn b&egrave;&hellip; mục đ&iacute;ch để mọi người an t&acirc;m với những sản phẩm sạch do ch&iacute;nh m&igrave;nh l&agrave;m ra.</p>\r\n\r\n<p>Ngo&agrave;i trồng rau sạch, gia đ&igrave;nh anh c&ograve;n trồng nhiều loại c&acirc;y ăn quả như dưa l&ecirc;, dưa lưới, dưa leo&hellip; bằng phương ph&aacute;p b&aacute;n thủy canh của chậu th&ocirc;ng minh Spot (tưới tự động kh&ocirc;ng d&ugrave;ng điện). Sắp tới vợ chồng trẻ dự định trồng th&ecirc;m c&aacute;c loại giống ớt v&agrave; c&agrave; chua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://image2.tienphong.vn/w665/Uploaded/2020/bzivobpc/2020_10_01/rau3_mhcr.jpg\" rel=\"nofollow\" target=\"_blank\"><img alt=\"Gia đình trẻ biến sân thượng trống thành ‘khu vườn trên mây’ - Ảnh 4.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/2020/10/2/photo-4-1601615119486435968017.jpg\" title=\"Gia đình trẻ biến sân thượng trống thành ‘khu vườn trên mây’ - Ảnh 4.\" width=\"\" /></a></p>\r\n\r\n<p><a href=\"https://image2.tienphong.vn/w665/Uploaded/2020/bzivobpc/2020_10_01/rau3_mhcr.jpg\" rel=\"nofollow\" target=\"_blank\">Những luống rau đều tăm tắp thẳng h&agrave;ng, tạo h&igrave;nh đẹp như b&ocirc;ng hoa</a></p>\r\n\r\n<p><a href=\"https://image2.tienphong.vn/w665/Uploaded/2020/bzivobpc/2020_10_01/rau4_iqeb.jpg\" rel=\"nofollow\" target=\"_blank\"><img alt=\"Gia đình trẻ biến sân thượng trống thành ‘khu vườn trên mây’ - Ảnh 5.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/2020/10/2/photo-5-160161511949410692144.jpg\" title=\"Gia đình trẻ biến sân thượng trống thành ‘khu vườn trên mây’ - Ảnh 5.\" width=\"\" /></a></p>\r\n\r\n<p><a href=\"https://image2.tienphong.vn/w665/Uploaded/2020/bzivobpc/2020_10_01/rau4_iqeb.jpg\" rel=\"nofollow\" target=\"_blank\">Anh Bảo bộc bạch: &quot;Thật sự đ&atilde; đam m&ecirc;, những g&igrave; m&igrave;nh tự tay thiết kế v&agrave; trồng đều th&uacute; vị, c&oacute; những niềm vui ri&ecirc;ng. Nếu c&oacute; điều kiện, mọi người n&ecirc;n l&agrave;m ki&ecirc;n cố, c&oacute; m&agrave;ng che mưa v&agrave; lưới chắn c&ocirc;n tr&ugrave;ng g&acirc;y bệnh, như vậy sẽ giảm thiểu rủi ro v&agrave; cho năng suất cao hơn&quot;. Nhờ sự chăm s&oacute;c kh&eacute;o l&eacute;o của gia đ&igrave;nh n&ecirc;n khu vườn nh&agrave; anh lu&ocirc;n xanh tươi v&agrave; nhận được những th&agrave;nh quả v&ocirc; c&ugrave;ng tuyệt vời.</a></p>\r\n\r\n<p>Anh Bảo hiện c&ograve;n l&agrave; quản trị vi&ecirc;n Hội Trồng Rau Thủy Canh, hiện đ&atilde; c&oacute; hơn 30 ngh&igrave;n th&agrave;nh vi&ecirc;n tham gia. Mục đ&iacute;ch ch&iacute;nh anh muốn chia sẻ c&aacute;c vấn đề c&acirc;y trồng để gi&uacute;p mọi người c&oacute; thể t&igrave;m hiểu, học hỏi c&aacute;c sản phẩm li&ecirc;n quan đến thủy canh.</p>\r\n\r\n<p><a href=\"https://image2.tienphong.vn/w665/Uploaded/2020/bzivobpc/2020_10_01/rau5_ylon.jpg\"><img alt=\"Gia đình trẻ biến sân thượng trống thành ‘khu vườn trên mây’ - Ảnh 6.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/2020/10/2/photo-6-16016151195001170460933.jpg\" title=\"Gia đình trẻ biến sân thượng trống thành ‘khu vườn trên mây’ - Ảnh 6.\" width=\"\" /></a></p>\r\n\r\n<p><a href=\"https://image2.tienphong.vn/w665/Uploaded/2020/bzivobpc/2020_10_01/rau5_ylon.jpg\">Những &quot;b&ocirc;ng hoa rau&quot; xanh mướt nhận được nhiều lời khen ngợi của cư d&acirc;n mạng</a></p>\r\n\r\n<p>Khu vườn giống một c&ocirc;ng vi&ecirc;n thu nhỏ để gia đ&igrave;nh anh Bảo c&oacute; thể thư gi&atilde;n sau mỗi ng&agrave;y l&agrave;m việc căng thẳng, c&ugrave;ng nhau thưởng thức cảnh đẹp ngay trong ch&iacute;nh ng&ocirc;i nh&agrave; m&igrave;nh. Niềm vui lại trở n&ecirc;n ấm &aacute;p v&agrave; giản dị đến thế.</p>\r\n\r\n<p>Với khu vườn xanh, th&acirc;n thiện, những người thiết kế như anh Bảo hy vọng truyền cảm hứng đến nhiều người hơn về niềm y&ecirc;u qu&yacute; thiết kế s&aacute;ng tạo, y&ecirc;u thi&ecirc;n nhi&ecirc;n. Trồng c&acirc;y mang đến cho cuộc sống trong l&agrave;nh v&agrave; tươi đẹp hơn.</p>\r\n\r\n<p><strong>Theo H&agrave; Hiền (tienphong.vn)</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"https://diaoc.nld.com.vn/dia-oc/tim-ve-voi-bien-20201125113600089.htm\">T&igrave;m về với biển</a></li>\r\n</ul>', 'san thuong, khu vuon tren may', 'san thuong, khu vuon tren may', 1, '69.jpg', 3),
(5, 'Huyện Chi Lăng \'thay da đổi thịt\' nhờ na', 'huyen-chi-lang-thay-da-doi-thit-nho-na', '<p><em><span style=\"color:#27ae60\">Trong 5 năm (2015 - 2020), huyện Chi Lăng chuyển dịch cơ cấu c&acirc;y trồng, &aacute;p dụng tiến bộ khoa học kỹ thuật v&agrave;o sản xuất, khai th&aacute;c c&aacute;c tiềm năng, thế mạnh của từng v&ugrave;ng về ph&aacute;t triển kinh tế vườn đồi, trồng c&acirc;y l&acirc;m nghiệp, ăn quả, c&ocirc;ng nghiệp ngắn ng&agrave;y.</span></em></p>', '<p>&nbsp;</p>\r\n\r\n<p>Tr&ecirc;n địa b&agrave;n huyện đ&atilde; h&igrave;nh th&agrave;nh c&aacute;c v&ugrave;ng sản xuất h&agrave;ng h&oacute;a tập trung như: v&ugrave;ng trồng c&acirc;y thuốc l&aacute; (diện t&iacute;ch tr&ecirc;n 900 ha; gi&aacute; trị kinh tế hằng năm tr&ecirc;n 100 tỷ đồng); v&ugrave;ng trồng c&acirc;y hồi (diện t&iacute;ch tr&ecirc;n 1.400 ha; gi&aacute; trị kinh tế tr&ecirc;n 50 tỷ đồng); v&ugrave;ng trồng ớt (diện t&iacute;ch tr&ecirc;n 500 ha; gi&aacute; trị kinh tế tr&ecirc;n 100 tỷ đồng); v&ugrave;ng trồng c&acirc;y c&oacute; m&uacute;i (diện t&iacute;ch tr&ecirc;n 400 ha, gi&aacute; trị kinh tế tr&ecirc;n 70 tỷ đồng). Đặc biệt, v&ugrave;ng trồng na được mở rộng tới hơn 2.000 ha, ước đạt doanh thu hơn 700 tỷ đồng một năm v&agrave; mang lại nhiều lợi &iacute;ch về mặt kinh tế cho Chi Lăng.</p>\r\n\r\n<p><a href=\"https://1.bp.blogspot.com/-YPgG1O_FRCM/YVUl0Elv5aI/AAAAAAAC_ao/Jmny7nDQM9wk22NIt5RWrXvqzlnEvipVwCLcBGAsYHQ/s1920/na%2B2.jpg\"><img src=\"https://1.bp.blogspot.com/-YPgG1O_FRCM/YVUl0Elv5aI/AAAAAAAC_ao/Jmny7nDQM9wk22NIt5RWrXvqzlnEvipVwCLcBGAsYHQ/s16000/na%2B2.jpg\" /></a></p>\r\n\r\n<p>Na Chi Lăng c&oacute; nhiều đặc điểm kh&aacute;c biệt với những giống na ở c&aacute;c v&ugrave;ng kh&aacute;c. Đ&oacute; l&agrave; quả to đều, khi ch&iacute;n c&oacute; m&ugrave;i thơm đặc trưng, vị ngọt, thịt quả nhiều, c&oacute; m&agrave;u trắng kem v&agrave; ăn rất ngon miệng. Th&ecirc;m v&agrave;o đ&oacute;, với kh&iacute; hậu đặc trưng của v&ugrave;ng đất xứ Lạng kết hợp v&ugrave;ng n&uacute;i đ&aacute; v&ocirc;i Cai Kinh gi&agrave;u kho&aacute;ng chất, c&acirc;y na sinh trưởng, ph&aacute;t triển tốt. Điểm đặc biệt nữa thu h&uacute;t người ti&ecirc;u d&ugrave;ng l&agrave; to&agrave;n bộ diện t&iacute;ch trồng na của huyện (hơn 2.000 ha) đều được đảm bảo vệ sinh an to&agrave;n thực phẩm.</p>\r\n\r\n<p>Từ những năm 2013, huyện Chi Lăng bắt đầu &aacute;p dụng sản xuất na đạt ti&ecirc;u chuẩn VietGAP; v&agrave; đến năm 2017 &aacute;p dụng theo bộ ti&ecirc;u chuẩn quốc gia TCVN 11892-1:2017 v&agrave;o sản xuất na. T&iacute;nh đến nay, huyện đ&atilde; thực hiện được 613,62 ha na đạt ti&ecirc;u chuẩn VietGAP, GlobalGAP. Nhờ biết cải thiện trọng lượng, chất lượng quả na, kh&ocirc;ng c&ograve;n nhiều na nhỏ tr&ecirc;n c&acirc;y, thay v&igrave; thu 2 - 3 g&aacute;nh na nhỏ như trước đ&acirc;y, hiện tại n&ocirc;ng d&acirc;n chỉ cần thu về một g&aacute;nh na to được sản suất theo ti&ecirc;u chuẩn VietGAP. Gi&aacute; na đạt mức cao nhất l&agrave; 60.000 đến 80.000 đồng/kg.</p>\r\n\r\n<p><a href=\"https://1.bp.blogspot.com/-QVPSNDzcDEI/YVUlsFvuDLI/AAAAAAAC_ag/pk2f6-0wPrscOFZHVHhcALDjfSbxI37CACLcBGAsYHQ/s1920/na%2B3.jpg\"><img src=\"https://1.bp.blogspot.com/-QVPSNDzcDEI/YVUlsFvuDLI/AAAAAAAC_ag/pk2f6-0wPrscOFZHVHhcALDjfSbxI37CACLcBGAsYHQ/s16000/na%2B3.jpg\" /></a></p>\r\n\r\n<p>V&agrave;o th&aacute;ng 7 v&agrave; 8, thời điểm thu hoạch na tập trung với sản lượng lớn (b&igrave;nh qu&acirc;n những ng&agrave;y na ch&iacute;n rộ c&oacute; thể thu hoạch đạt 550 - 650 tấn/ng&agrave;y). Mọi năm, gi&aacute; na dao động từ 48.000 đồng đến 50.000 đồng một kg, năm nay, d&ugrave; dịch bệnh cũng chỉ sụt giảm 5.000 - 7.000 đồng. Mỗi năm thu nhập của c&aacute;c hộ từ 300 đến 500 triệu đồng.</p>\r\n\r\n<p>&Ocirc;ng Ph&ugrave;ng Văn Nghĩa, Ph&oacute; Chủ tịch huyện Chi Lăng cho biết Chi Lăng l&agrave; v&ugrave;ng trồng na tập trung với diện t&iacute;ch to&agrave;n huyện năm 2020 đạt hơn 1.804 ha, sản lượng ước đạt 16.500 tấn, gi&aacute; trị b&igrave;nh qu&acirc;n đạt tr&ecirc;n 200 triệu đồng/ha. Doanh thu từ na ước đạt gần 700 tỷ đồng, chiếm hơn 27% tổng doanh thu 19.000 tỷ đồng của n&ocirc;ng sản to&agrave;n huyện.&nbsp;<em>&quot;Năm 2021, diện t&iacute;ch na Chi Lăng vượt tr&ecirc;n 2.000 ha, cho sản lượng 19.000 tấn v&agrave; dự kiến đạt doanh thu 720 tỷ đồng, mang lại thu nhập ổn định v&agrave; l&agrave;m gi&agrave;u cho tr&ecirc;n 3.500 hộ gia đ&igrave;nh tại 9 x&atilde;, thị trấn&quot;</em>, &ocirc;ng n&oacute;i.</p>\r\n\r\n<p><a href=\"https://1.bp.blogspot.com/-054UCl2iZas/YVUljU8VikI/AAAAAAAC_aY/VpuvLKjXHgAMBcWfCiGpry5A22F03gtiQCLcBGAsYHQ/s1920/na%2B4.jpg\"><img src=\"https://1.bp.blogspot.com/-054UCl2iZas/YVUljU8VikI/AAAAAAAC_aY/VpuvLKjXHgAMBcWfCiGpry5A22F03gtiQCLcBGAsYHQ/s16000/na%2B4.jpg\" /></a></p>\r\n\r\n<p>Tỷ trọng n&agrave;y của na duy tr&igrave; ổn định trong nhiều năm gần đ&acirc;y. Na trở th&agrave;nh mặt h&agrave;ng n&ocirc;ng sản mũi nhọn của huyện do t&iacute;nh bền vững, &iacute;t rủi ro trong sản lượng v&agrave; doanh thu, vượt trội hơn hẳn những loại n&ocirc;ng sản kh&aacute;c.</p>\r\n\r\n<p>C&acirc;y na trở th&agrave;nh thương hiệu của huyện Chi Lăng, l&agrave; n&ocirc;ng sản chủ lực x&oacute;a đ&oacute;i, giảm ngh&egrave;o cho nhiều hộ n&ocirc;ng d&acirc;n. Việc sản xuất v&agrave; bu&ocirc;n b&aacute;n na gi&uacute;p doanh thu của b&agrave; con tăng gấp 5 lần so với canh t&aacute;c c&aacute;c loại c&acirc;y trồng n&ocirc;ng nghiệp trước kia. Nhiều hộ x&acirc;y được nh&agrave; tầng, mua sắm c&aacute;c phương tiện phục vụ sản xuất như: m&aacute;y cắt cỏ, m&aacute;y c&agrave;y, xe tải...</p>\r\n\r\n<p>Từ một loại quả xứ lạ đến, na Chi Lăng từng bước khẳng định chỗ đứng trong hệ thống c&aacute;c mặt h&agrave;ng n&ocirc;ng sản của tỉnh Lạng Sơn.</p>\r\n\r\n<p><a href=\"https://1.bp.blogspot.com/-Sja4s22Oegc/YVUlahL8ZtI/AAAAAAAC_aQ/c4udltzxP84BEckJYboG6jxbncj2KZaIgCLcBGAsYHQ/s1920/na%2B5.jpg\"><img src=\"https://1.bp.blogspot.com/-Sja4s22Oegc/YVUlahL8ZtI/AAAAAAAC_aQ/c4udltzxP84BEckJYboG6jxbncj2KZaIgCLcBGAsYHQ/s16000/na%2B5.jpg\" /></a></p>\r\n\r\n<p>Giữ vững gi&aacute; trị của thương hiệu &quot;Na Chi Lăng&quot; cũng như mở rộng thị trường ti&ecirc;u thụ trong thời gian tới l&agrave; mục ti&ecirc;u chung của l&atilde;nh đạo huyện cũng như b&agrave; con Chi Lăng.</p>\r\n\r\n<p>&Ocirc;ng Lương Th&agrave;nh Chung, Trưởng ph&ograve;ng N&ocirc;ng nghiệp v&agrave; Ph&aacute;t triển n&ocirc;ng th&ocirc;n huyện Chi Lăng cho biết nhằm tiếp tục duy tr&igrave;, giữ vững nh&atilde;n hiệu chứng nhận cho sản phẩm na Chi Lăng v&agrave; mở rộng thị trường ti&ecirc;u thụ, huyện đang tiếp tục đẩy mạnh c&ocirc;ng t&aacute;c tuy&ecirc;n truyền, vận động nh&acirc;n d&acirc;n tr&ecirc;n địa b&agrave;n c&aacute;c x&atilde;, thị trấn v&ugrave;ng trồng na tổ chức sản xuất đảm bảo c&aacute;c điều kiện vệ sinh an to&agrave;n thực phẩm.</p>\r\n\r\n<p><a href=\"https://1.bp.blogspot.com/-XsXrej2h0mM/YVUlSLgg2oI/AAAAAAAC_aI/Ho4lPWKJAtQ-sihnjFelYzlv_0TUJxtwQCLcBGAsYHQ/s1920/na%2B6.jpg\"><img src=\"https://1.bp.blogspot.com/-XsXrej2h0mM/YVUlSLgg2oI/AAAAAAAC_aI/Ho4lPWKJAtQ-sihnjFelYzlv_0TUJxtwQCLcBGAsYHQ/s16000/na%2B6.jpg\" /></a></p>\r\n\r\n<p>Theo đ&oacute;, trong những năm tới, huyện sẽ mở rộng th&ecirc;m diện t&iacute;ch sản xuất na đối với những v&ugrave;ng đất c&oacute; tiềm năng, thế mạnh ph&aacute;t triển như: x&atilde; Vạn Linh, Y Tịch, H&ograve;a B&igrave;nh, Thượng Cường, Bằng Mạc... Bởi đ&acirc;y l&agrave; những v&ugrave;ng đất thuộc v&ugrave;ng n&uacute;i đ&aacute; v&ocirc;i, th&iacute;ch hợp cho c&acirc;y na sinh trưởng tốt.</p>\r\n\r\n<p>Huyện cũng đang hướng tới 100% diện t&iacute;ch na tr&ecirc;n địa b&agrave;n được sản xuất theo ti&ecirc;u chuẩn VietGAP. Từ năm 2016 đến nay, qu&aacute; tr&igrave;nh thực hiện sản xuất đều được UBND huyện Chi Lăng phối hợp với c&aacute;c đơn vị, tổ chức c&oacute; chức năng cử chuy&ecirc;n gia đến tập huấn, chuyển giao quy tr&igrave;nh kỹ thuật trồng trọt đầy đủ cho người n&ocirc;ng d&acirc;n. Đ&oacute; l&agrave; c&aacute;c kỹ thuật chọn giống sạch s&acirc;u bệnh, đất trồng, nước tưới, ph&acirc;n b&oacute;n, thuốc bảo vệ thực vật...</p>\r\n\r\n<p><a href=\"https://1.bp.blogspot.com/-PMvUZsUBo0s/YVUlHAxpkQI/AAAAAAAC_aA/U4Kt3Q22BYQoBuAIXR1V4Q26mu2QLmMmACLcBGAsYHQ/s1920/na%2B7.jpg\"><img src=\"https://1.bp.blogspot.com/-PMvUZsUBo0s/YVUlHAxpkQI/AAAAAAAC_aA/U4Kt3Q22BYQoBuAIXR1V4Q26mu2QLmMmACLcBGAsYHQ/s16000/na%2B7.jpg\" /></a></p>\r\n\r\n<p>Việc &aacute;p dụng ti&ecirc;u chuẩn VietGAP hay GlobalGAP đều gi&uacute;p cho người ti&ecirc;u d&ugrave;ng v&agrave; thị trường được hiểu r&otilde; về sản phẩm hơn nhờ c&oacute; truy suất nguồn gốc r&otilde; r&agrave;ng. Nhờ vậy, người ti&ecirc;u d&ugrave;ng c&oacute; thể đưa ra lựa chọn sản phẩm ph&ugrave; hợp để y&ecirc;n t&acirc;m sử dụng.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, na l&agrave; loại quả nhanh ch&iacute;n, kh&oacute; bảo quản. Trước đ&acirc;y, chưa c&oacute; nghi&ecirc;n cứu rải vụ, người d&acirc;n chỉ tập trung sản xuất chủ yếu trong v&ograve;ng 1 - 1,5 th&aacute;ng, sản lượng na ch&iacute;n tập trung tạo &aacute;p lực lớn cho đầu ra. Tuy nhi&ecirc;n, từ khi c&oacute; biện ph&aacute;p trồng na rải vụ, qu&aacute; tr&igrave;nh thu hoạch được k&eacute;o d&agrave;i từ 1,5 th&aacute;ng l&ecirc;n 4 th&aacute;ng. Trồng rải vụ gi&uacute;p n&acirc;ng cao gi&aacute; trị cho na, kh&ocirc;ng bị &aacute;p lực ch&iacute;n trong v&ograve;ng thời gian ngắn. Đặc biệt, những diện t&iacute;ch na c&oacute; đầy đủ điều kiện, c&oacute; thể sản xuất 2 - 3 vụ trong một năm, cho thu nhập cao gấp đ&ocirc;i so với b&igrave;nh thường.</p>\r\n\r\n<p><a href=\"https://1.bp.blogspot.com/-_4NGqvbmSqk/YVUk-kWs2OI/AAAAAAAC_Z4/Ug7QD6MjFwgbONSss26g8KQAc2NjqogxgCLcBGAsYHQ/s1920/na%2B8.jpg\"><img src=\"https://1.bp.blogspot.com/-_4NGqvbmSqk/YVUk-kWs2OI/AAAAAAAC_Z4/Ug7QD6MjFwgbONSss26g8KQAc2NjqogxgCLcBGAsYHQ/s16000/na%2B8.jpg\" /></a></p>\r\n\r\n<p>Ngo&agrave;i kỹ thuật rải vụ, người d&acirc;n Chi Lăng cũng sử dụng chế phẩm ADG trong bảo quản na sau khi mở mắt. Nếu na b&igrave;nh thường sẽ ch&iacute;n trong 2 - 3 ng&agrave;y nhưng &aacute;p dụng chế phẩm, thời gian k&eacute;o d&agrave;i ch&iacute;n c&acirc;y l&ecirc;n 8 - 10 ng&agrave;y, gi&uacute;p qu&aacute; tr&igrave;nh vận chuyển, ti&ecirc;u thụ xa tốt hơn.</p>\r\n\r\n<p>Nhờ biện ph&aacute;p n&agrave;y, na Chi Lăng dễ d&agrave;ng ti&ecirc;u thụ tr&ecirc;n c&aacute;c s&agrave;n thương mại điện tử. Được triển khai từ th&aacute;ng 6 năm nay, sản phẩm na đ&atilde; c&oacute; mặt tr&ecirc;n c&aacute;c s&agrave;n voso.vn, postmart.vn, đưa n&ocirc;ng d&acirc;n Chi Lăng từng bước tiếp cận với chuyển đổi số kinh doanh. Việc đẩy mạnh ph&aacute;t triển kinh tế số n&ocirc;ng nghiệp n&ocirc;ng th&ocirc;n gi&uacute;p hộ gia đ&igrave;nh n&ocirc;ng d&acirc;n thay đổi tư duy, phương thức, quy tr&igrave;nh ti&ecirc;u thụ sản phẩm, h&agrave;ng h&oacute;a theo c&aacute;ch l&agrave;m truyền thống.</p>\r\n\r\n<p>Việc tăng cường c&aacute;c hoạt động quảng b&aacute;, x&uacute;c tiến thương mại cả trong nước v&agrave; ngo&agrave;i nước để người ti&ecirc;u d&ugrave;ng biết đến v&agrave; sử dụng sản phẩm quả na cũng đang l&agrave; nỗi trăn trở của huyện Chi Lăng. Khi na đ&atilde; cải thiện được quy tr&igrave;nh bảo quản, trong thời gian tới, mặt h&agrave;ng n&agrave;y sẽ mở rộng ti&ecirc;u thụ tại thị trường ph&iacute;a Nam. Đồng thời, khu vực ph&iacute;a Bắc vẫn l&agrave; thị trường chủ lực của na Chi Lăng.</p>\r\n\r\n<p><a href=\"https://1.bp.blogspot.com/-9Y5jVYmCO1g/YVUk1mYme8I/AAAAAAAC_Zw/1bEQmrbNAigYrQbHTKHTbcYJIO8wZmfvgCLcBGAsYHQ/s1920/na%2B9.jpg\"><img src=\"https://1.bp.blogspot.com/-9Y5jVYmCO1g/YVUk1mYme8I/AAAAAAAC_Zw/1bEQmrbNAigYrQbHTKHTbcYJIO8wZmfvgCLcBGAsYHQ/s16000/na%2B9.jpg\" /></a></p>\r\n\r\n<p>Đối với Trung Quốc l&agrave; thị trường tiềm năng, huyện lu&ocirc;n kỳ vọng v&agrave;o sức mua của thị trường n&agrave;y. Nếu đảm bảo lưu th&ocirc;ng đầu ra, việc ti&ecirc;u thụ na sẽ gặp rất nhiều thuận lợi. &quot;Ch&uacute;ng t&ocirc;i định hướng đảm bảo ti&ecirc;u chuẩn cho na như: c&oacute; truy xuất nguồn gốc, chỉ dẫn địa l&yacute; r&otilde; r&agrave;ng, đảm bảo ti&ecirc;u chuẩn Việt về sản phẩm n&ocirc;ng nghiệp tốt... Ch&uacute;ng t&ocirc;i cũng li&ecirc;n hệ với đầu thu mua tại Trung Quốc, c&ugrave;ng Bộ N&ocirc;ng nghiệp v&agrave; Ph&aacute;t triển N&ocirc;ng th&ocirc;n t&igrave;m mọi c&aacute;ch đưa sản phẩm na trở lại thị trường n&agrave;y. Hiện nay, huyện vẫn trăn trở l&agrave;m sao để bảo quản na đưa sang thị trường kh&aacute;c với thời gian vận chuyển d&agrave;i&quot;, &ocirc;ng Vi N&ocirc;ng Trường cho biết.</p>\r\n\r\n<p>Với bề d&agrave;y ph&aacute;t triển c&ugrave;ng cải tiến kh&ocirc;ng ngừng, na Chi Lăng hứa hẹn sẽ l&agrave; mặt h&agrave;ng n&ocirc;ng sản đưa kinh tế Lạng Sơn từng bước đi l&ecirc;n. Thương hiệu &quot;Na Chi Lăng&quot; sẽ ng&agrave;y c&agrave;ng vững chắc, tạo l&ograve;ng tin ti&ecirc;u d&ugrave;ng cho cả thị trường trong nước v&agrave; quốc tế.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://1.bp.blogspot.com/-pLYs3uRPY9w/YVUksDXM1KI/AAAAAAAC_Zs/WO8zIY-cjHAsP13IdKq6XHgFAGIleqMuACLcBGAsYHQ/s1920/na%2B10.jpg\"><img src=\"https://1.bp.blogspot.com/-pLYs3uRPY9w/YVUksDXM1KI/AAAAAAAC_Zs/WO8zIY-cjHAsP13IdKq6XHgFAGIleqMuACLcBGAsYHQ/s16000/na%2B10.jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Nội dung: Thanh Thư - Hải My * Ảnh: Na Chi Lăng * Thiết kế: Đức Việt (vnexpress)</strong></p>', 'na, giong cay trong', 'na', 1, '5.jpg', 4),
(7, 'Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ', 'nha-pho-voi-gian-cay-thang-dung-hoa-trai-quanh-nam-ruc-ro', '<p>Với mong muốn c&oacute; kh&ocirc;ng gian sống xanh cho gia đ&igrave;nh, chị Nguyễn Th&ugrave;y Trang (TP.HCM) đ&atilde; cải tạo lại ng&ocirc;i nh&agrave; th&agrave;nh khu vườn với đủ chủng loại c&acirc;y.</p>', '<h3>&nbsp;</h3>\r\n\r\n<p>Với mong muốn c&oacute; kh&ocirc;ng gian sống xanh cho gia đ&igrave;nh, chị Nguyễn Th&ugrave;y Trang (TP.HCM) đ&atilde; cải tạo lại ng&ocirc;i nh&agrave; th&agrave;nh khu vườn với đủ chủng loại c&acirc;y.</p>\r\n\r\n<p><img alt=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 1.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/5/10/photo-1-16206221489661346305632.jpg\" title=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 1.\" width=\"\" /></p>\r\n\r\n<p>C&acirc;y xanh gi&uacute;p điều h&ograve;a kh&ocirc;ng kh&iacute; trong nh&agrave;.</p>\r\n\r\n<p>Ng&ocirc;i nh&agrave; của chị Nguyễn Th&ugrave;y Trang (SN 1983 - TP.HCM) nằm ở trung t&acirc;m quận 5. Từ đường phố ồn &atilde;, đầy kh&oacute;i bụi bước v&agrave;o đ&acirc;y, bạn sẽ đắm ch&igrave;m&nbsp;trong kh&ocirc;ng gian tho&aacute;ng đ&atilde;ng, phủ m&agrave;u xanh bởi c&acirc;y cối.</p>\r\n\r\n<p>Với chiều ngang nh&agrave; 8m, chiều d&agrave;i 10m v&agrave; khoảng s&acirc;n nhỏ, chị tận dụng tất cả khoảng trống c&oacute; nắng, &aacute;nh s&aacute;ng để trồng c&acirc;y ăn quả, c&acirc;y cảnh nhằm giải quyết vấn đề về &ocirc; nhiễm kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p><img alt=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 2.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/5/10/photo-1-16206221514691095211275.jpg\" title=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 2.\" width=\"\" /></p>\r\n\r\n<p>G&oacute;c nh&igrave;n từ tr&ecirc;n cao.</p>\r\n\r\n<p>Th&ugrave;y Trang mua ng&ocirc;i nh&agrave; c&aacute;ch đ&acirc;y 4 năm. Do kết cấu nh&agrave; kh&aacute; tốt, chị kh&ocirc;ng đập đi x&acirc;y mới m&agrave; chỉ cải tạo lại c&aacute;c ph&ograve;ng, tăng c&ocirc;ng năng v&agrave; tiện &iacute;ch. Khu vườn cũng được chị nghi&ecirc;n cứu, l&agrave;m từ thời điểm đ&oacute;.</p>\r\n\r\n<p>To&agrave;n bộ việc cải tạo Th&ugrave;y Trang giao cho một đơn vị thiết kế v&agrave; thi c&ocirc;ng.&nbsp;C&ocirc;ng tr&igrave;nh gồm c&oacute;&nbsp;2 khối được li&ecirc;n kết với nhau bởi hệ thống c&acirc;y xanh v&agrave; &aacute;nh s&aacute;ng.</p>\r\n\r\n<p><img alt=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 3.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/5/10/photo-2-1620622153832145889259.jpg\" title=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 3.\" width=\"\" /></p>\r\n\r\n<p>Chị Trang bố tr&iacute; c&aacute;c khu vực trồng c&acirc;y theo đặc t&iacute;nh từng loại.</p>\r\n\r\n<p>Th&agrave;nh quả sau 4 năm, ng&ocirc;i nh&agrave; rợp sắc xanh của c&acirc;y. Hệ thống c&acirc;y xanh kh&ocirc;ng chỉ tạo n&ecirc;n vẻ đẹp lạ mắt cho c&ocirc;ng tr&igrave;nh, m&agrave; c&ograve;n gi&uacute;p điều h&ograve;a kh&ocirc;ng kh&iacute;, mang lại cảm gi&aacute;c m&aacute;t mẻ cho người ở.</p>\r\n\r\n<p>Thiết kế nội thất đơn giản nhưng vẫn ấm c&uacute;ng, trang nh&atilde;. Những lối đi trong nh&agrave; cũng ngập tr&agrave;n c&acirc;y xanh.</p>\r\n\r\n<p><img alt=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 4.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/5/10/photo-3-16206221531192030053280.jpg\" title=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 4.\" width=\"\" /></p>\r\n\r\n<p>Gi&agrave;n c&acirc;y thẳng đứng tr&ecirc;n bờ tường. Đ&acirc;y đều l&agrave; c&acirc;y ph&ugrave; hợp với thời tiết nhiệt đới.</p>\r\n\r\n<p>C&aacute;c tầng đều bố tr&iacute; cửa k&iacute;nh to, đ&oacute;n nắng. Ban c&ocirc;ng v&agrave; h&agrave;nh lang gia chủ tận dụng trồng c&acirc;y ăn quả. Ngo&agrave;i ra, chị gắn th&ecirc;m m&aacute;i hi&ecirc;n di động. Khi n&agrave;o trời c&oacute; mưa lớn hay nắng to, chị sẽ k&eacute;o m&aacute;i hi&ecirc;n che cho c&acirc;y.</p>\r\n\r\n<p>Ng&ocirc;i nh&agrave; ho&agrave;n thiện năm 2017, đến nay vẫn c&ograve;n như mới do gia chủ sử dụng rất g&igrave;n giữ v&agrave; chăm ch&uacute;t.</p>\r\n\r\n<p>&quot;T&ocirc;i thuộc tu&yacute;p nghiện nh&agrave;, bất cứ ng&oacute;c ng&aacute;ch n&agrave;o cũng phải chăm ch&uacute;t tỉ mỉ, dọn dẹp sạch sẽ&quot;, chị tiết lộ.</p>\r\n\r\n<p><img alt=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 5.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/5/10/photo-4-16206221525721338249161.jpg\" title=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 5.\" width=\"\" /></p>\r\n\r\n<p>Chị chủ yếu trồng c&acirc;y trong chậu, bồn nhưng quả lu&ocirc;n trĩu c&agrave;nh.</p>\r\n\r\n<p>Người phụ nữ sinh năm 1983 khẳng định, m&igrave;nh kh&ocirc;ng phải &ocirc;m đồm trồng d&agrave;y đặc c&acirc;y v&agrave; rau xanh v&igrave; kh&ocirc;ng th&iacute;ch nh&agrave; qu&aacute; um t&ugrave;m. Hơn nữa, chị muốn d&agrave;nh khoảng trống cho cả nh&agrave; tụ tập, mở c&aacute;c bữa tiếng ngo&agrave;i trời.</p>\r\n\r\n<p>Chị chia c&acirc;y theo từng ph&acirc;n khu để tiện chăm s&oacute;c. C&acirc;y ăn tr&aacute;i ưu ti&ecirc;n ở vị tr&iacute; nhiều nắng. C&acirc;y mang phong c&aacute;ch nhiệt đới (tropical), chị chăm bằng c&aacute;ch xịt thuốc định kỳ, tr&aacute;nh s&acirc;u bọ.</p>\r\n\r\n<p>C&acirc;y cảnh l&aacute; được bố trị ở khu vực tho&aacute;ng m&aacute;t, kh&ocirc;ng c&oacute; nắng v&agrave; giữ độ ẩm &iacute;t nhất từ 45 &ndash; 70%.</p>\r\n\r\n<p>Với gi&agrave;n c&acirc;y leo, phần lớn Th&ugrave;y Trang trồng d&ograve;ng Philodondren th&acirc;n b&ograve; (loại c&acirc;y trồng trong nh&agrave;) n&ecirc;n bắt buộc phải sống trong m&ocirc;i trường ẩm ướt để rễ kh&iacute; ph&aacute;t triển.</p>\r\n\r\n<p><img alt=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 6.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/5/10/photo-5-1620622151508779458745.jpg\" title=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 6.\" width=\"\" /></p>\r\n\r\n<p>Khu vườn c&oacute; thảm thực vật đa dạng về chủng loại.</p>\r\n\r\n<p>Ng&agrave;y trước chị trồng nhiều c&acirc;y hoa, đặc biệt l&agrave; hoa hồng. Thế nhưng, trồng hoa buộc phải xịt nhiều thuốc để k&iacute;ch v&agrave; xịt thường xuy&ecirc;n. Ngo&agrave;i ra, thuốc&nbsp; phải đổi li&ecirc;n tục v&igrave; trĩ v&agrave; rầy hay nhờn thuốc. V&igrave; vậy, chị chuyển sang trồng c&acirc;y xanh.</p>\r\n\r\n<p>C&acirc;y ăn tr&aacute;i trong vườn kh&aacute; phong ph&uacute; gồm: Xo&agrave;i, bưởi, khế, roi, ổi, cam, c&oacute;c, sapoche, lựu&hellip;</p>\r\n\r\n<p><img alt=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 7.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/5/10/photo-6-16206221520242024570871.jpg\" title=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 7.\" width=\"\" /></p>\r\n\r\n<p>Lối cửa ra v&agrave;o c&oacute; khung cửa k&iacute;nh lớn.</p>\r\n\r\n<p><img alt=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 8.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/5/10/photo-8-16206221515801426486494.jpg\" title=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 8.\" width=\"\" /></p>\r\n\r\n<p>Thu hoạch quả.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://vnn-imgs-f.vgcloud.vn/2021/05/06/14/ngoi-nha-xanh-giua-long-pho-thi-bon-mua-cay-trai-triu-qua-9.jpg\" rel=\"nofollow\" target=\"_blank\"><img alt=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 10.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/5/10/photo-9-1620622151624255726265.jpg\" title=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 10.\" width=\"\" /></a></p>\r\n\r\n<p><a href=\"https://vnn-imgs-f.vgcloud.vn/2021/05/06/14/ngoi-nha-xanh-giua-long-pho-thi-bon-mua-cay-trai-triu-qua-9.jpg\" rel=\"nofollow\" target=\"_blank\">G&oacute;c đọc s&aacute;ch, thư gi&atilde;n v&agrave;o buổi chiều của cả gia đ&igrave;nh.</a></p>\r\n\r\n<p><a href=\"https://vnn-imgs-f.vgcloud.vn/2021/05/06/14/ngoi-nha-xanh-giua-long-pho-thi-bon-mua-cay-trai-triu-qua-10.jpg\" rel=\"nofollow\" target=\"_blank\"><img alt=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 11.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/5/10/photo-10-16206221516731747078317.jpg\" title=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 11.\" width=\"\" /></a></p>\r\n\r\n<p><a href=\"https://vnn-imgs-f.vgcloud.vn/2021/05/06/14/ngoi-nha-xanh-giua-long-pho-thi-bon-mua-cay-trai-triu-qua-11.jpg\" rel=\"nofollow\" target=\"_blank\"><img alt=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 12.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/5/10/photo-11-162062215174064913089.jpg\" title=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 12.\" width=\"\" /></a></p>\r\n\r\n<p><a href=\"https://vnn-imgs-f.vgcloud.vn/2021/05/06/14/ngoi-nha-xanh-giua-long-pho-thi-bon-mua-cay-trai-triu-qua-11.jpg\" rel=\"nofollow\" target=\"_blank\">Khi khởi c&ocirc;ng cải tạo, chị quan niệm đ&acirc;y kh&ocirc;ng chỉ l&agrave; nơi để ở m&agrave; c&ograve;n l&agrave; m&ocirc;i trường đ&aacute;ng sống, cho c&aacute;c con ph&aacute;t triển thể chất v&agrave; tư duy.</a></p>\r\n\r\n<p><img alt=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 13.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/5/10/photo-12-16206221523421611061337.jpg\" title=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 13.\" width=\"\" /></p>\r\n\r\n<p>Nữ chủ nh&acirc;n trồng nhiều loại c&acirc;y ăn quả miền Bắc.</p>\r\n\r\n<p><img alt=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 14.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/5/10/photo-13-16206221517971957618929.jpg\" title=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 14.\" width=\"\" /></p>\r\n\r\n<p>C&acirc;y xanh gi&uacute;p b&ugrave; đắp sự trong l&agrave;nh v&agrave; xo&aacute; bớt đi c&aacute;i n&oacute;ng nực, chật chội c&ugrave;ng nhịp sống hối hả, vội v&atilde; của th&agrave;nh phố n&aacute;o nhiệt.</p>\r\n\r\n<p><a href=\"https://vnn-imgs-f.vgcloud.vn/2021/05/06/15/ngoi-nha-xanh-giua-long-pho-thi-bon-mua-cay-trai-triu-qua-2.jpg\" rel=\"nofollow\" target=\"_blank\"><img alt=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 15.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/5/10/photo-14-1620622151849699877573.jpg\" title=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 15.\" width=\"\" /></a></p>\r\n\r\n<p><a href=\"https://vnn-imgs-f.vgcloud.vn/2021/05/06/15/ngoi-nha-xanh-giua-long-pho-thi-bon-mua-cay-trai-triu-qua-1.jpg\" rel=\"nofollow\" target=\"_blank\"><img alt=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 16.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/5/10/photo-15-16206221523911162247207.jpg\" title=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 16.\" width=\"\" /></a></p>\r\n\r\n<p><a href=\"https://vnn-imgs-f.vgcloud.vn/2021/05/06/15/ngoi-nha-xanh-giua-long-pho-thi-bon-mua-cay-trai-triu-qua-1.jpg\" rel=\"nofollow\" target=\"_blank\">Nội thất sử dụng t&ocirc;ng m&agrave;u tối đầy tinh tế tr&ecirc;n nền tường sơn trắng.</a></p>\r\n\r\n<p><img alt=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 17.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/5/10/photo-16-1620622151972216707404.jpg\" title=\"Nhà phố với giàn cây thẳng đứng, hoa trái quanh năm rực rỡ - Ảnh 17.\" width=\"\" /></p>\r\n\r\n<p>C&aacute;c ph&ograve;ng li&ecirc;n kết với nhau bằng kh&ocirc;ng gian mở.</p>\r\n\r\n<p><strong>Theo Quỳnh Nga (vietnamnet.vn)</strong></p>', 'nong nghiep, nong nghiep 4.0', 'nong nghiep, nong nghiep 4.0', 1, '7.jpg', 1);
INSERT INTO `tbl_posts` (`post_id`, `post_title`, `post_slug`, `post_desc`, `post_content`, `post_meta_desc`, `post_meta_keywords`, `post_status`, `post_image`, `cate_post_id`) VALUES
(8, '9 LOẠI CÂY ĂN QUẢ TRỒNG TRONG CHẬU RA TRÁI QUA NĂM', '9-loai-cay-an-qua', '<p><em>Những loại c&acirc;y ăn tr&aacute;i trồng chậu xanh tươi trĩu quả lu&ocirc;n l&agrave; lựa chọn tuyệt vời cho những ai y&ecirc;u thi&ecirc;n nhi&ecirc;n v&agrave; muốn mang kh&ocirc;ng gian xanh v&agrave;o ng&ocirc;i nh&agrave; của m&igrave;nh. Xem ngay top 9&nbsp;<strong><a href=\"https://lasc.vn/cac-loai-cay-an-qua-trong-trong-chau/\" id=\"link-noi-bo\" rel=\"noopener\" target=\"_blank\">c&aacute;c loại c&acirc;y ăn quả trồng trong chậu</a></strong>&nbsp;dễ chăm mau ra tr&aacute;i sẽ gi&uacute;p bạn giải quyết những vấn đề đ&oacute; do&nbsp;<strong>c&ocirc;ng ty c&acirc;y xanh</strong>&nbsp;Lasc thu thập được.</em></p>', '<h2><strong>1. C&acirc;y ổi &ndash; Một trong c&aacute;c loại c&acirc;y ăn quả trồng trong chậu</strong></h2>\r\n\r\n<p><img alt=\"các loại cây ăn quả dễ trồng trong chậu\" height=\"443\" sizes=\"(max-width: 700px) 100vw, 700px\" src=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-01-min.jpg\" srcset=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-01-min.jpg 854w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-01-min-425x269.jpg 425w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-01-min-768x486.jpg 768w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-01-min-600x379.jpg 600w\" title=\"Các loại cây ăn quả trồng trong chậu\" width=\"700\" /></p>\r\n\r\n<p><em>C&acirc;y ổi</em></p>\r\n\r\n<p>Nhắc đến c&aacute;c&nbsp;<em>c&acirc;y ăn quả trồng chậu</em>&nbsp;th&igrave; kh&ocirc;ng thể bỏ qua c&acirc;y ổi. Nhờ t&iacute;nh năng dễ trồng, dễ đậu quả, ổi ch&iacute;nh l&agrave; một trong những lựa chọn trồng nhiều nhất hiện nay.</p>\r\n\r\n<p>Quả ổi c&oacute; rất nhiều c&ocirc;ng dụng trong việc giảm c&acirc;n cũng như chứa nhiều vitamin gi&uacute;p đẹp da.&nbsp;Bạn chỉ cần đặt ở nơi c&oacute; &aacute;nh s&aacute;ng đầy đủ v&agrave; tưới nước đều đặn, trồng ở đất tơi xốp để c&acirc;y ra quả tốt hơn.</p>\r\n\r\n<blockquote>\r\n<p><strong>&gt;&gt;&gt;&gt; Xem Th&ecirc;m:&nbsp;<a href=\"https://lasc.vn/mua-ban-cay-xanh/\" id=\"link-noi-bo\" rel=\"noopener\" target=\"_blank\">Mua b&aacute;n c&acirc;y c&ocirc;ng tr&igrave;nh</a>, c&acirc;y xanh, c&acirc;y cảnh gi&aacute; tốt 2020</strong></p>\r\n</blockquote>\r\n\r\n<h2><strong>2. D&acirc;u T&acirc;y &ndash; Một trong c&aacute;c loại c&acirc;y ăn quả dễ trồng, dễ chăm s&oacute;c</strong></h2>\r\n\r\n<p><img alt=\"các loại cây ăn quả dễ trồng trong chậu\" height=\"764\" sizes=\"(max-width: 700px) 100vw, 700px\" src=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-06-min.jpg\" srcset=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-06-min.jpg 1024w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-06-min-425x464.jpg 425w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-06-min-768x838.jpg 768w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-06-min-600x654.jpg 600w\" title=\"các loại cây ăn quả dễ trồng trong chậu\" width=\"700\" /></p>\r\n\r\n<p><em>D&acirc;u T&acirc;y trồng trong chậu</em></p>\r\n\r\n<p>D&acirc;u t&acirc;y từ l&acirc;u đ&atilde; l&agrave;&nbsp;<strong>c&aacute;c loại c&acirc;y ăn quả trồng trong chậu</strong>&nbsp;được nhiều người ưa chuộng bởi vị ngọt thanh. Đ&acirc;y l&agrave; loại&nbsp;<em>c&acirc;y ăn tr&aacute;i dễ trồng</em>&nbsp;rất gi&agrave;u dinh dưỡng, mang lại v&ocirc; số lợi &iacute;ch cho sức khỏe. D&acirc;u t&acirc;y l&agrave; c&acirc;y thực vật cực dễ chăm s&oacute;c cũng như ra quả quanh năm.</p>\r\n\r\n<p>V&igrave; vậy, kh&ocirc;ng cần l&ecirc;n tận Đ&agrave; Lạt m&agrave; bản th&acirc;n bạn cũng c&oacute; thể c&oacute; những chậu d&acirc;u t&acirc;y nhỏ xinh của ri&ecirc;ng m&igrave;nh. Bạn c&oacute; thể tha hồ thu hoạch h&agrave;ng t&aacute; quả mỗi năm với vườn d&acirc;u tại nh&agrave;.</p>\r\n\r\n<blockquote>\r\n<p><strong>&nbsp;&gt;&gt;&gt;&gt; Xem Th&ecirc;m: Top 12 loại&nbsp;<a href=\"https://lasc.vn/cay-canh-chiu-han-tot/\" id=\"link-noi-bo\" rel=\"noopener\" target=\"_blank\">c&acirc;y cảnh chịu hạn tốt</a>&nbsp;đẹp kh&ocirc;ng cần tưới</strong></p>\r\n</blockquote>\r\n\r\n<h2><strong>3. C&acirc;y Khế &ndash; Giống c&acirc;y ăn quả trồng chậu sai quả</strong></h2>\r\n\r\n<p><img alt=\"những loại cây ăn quả trồng trong chậu\" height=\"525\" sizes=\"(max-width: 700px) 100vw, 700px\" src=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-09-min.jpg\" srcset=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-09-min.jpg 1024w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-09-min-425x319.jpg 425w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-09-min-768x576.jpg 768w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-09-min-600x450.jpg 600w\" title=\"những loại cây ăn quả trồng trong chậu\" width=\"700\" /></p>\r\n\r\n<p><em>C&acirc;y khế</em></p>\r\n\r\n<p>Kh&ocirc;ng chỉ l&agrave; c&acirc;y cho loại tr&aacute;i ngon, m&aacute;t được nhiều người y&ecirc;u th&iacute;ch, c&acirc;y khế c&ograve;n l&agrave; một trong&nbsp;<strong>c&aacute;c loại c&acirc;y ăn quả trồng trong chậu</strong>&nbsp;để chơi cảnh, trang tr&iacute; cho khu&ocirc;n vi&ecirc;n.</p>\r\n\r\n<p>Khế l&agrave; giống&nbsp;<em>c&acirc;y ăn quả trồng chậu</em>&nbsp;ưa b&oacute;ng, c&acirc;y c&agrave;ng bị nắng gắt chiếu nhiều sẽ c&agrave;ng giảm độ ngọt. Kh&ocirc;ng những l&agrave; loại quả gi&agrave;u vitamin m&agrave; quả khế c&ograve;n c&oacute; những c&ocirc;ng dụng như chữa bệnh dị ứng, ăn k&egrave;m với c&aacute;c loại gỏi ,&hellip;</p>\r\n\r\n<h2><strong>4. C&acirc;y C&oacute;c &ndash; C&acirc;y ăn quả dễ trồng trong nh&agrave;</strong></h2>\r\n\r\n<p><img alt=\"những loại cây ăn quả trồng trong chậu\" height=\"934\" sizes=\"(max-width: 700px) 100vw, 700px\" src=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-05-min.jpg\" srcset=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-05-min.jpg 800w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-05-min-425x567.jpg 425w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-05-min-768x1024.jpg 768w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-05-min-600x800.jpg 600w\" title=\"cây ăn trái trồng trong chậu\" width=\"700\" /></p>\r\n\r\n<p><em>C&oacute;c trồng trong chậu</em></p>\r\n\r\n<p>C&acirc;y c&oacute;c l&agrave; một trong những&nbsp;<em>c&acirc;y ăn tr&aacute;i dễ trồng</em>&nbsp;v&agrave; chăm s&oacute;c. C&acirc;y c&oacute;c c&oacute; k&iacute;ch cỡ vừa phải rất th&iacute;ch hợp cho trồng trong chậu tại nh&agrave;. Quả c&oacute;c chua gi&ograve;n v&agrave; đặc biệt kh&ocirc;ng c&oacute; chất b&eacute;o. Đ&acirc;y l&agrave; m&oacute;n ăn vặt m&agrave; bất cứ c&ocirc; g&aacute;i n&agrave;o cũng ghiền. C&oacute;c th&aacute;i thường ra quả sau khoảng 3-4 th&aacute;ng trồng.</p>\r\n\r\n<p>Sau khi h&aacute;i tr&aacute;i bạn chỉ cần cắt bỏ nh&aacute;nh gi&agrave; th&igrave; c&acirc;y sẽ ra đọt mới. C&acirc;y c&agrave;ng gi&agrave; tr&aacute;i c&agrave;ng sai, ra quả quanh năm. C&acirc;y rất &iacute;t bị s&acirc;u bệnh.</p>\r\n\r\n<h2><strong>5. C&acirc;y chanh &ndash; Một trong c&aacute;c loại c&acirc;y ăn quả dễ trồng trong chậu</strong></h2>\r\n\r\n<p><img alt=\"những loại cây ăn quả trồng trong chậu\" height=\"444\" sizes=\"(max-width: 700px) 100vw, 700px\" src=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-03-min.jpg\" srcset=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-03-min.jpg 1024w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-03-min-425x270.jpg 425w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-03-min-768x488.jpg 768w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-03-min-600x381.jpg 600w\" title=\"những loại cây ăn quả trồng trong chậu\" width=\"700\" /></p>\r\n\r\n<p><em>C&acirc;y chanh</em></p>\r\n\r\n<p>Chanh l&agrave; một trong những lựa chọn đầu ti&ecirc;n khi lựa chọn&nbsp;<em>c&acirc;y trồng trong chậu</em>.&nbsp;C&acirc;y chanh dễ trồng dễ chăm v&agrave; nhiều lợi &iacute;ch. V&igrave; vậy mỗi gia đ&igrave;nh n&ecirc;n c&oacute; một chậu c&acirc;y trong nh&agrave;. Ngo&agrave;i t&aacute;c dụng lấy quả, trang tr&iacute; vườn nh&agrave;, c&acirc;y chanh c&ograve;n gi&uacute;p s&acirc;n vườn của bạn lu&ocirc;n thơm ng&aacute;t. B&ecirc;n cạnh đ&oacute;, chanh c&ograve;n c&oacute; t&aacute;c dụng xua đuổi c&ocirc;n tr&ugrave;ng, muỗi nữa đấy.</p>\r\n\r\n<h2><strong>6. C&acirc;y Xo&agrave;i trồng trong chậu</strong></h2>\r\n\r\n<p><img alt=\"những loại cây ăn quả trồng trong chậu\" height=\"525\" sizes=\"(max-width: 700px) 100vw, 700px\" src=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-10-min.jpg\" srcset=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-10-min.jpg 768w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-10-min-425x319.jpg 425w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-10-min-600x450.jpg 600w\" title=\"những loại cây ăn quả trồng trong chậu\" width=\"700\" /></p>\r\n\r\n<p><em>Trồng c&acirc;y Xo&agrave;i trong chậu</em></p>\r\n\r\n<p>Xo&agrave;i c&oacute; rất nhiều loại v&agrave; k&iacute;ch thước trong đ&oacute; xo&agrave;i tứ qu&yacute; v&agrave; xo&agrave;i Đ&agrave;i Loan thường được lựa chọn l&agrave; giống&nbsp;<em>c&acirc;y ăn quả trồng chậu</em>. Do c&oacute; chiều cao vừa phải, c&acirc;y mau ra tr&aacute;i.</p>\r\n\r\n<p>Chẳng những l&agrave; một loại quả hấp dẫn ngon miệng xo&agrave;i c&ograve;n c&oacute; những c&ocirc;ng dụng rất tuyệt vời như: gi&agrave;u dinh dưỡng, tăng hệ miễn dịch cho cơ thể, nhiều vitamin tốt cho mắt,&hellip;</p>\r\n\r\n<h2><strong>7. C&acirc;y t&aacute;o đỏ &ndash; Một trong c&aacute;c loại c&acirc;y ăn quả trồng trong chậu</strong></h2>\r\n\r\n<p><img alt=\"các loại cây ăn quả trồng trong chậu\" height=\"467\" sizes=\"(max-width: 700px) 100vw, 700px\" src=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-07-min.jpg\" srcset=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-07-min.jpg 1000w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-07-min-425x283.jpg 425w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-07-min-768x512.jpg 768w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-07-min-600x400.jpg 600w\" title=\"cây ăn trái trồng chậu\" width=\"700\" /></p>\r\n\r\n<p><em>Giống c&acirc;y ăn quả trồng chậu C&acirc;y t&aacute;o đỏ</em></p>\r\n\r\n<p>Thay v&igrave; phải ra ngo&agrave;i mua th&igrave; giờ đ&acirc;y bạn c&oacute; thể thu hoạch t&aacute;o ngay tại nh&agrave;. Vừa an to&agrave;n vừa th&uacute; vị lại c&oacute; quả ăn ngay tại kh&ocirc;ng gian sống của gia đ&igrave;nh. Bạn c&ograve;n chần chừ điều g&igrave; nữa m&agrave; kh&ocirc;ng thử?</p>\r\n\r\n<h2><strong>8. C&acirc;y đ&agrave;o &ndash; C&acirc;y ăn quả trồng chậu dễ chăm s&oacute;c</strong></h2>\r\n\r\n<p><img alt=\"các loại cây ăn quả trồng trong chậu\" height=\"700\" sizes=\"(max-width: 700px) 100vw, 700px\" src=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-04-min.jpg\" srcset=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-04-min.jpg 768w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-04-min-425x425.jpg 425w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-04-min-150x150.jpg 150w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-04-min-300x300.jpg 300w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-04-min-600x600.jpg 600w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-04-min-100x100.jpg 100w\" title=\"các loại cây ăn quả trồng trong chậu\" width=\"700\" /></p>\r\n\r\n<p><em>C&acirc;y ăn quả trồng chậu c&acirc;y đ&agrave;o</em></p>\r\n\r\n<p>Đ&agrave;o l&agrave; loại quả c&oacute; t&iacute;nh m&aacute;t, vị ngọt thanh dễ ăn v&agrave; c&oacute; nhiều t&aacute;c dụng chữa bệnh. C&acirc;y đ&agrave;o dễ trồng, dễ đậu quả n&ecirc;n được ưa chuộng trong&nbsp;<strong>c&aacute;c loại c&acirc;y ăn quả trồng trong chậu</strong>.</p>\r\n\r\n<p>Quả đ&agrave;o ngo&agrave;i sử dụng l&agrave; ăn trực tiếp c&ograve;n c&oacute; thể kết hợp với tr&agrave; l&agrave;m ra m&oacute;n tr&agrave; đ&agrave;o ngon tuyệt v&agrave;o mỗi m&ugrave;a h&egrave; đến. Những ng&agrave;y nắng gắt m&agrave; c&oacute; được một ly tr&agrave; đ&agrave;o để thưởng thức th&igrave; kh&ocirc;ng c&ograve;n g&igrave; hạnh ph&uacute;c hơn.</p>\r\n\r\n<h2><strong>9. C&acirc;y cam &ndash; Những loại c&acirc;y ăn quả trồng trong nh&agrave;</strong></h2>\r\n\r\n<p><img alt=\"các loại cây ăn quả trồng trong chậu\" height=\"467\" sizes=\"(max-width: 700px) 100vw, 700px\" src=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-08-min.jpg\" srcset=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-08-min.jpg 768w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-08-min-425x283.jpg 425w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-08-min-600x400.jpg 600w\" title=\"các loại cây ăn quả trồng trong chậu\" width=\"700\" /></p>\r\n\r\n<p><em>Giống c&acirc;y cam trồng trong chậu</em></p>\r\n\r\n<p>Cam l&agrave; một trong&nbsp;<em>những loại c&acirc;y ăn quả trồng trong chậu</em>&nbsp;sai quả nhất. C&acirc;y kh&ocirc;ng cần chăm s&oacute;c qu&aacute; nhiều m&agrave; vẫn lớn nhanh. Ngo&agrave;i ra, cam c&ograve;n l&agrave; loại quả c&oacute; rất nhiều lợi &iacute;ch cho cơ thể con người. Chắc chắn đ&acirc;y l&agrave; quả đứng đầu bảng với nồng độ vitamin C dồi d&agrave;o. Một ly nước cam mỗi ng&agrave;y gi&uacute;p bổ sung năng lượng, cung cấp dinh dưỡng gi&uacute;p da đẹp d&aacute;ng xinh.</p>\r\n\r\n<blockquote>\r\n<p><strong>&gt;&gt;&gt;&gt; Tham Khảo Ngay: 14&nbsp;<a href=\"https://lasc.vn/cay-an-qua-cho-bong-mat/\" id=\"link-noi-bo\" rel=\"noopener\" target=\"_blank\">c&acirc;y ăn quả cho b&oacute;ng m&aacute;t</a>&nbsp;trồng nhiều trong s&acirc;n vườn</strong></p>\r\n</blockquote>\r\n\r\n<h2><strong>10. C&aacute;ch chăm s&oacute;c c&aacute;c loại c&acirc;y ăn quả trồng trong chậu</strong></h2>\r\n\r\n<p><img alt=\"các loại cây ăn quả trồng trong chậu\" height=\"658\" sizes=\"(max-width: 700px) 100vw, 700px\" src=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-02-min.jpg\" srcset=\"https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-02-min.jpg 768w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-02-min-425x400.jpg 425w, https://lasc.vn/wp-content/uploads/2020/06/cac-loai-cay-an-qua-trong-trong-chau-02-min-600x564.jpg 600w\" title=\"các loại cây ăn quả trồng trong chậu\" width=\"700\" /></p>\r\n\r\n<p><em>C&aacute;ch chăm s&oacute;c c&acirc;y ăn quả trong chậu</em></p>\r\n\r\n<p>Chọn giống c&acirc;y trồng c&oacute; năng suất cao để gi&uacute;p c&acirc;y dễ đậu quả. Lựa chọn đất th&iacute;ch hợp, để c&acirc;y được hấp thụ được tối đa c&aacute;c dưỡng chất v&agrave; ph&aacute;t triển khỏe mạnh. Chọn chậu c&acirc;y trồng th&iacute;ch hợp để đảm bảo t&iacute;nh thẩm mỹ của ng&ocirc;i nh&agrave; cũng như đủ lớn để c&acirc;y c&oacute; kh&ocirc;ng gian ph&aacute;t triển.</p>\r\n\r\n<p>Tưới nước mang ra nơi c&oacute; &aacute;nh s&aacute;ng v&agrave; cắt tỉa c&agrave;nh gi&agrave; thường xuy&ecirc;n để c&acirc;y ph&aacute;t triển tốt nhất. D&ugrave;ng thuốc trừ s&acirc;u sinh học hay phun tỏi ớt để ngừa s&acirc;u bệnh.</p>\r\n\r\n<p><em>Tr&ecirc;n đ&acirc;y l&agrave; TOP 9&nbsp;<strong>c&aacute;c loại c&acirc;y ăn quả trồng trong chậu</strong>&nbsp;dễ chăm mau ra tr&aacute;i đang được ưa chuộng nhất hiện nay. Với nhiều loại c&acirc;y c&ugrave;ng những k&iacute;ch th&iacute;ch c&ocirc;ng dụng kh&aacute;c nhau hi vọng bạn c&oacute; thể lựa chọn cho kh&ocirc;ng gian gia đ&igrave;nh&nbsp; được một chậu c&acirc;y th&iacute;ch hợp. Vừa tăng vẻ đẹp cho ng&ocirc;i nh&agrave; cũng như c&oacute; nhiều hoa quả tươi sạch cung cấp vitamin mỗi ng&agrave;y.</em></p>', 'nong nghiep sach, cong nghe', 'nong nghiep sach, cong nghe', 1, '23.jpg', 2),
(10, 'Vườn sân thượng hàng trăm cây ăn quả', 'vuon-san-thuong-hang-tram-cay-an-qua', '<p>Chị Đ&agrave;o Quỳnh Trang trồng hơn 100 c&acirc;y ổi, c&oacute;c, đu đủ, khế, roi, sầu ri&ecirc;ng, hồng xi&ecirc;m, xo&agrave;i... tr&ecirc;n hai s&acirc;n thượng, rộng hơn 200 m2 của gia đ&igrave;nh</p>\r\n\r\n<p>&nbsp;</p>', '<h3>&nbsp;</h3>\r\n\r\n<p>Chị Đ&agrave;o Quỳnh Trang trồng hơn 100 c&acirc;y ổi, c&oacute;c, đu đủ, khế, roi, sầu ri&ecirc;ng, hồng xi&ecirc;m, xo&agrave;i... tr&ecirc;n hai s&acirc;n thượng, rộng hơn 200 m2 của gia đ&igrave;nh</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 1.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/6/14/photo-1-1623652194395857332013.jpg\" title=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 1.\" width=\"\" /></p>\r\n\r\n<p>Năm 2015, chị Trang, 31 tuổi, ở Thủ Đức, bắt đầu l&agrave;m vườn tr&ecirc;n hai s&acirc;n thượng tầng bốn, rộng 130m2 v&agrave; 90m2. Ban đầu chỉ muốn trồng rau để thỏa đam m&ecirc;, kh&ocirc;ng ngờ c&acirc;y cối ph&aacute;t triển tốt, hai vợ chồng quyết định &quot;canh t&aacute;c&quot; b&agrave;i bản hơn.</p>\r\n\r\n<p>D&ugrave; đ&atilde; ch&uacute; &yacute; xử l&yacute; trần thật kỹ để tr&aacute;nh thấm, dột, nhưng mới đầu, vợ chồng để l&aacute; rụng, tr&ocirc;i v&agrave;o cống tho&aacute;t nước. Trời mưa lớn n&ecirc;n nước ứ đọng, tr&uacute;t xuống l&agrave;m trong nh&agrave; cũng &quot;mưa&quot; như ngo&agrave;i s&acirc;n. Hai vợ chồng phải đội mưa l&ecirc;n s&acirc;n thượng th&ocirc;ng cống.</p>\r\n\r\n<p><img alt=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 2.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/6/14/photo-1-1623652199321936000345.jpg\" title=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 2.\" width=\"\" /></p>\r\n\r\n<p>Hai năm nay, chị Trang trồng hơn 100 gốc ổi l&ecirc; tr&ecirc;n cả hai s&acirc;n thượng, b&ecirc;n cạnh c&aacute;c loại tr&aacute;i c&acirc;y kh&aacute;c v&agrave; rau xanh. B&agrave; chủ vườn cũng tận dụng gốc ổi để trồng c&aacute;c loại rau ưa b&oacute;ng r&acirc;m. Chị Trang cho biết, giống ổi l&ecirc; ra quả quanh năm, mỗi tuần thu hoạch một lần, khoảng 10-15kg, quả to nhất nặng tới 400 g.</p>\r\n\r\n<p>Trồng ổi tr&ecirc;n s&acirc;n thượng, chị Trang phải tỉa l&aacute; thường xuy&ecirc;n để tr&aacute;nh rệp s&aacute;p, nhất l&agrave; khi trời nắng n&oacute;ng. Mỗi c&agrave;nh, chủ vườn chỉ để từ một đến hai tr&aacute;i. Khi tr&aacute;i bằng ng&oacute;n tay, chị bọc nilon để tr&aacute;nh s&acirc;u bệnh. V&agrave;i tuần chị lại b&oacute;n ph&acirc;n hữu cơ một lần để bổ sung chất dinh dưỡng.</p>\r\n\r\n<p>C&acirc;y tr&aacute;i trồng tr&ecirc;n s&acirc;n thượng cao, tho&aacute;ng n&ecirc;n &iacute;t s&acirc;u bệnh. Tuy vậy, để rau quả tươi tốt, chị Trang phải ở nh&agrave;, d&agrave;nh to&agrave;n thời gian chăm vườn. &quot;Cả ng&agrave;y l&ecirc;n chăm c&acirc;y n&ecirc;n da đen thui. 11h khuya con ngủ l&agrave; hai vợ chồng lại l&ecirc;n soi đ&egrave;n bắt ốc s&ecirc;n&quot;, người phụ nữ gốc Quảng Ninh, n&oacute;i.</p>\r\n\r\n<p><img alt=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 3.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/6/14/photo-2-16236522011781765070750.jpg\" title=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 3.\" width=\"\" /></p>\r\n\r\n<p>Ngo&agrave;i ổi, roi (mận) cũng l&uacute;c lỉu tr&ecirc;n s&acirc;n thượng. Để trồng c&acirc;y, vợ chồng chị Trang v&agrave; em trai thay nhau v&aacute;c đất l&ecirc;n. C&oacute; lần họ mượn m&aacute;y tời k&eacute;o đất l&ecirc;n s&acirc;n thượng. Chị Trang tuột tay, l&agrave;m l&ograve;ng b&agrave;n tay phồng rộp, kh&ocirc;ng cầm nổi ch&eacute;n ăn cơm.</p>\r\n\r\n<p><img alt=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 4.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/6/14/photo-3-16236522011211122290131.jpg\" title=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 4.\" width=\"\" /></p>\r\n\r\n<p>Trước Tết nguy&ecirc;n đ&aacute;n, chị Trang trồng hai c&acirc;y đu đủ v&agrave;o th&ugrave;ng phuy. Một c&acirc;y được hơn chục quả, c&acirc;y c&ograve;n lại cho khoảng 30 quả. Để sai quả, chị tỉa l&aacute; thường xuy&ecirc;n, chỉ giữ lại l&aacute; non v&agrave; cứ 10 -15 ng&agrave;y lại b&oacute;n ph&acirc;n một lần. &quot;C&acirc;y cần nhiều chất dinh dưỡng th&igrave; mới đậu được nhiều quả&quot;, b&agrave; chủ vườn lưu &yacute;.</p>\r\n\r\n<p><img alt=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 5.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/6/14/photo-4-16236522000181514448391.jpg\" title=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 5.\" width=\"\" /></p>\r\n\r\n<p>C&oacute;c, khế chị trồng tr&ecirc;n vườn s&acirc;n thượng hai năm nay. Hoa quả s&acirc;n thượng tự trồng đủ ng&agrave;y đủ th&aacute;ng n&ecirc;n đậm vị, ăn quanh năm.</p>\r\n\r\n<p><img alt=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 6.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/6/14/photo-5-1623652199396268131814.jpg\" title=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 6.\" width=\"\" /></p>\r\n\r\n<p>Chồng chị, anh B&ugrave;i Như Sang, 34 tuổi, ngo&agrave;i giờ h&agrave;nh ch&iacute;nh th&igrave; phụ vợ chăm s&oacute;c vườn. Việc l&agrave;m gi&agrave;n, lắp đặt hệ thống tưới... anh giảng vi&ecirc;n đều tự mua về lắp đặt. &quot;Anh ấy cũng th&iacute;ch cuộc sống b&igrave;nh y&ecirc;n n&ecirc;n m&ecirc; vườn lắm. Hai vợ chồng l&ecirc;n vườn l&agrave; phải chia ca&quot;, chị vui kể.</p>\r\n\r\n<p><img alt=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 7.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/6/14/photo-6-16236521994941723016318.jpg\" title=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 7.\" width=\"\" /></p>\r\n\r\n<p>Ở khu vườn nhỏ, chị Trang trồng nhiều loại rau xanh phục vụ gia đ&igrave;nh, tặng v&agrave; b&aacute;n cho người quen. Rau v&agrave; c&acirc;y tr&aacute;i đều được tưới bằng hệ thống tự động. Dịp Tết vừa qua, chị thu hoạch h&agrave;ng chục c&acirc;n rau.</p>\r\n\r\n<p><img alt=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 8.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/6/14/photo-7-16236521996222115914352.jpg\" title=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 8.\" width=\"\" /></p>\r\n\r\n<p>Ban đầu, b&agrave; chủ vườn chỉ trồng rau để phục vụ gia đ&igrave;nh v&agrave; tặng bạn b&egrave;. Về sau nhiều người hỏi mua, thi thoảng chị b&aacute;n online tr&ecirc;n mạng x&atilde; hội. &quot;Trồng để nh&agrave; m&igrave;nh được ăn đồ sạch v&agrave; c&oacute; th&ecirc;m kh&ocirc;ng gian vui vẻ, thoải m&aacute;i, chứ tiền b&aacute;n rau, quả chẳng thể b&ugrave; tiền mua ph&acirc;n b&oacute;n v&agrave; c&ocirc;ng chăm s&oacute;c&quot;, b&agrave; mẹ hai con n&oacute;i.</p>\r\n\r\n<p><img alt=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 9.\" height=\"\" src=\"https://nld.mediacdn.vn/thumb_w/540/291774122806476800/2021/6/14/photo-8-16236521995591054668122.jpg\" title=\"Vườn sân thượng hàng trăm cây ăn quả - Ảnh 9.\" width=\"\" /></p>\r\n\r\n<p>Gi&aacute; trị nhất của vợ chồng chị Trang l&agrave; trong những ng&agrave;y dịch bệnh vẫn c&oacute; kh&ocirc;ng gian để thư gi&atilde;n. Thay v&igrave; nhốt hai con nhỏ trong nh&agrave; với điện thoại, TV, cả nh&agrave; chị k&eacute;o nhau l&ecirc;n vườn. Anh chị l&agrave;m cỏ, thu hoạch rau tr&aacute;i c&ograve;n hai b&eacute; phụ ba mẹ, đ&ugrave;a nghịch.</p>\r\n\r\n<p>Từ ng&agrave;y c&oacute; vườn gia đ&igrave;nh chị lười đi chơi ở ngo&agrave;i. Cứ cuối tuần con nghỉ học, chồng nghỉ l&agrave;m l&agrave; cả nh&agrave; l&ecirc;n vườn. &quot;L&agrave;m n&ocirc;ng d&acirc;n s&acirc;n thượng c&aacute;c con t&ocirc;i cũng biết nhiều loại rau tr&aacute;i, những thứ m&agrave; ở th&agrave;nh phố chỉ thấy trong si&ecirc;u thị. C&aacute;c b&eacute; cũng hiểu được gi&aacute; trị của việc lao động&quot;, người mẹ n&oacute;i.</p>\r\n\r\n<p><strong>Theo Phạm Nga (vnexpress.net)</strong></p>', 'vuon san thuong', 'vuon san thuong', 1, '28.jpg', 4),
(11, 'Thời của nông nghiệp 4.0: ĐỔI CHẤT, TĂNG LƯỢNG', 'thoi-cua-nong-nghiep-4-0', '<p><em>Kế hoạch chuyển đổi số đ&atilde; đặt ra mục ti&ecirc;u ph&aacute;t triển kinh tế số trong n&ocirc;ng nghiệp, nhằm th&uacute;c đẩy doanh nghiệp, người d&acirc;n tăng cường ứng dụng c&ocirc;ng nghệ số v&agrave;o quy tr&igrave;nh sản xuất, cung cấp dịch vụ n&ocirc;ng nghiệp. Điều n&agrave;y sẽ gi&uacute;p quản l&yacute;, gi&aacute;m s&aacute;t nguồn gốc, h&igrave;nh th&agrave;nh hệ sinh th&aacute;i n&ocirc;ng nghiệp số, nhằm khuyến kh&iacute;ch c&aacute;c hộ, hợp t&aacute;c x&atilde; tham gia v&agrave;o ứng dụng c&ocirc;ng nghệ cao trong n&ocirc;ng nghiệp.</em></p>', '<p><img alt=\"Thời của nông nghiệp 4.0: Đổi chất, tăng lượng -0\" src=\"https://img.nhandan.com.vn/Files/Images/2021/08/06/sub1_1-1628234099887.jpg\" /></p>\r\n\r\n<p><em>Kế hoạch chuyển đổi số đ&atilde; đặt ra mục ti&ecirc;u ph&aacute;t triển kinh tế số trong n&ocirc;ng nghiệp, nhằm th&uacute;c đẩy doanh nghiệp, người d&acirc;n tăng cường ứng dụng c&ocirc;ng nghệ số v&agrave;o quy tr&igrave;nh sản xuất, cung cấp dịch vụ n&ocirc;ng nghiệp. Điều n&agrave;y sẽ gi&uacute;p quản l&yacute;, gi&aacute;m s&aacute;t nguồn gốc, h&igrave;nh th&agrave;nh hệ sinh th&aacute;i n&ocirc;ng nghiệp số, nhằm khuyến kh&iacute;ch c&aacute;c hộ, hợp t&aacute;c x&atilde; tham gia v&agrave;o ứng dụng c&ocirc;ng nghệ cao trong n&ocirc;ng nghiệp.</em></p>\r\n\r\n<p><strong>H</strong>ệ sinh th&aacute;i n&ocirc;ng nghiệp số l&agrave; một kh&ocirc;ng gian số phản ảnh đầy đủ c&aacute;c đối tượng v&agrave; mối quan hệ của c&aacute;c đối tượng trong ng&agrave;nh n&ocirc;ng nghiệp tr&ecirc;n kh&ocirc;ng gian số th&ocirc;ng qua ph&eacute;p &aacute;nh xạ từ miền thực sang miền số; tận dụng sức mạnh số để giải quyết c&aacute;c vấn đề đang tồn tại v&agrave; c&aacute;c dịch vụ n&ocirc;ng nghiệp mới xanh v&agrave; bền vững hơn.</p>\r\n\r\n<p>Để ph&aacute;t huy vai tr&ograve; dẫn dắt trong c&ocirc;ng cuộc chuyển đổi số, b&ecirc;n cạnh c&aacute;c hệ sinh th&aacute;i Ch&iacute;nh phủ số, y tế số, gi&aacute;o dục số..., trong những năm qua VNPT đ&atilde; v&agrave; đang x&acirc;y dựng hệ sinh th&aacute;i n&ocirc;ng nghiệp số, với trọng t&acirc;m l&agrave; c&aacute;c nền tảng số như nền tảng truyền dẫn 5G, nền tảng internet vạn vật (IoT), nền tảng tr&iacute; tuệ nh&acirc;n tạo (AI), nền tảng chuỗi cung ứng...&nbsp;&nbsp;</p>\r\n\r\n<p>Trước hết phải n&oacute;i đến việc t&iacute;ch hợp mạng 5G thử nghiệm th&agrave;nh c&ocirc;ng v&agrave;o cấu tr&uacute;c mạng hiện hữu, VNPT đ&atilde; sẵn s&agrave;ng về mặt kỹ thuật, c&ocirc;ng nghệ v&agrave; cấu tr&uacute;c mạng lưới cho việc triển khai mạng 5G thương mại. B&ecirc;n cạnh việc nghi&ecirc;n cứu ứng dụng tốc độ vượt trội của 5G trong c&aacute;c lĩnh vực giải tr&iacute;, sản xuất kinh doanh, giao th&ocirc;ng vận tải, y tế, gi&aacute;o dục... th&igrave; c&aacute;c chuy&ecirc;n gia c&ocirc;ng nghệ cũng đ&aacute;nh gi&aacute; khả năng khai th&aacute;c 5G để phục vụ nhu cầu internet của c&aacute;c hộ gia đ&igrave;nh thay thế hệ thống c&aacute;p quang. Điều n&agrave;y đặc biệt c&oacute; &yacute; nghĩa trong việc x&acirc;y dựng hạ tầng c&ocirc;ng nghệ-từng bước đưa internet đến v&ugrave;ng s&acirc;u v&ugrave;ng xa, khu vực kh&oacute; khăn, g&oacute;p phần tạo dựng nền tảng để thực hiện chuyển đổi số đến th&ocirc;n, x&oacute;m, l&agrave;ng bản ở c&aacute;c v&ugrave;ng miền; nhất l&agrave; trong lĩnh vực n&ocirc;ng nghiệp, nơi m&agrave; c&aacute;c thiết bị IoT được sử dụng rất nhiều trong việc hỗ trợ sản xuất cũng như gi&aacute;m s&aacute;t, bảo đảm điều kiện tốt nhất cho c&acirc;y, con ph&aacute;t triển.</p>\r\n\r\n<p><a href=\"https://img.nhandan.com.vn/Files/Images/2021/08/06/s1-1628236353229.jpg\"><img alt=\"Thời của nông nghiệp 4.0: Đổi chất, tăng lượng -0\" src=\"https://img.nhandan.com.vn/Files/Images/2021/08/06/s1-1628236353229.jpg\" /></a></p>\r\n\r\n<p>Hệ thống vận chuyển hoa hiện đại từ điểm thu hoạch ra điểm tập kết tại tại Dalat Hasfarm.</p>\r\n\r\n<p><a href=\"https://img.nhandan.com.vn/Files/Images/2021/08/06/s2-1628236354161.jpg\"><img alt=\"Thời của nông nghiệp 4.0: Đổi chất, tăng lượng -1\" src=\"https://img.nhandan.com.vn/Files/Images/2021/08/06/s2-1628236354161.jpg\" /></a></p>\r\n\r\n<p>Hệ thống ph&acirc;n loại củ quả tại C&ocirc;ng ty Phong Thủy.</p>\r\n\r\n<p><a href=\"https://img.nhandan.com.vn/Files/Images/2021/08/06/s3-1628236353420.jpg\"><img alt=\"Thời của nông nghiệp 4.0: Đổi chất, tăng lượng -2\" src=\"https://img.nhandan.com.vn/Files/Images/2021/08/06/s3-1628236353420.jpg\" /></a></p>\r\n\r\n<p>D&ugrave;ng ứng dụng c&ocirc;ng nghệ để &quot;đọc, hiểu&quot; đất qua c&aacute;c th&ocirc;ng số tại trang trại của gia đ&igrave;nh qua hệ thống quản trị th&ocirc;ng minh.</p>\r\n\r\n<p><a href=\"https://img.nhandan.com.vn/Files/Images/2021/08/06/s4-1628236353529.jpg\"><img alt=\"Thời của nông nghiệp 4.0: Đổi chất, tăng lượng -3\" src=\"https://img.nhandan.com.vn/Files/Images/2021/08/06/s4-1628236353529.jpg\" /></a></p>\r\n\r\n<p>Hướng dẫn ứng dụng c&ocirc;ng nghệ IoT.</p>\r\n\r\n<p><a href=\"https://img.nhandan.com.vn/Files/Images/2021/08/06/s5-1628236353686.jpg\"><img alt=\"Thời của nông nghiệp 4.0: Đổi chất, tăng lượng -4\" src=\"https://img.nhandan.com.vn/Files/Images/2021/08/06/s5-1628236353686.jpg\" /></a></p>\r\n\r\n<p>Niềm vui thu hoạch tại vườn c&agrave; chua.</p>\r\n\r\n<p><a href=\"https://img.nhandan.com.vn/Files/Images/2021/08/06/s6-1628236353818.jpg\"><img alt=\"Thời của nông nghiệp 4.0: Đổi chất, tăng lượng -5\" src=\"https://img.nhandan.com.vn/Files/Images/2021/08/06/s6-1628236353818.jpg\" /></a></p>\r\n\r\n<p>Sản xuất rau thuỷ canh tại trang trại Đức T&iacute;n, Đ&agrave; Lạt.</p>\r\n\r\n<p>Tiếp đến IoT Platform-đ&acirc;y l&agrave; nền tảng IoT Cloud to&agrave;n diện cho ph&eacute;p kết nối v&agrave; quản l&yacute; tập trung c&aacute;c thiết bị IoT v&agrave; hỗ trợ c&aacute;c nh&agrave; cung cấp dịch vụ ph&aacute;t triển ứng dụng cho nhiều lĩnh vực kh&aacute;c nhau như y tế, giao th&ocirc;ng, n&ocirc;ng nghiệp, gi&aacute;o dục, điện lực&hellip; Nền tảng IoT Platform đ&atilde; đạt chứng chỉ oneM2M-chứng chỉ to&agrave;n cầu d&agrave;nh cho chuẩn h&oacute;a ph&aacute;t triển về IoT/M2M. C&oacute; thể n&oacute;i, VNPT l&agrave; đơn vị đầu ti&ecirc;n v&agrave; duy nhất của Việt Nam cho tới thời điểm n&agrave;y c&oacute; nền tảng IoT nhận được chứng chỉ n&agrave;y, s&aacute;nh ngang với nhiều h&atilde;ng lớn trong l&agrave;ng c&ocirc;ng nghệ tr&ecirc;n thế giới.</p>\r\n\r\n<p>Hiện nay ở Việt Nam, VNPT đang l&agrave; đơn vị đi đầu đang nghi&ecirc;n cứu, thử nghiệm ứng dụng AI trong việc tiết kiệm chi ph&iacute;, ph&acirc;n b&oacute;n, thuốc trừ s&acirc;u, thuốc diệt cỏ trong sản xuất n&ocirc;ng nghiệp. Với nền tảng AI n&agrave;y sẽ cho ph&eacute;p ph&acirc;n t&iacute;ch ph&aacute;t hiện v&ugrave;ng bất thường của c&acirc;y l&uacute;a th&ocirc;ng qua h&igrave;nh ảnh chụp c&aacute;nh đồng từ tr&ecirc;n kh&ocirc;ng, từ đ&oacute; x&aacute;c định được v&ugrave;ng thiếu ph&acirc;n b&oacute;n, hoặc khu vực bị cỏ dại, s&acirc;u bệnh, từ đ&oacute; khuyến nghị lượng ph&acirc;n b&oacute;n, lược thuốc trừ cỏ, trừ s&acirc;u đ&uacute;ng, đủ với khu vực.</p>\r\n\r\n<p>Với c&aacute;c nền tảng số, trong đ&oacute; nền tảng quản l&yacute; chuỗi cung ứng n&ocirc;ng sản (vFarm) cho ph&eacute;p số h&oacute;a quy tr&igrave;nh nu&ocirc;i, trồng n&ocirc;ng sản một c&aacute;ch mềm dẻo, linh hoạt, ph&ugrave; hợp với hầu hết c&aacute;c loại n&ocirc;ng sản ở Việt Nam. C&ugrave;ng với quy tr&igrave;nh đ&atilde; được số h&oacute;a, việc tạo ra nhật k&yacute; điện tử n&ocirc;ng sản hết sức dễ d&agrave;ng, dữ liệu nhật k&yacute; điện tử c&oacute; thể được th&ecirc;m bằng tay từ thiết bị smartphone của người n&ocirc;ng d&acirc;n, hoặc tự động từ c&aacute;c thiết bị IoT triển khai tr&ecirc;n đồng ruộng... Từ đ&oacute; c&oacute; thể tạo được cơ sở dữ liệu n&ocirc;ng sản đ&uacute;ng, đủ, kịp thời phục vụ truy xuất nguồn gốc cũng như quản l&yacute;, theo d&otilde;i, tối ưu qu&aacute; tr&igrave;nh sản xuất n&ocirc;ng sản.&nbsp;</p>\r\n\r\n<p><strong>T</strong>uy vậy, n&ocirc;ng nghiệp số l&agrave; lĩnh vực rộng lớn v&agrave; c&ograve;n những &ldquo;ch&ocirc;ng gai&rdquo; ở ph&iacute;a trước, nhưng với phương ch&acirc;m đồng h&agrave;nh c&ugrave;ng Ch&iacute;nh phủ, c&aacute;c bộ, ng&agrave;nh, doanh nghiệp, nhất l&agrave; chung tay với b&agrave; con n&ocirc;ng d&acirc;n, VNPT quyết t&acirc;m vượt qua mọi kh&oacute; khăn, để mang tới những những sản phẩm, dịch vụ, nền tảng số ph&ugrave; hợp nhất cho Việt Nam v&igrave; một nền n&ocirc;ng nghiệp xanh, bền vững v&agrave; ph&aacute;t triển.</p>\r\n\r\n<p><img alt=\"s7-1628236753329.jpg\" src=\"https://img.nhandan.com.vn/Files/Images/2021/08/06/s7-1628236753329.jpg\" /></p>\r\n\r\n<p><img alt=\"Thời của nông nghiệp 4.0: Đổi chất, tăng lượng -0\" src=\"https://img.nhandan.com.vn/Files/Images/2021/08/06/sub2-1628236871561.jpg\" /></p>\r\n\r\n<p><em>Chỉ cần điện thoại th&ocirc;ng minh, người n&ocirc;ng d&acirc;n ở Ninh B&igrave;nh c&oacute; thể gi&aacute;m s&aacute;t việc trồng rau, củ quả theo m&ocirc; h&igrave;nh c&ocirc;ng nghệ cao, d&ugrave; ở bất cứ đ&acirc;u, 24/24 giờ. Ứng dụng &ldquo;c&ocirc;ng nghệ k&eacute;p&rdquo;- internet vạn vật (IoT) v&agrave; nano silic v&agrave;o quy tr&igrave;nh canh t&aacute;c đ&atilde; tạo n&ecirc;n sức lan tỏa cho những trang trại 4.0.&nbsp;</em></p>\r\n\r\n<p><strong>T</strong>ừng thua lỗ nặng khi mới đầu tư x&acirc;y dựng n&ocirc;ng trại trồng rau, nhưng chị L&ecirc; Thị Dung ở x&atilde; Kh&aacute;nh Cư, huyện Y&ecirc;n Kh&aacute;nh (Ninh B&igrave;nh) quyết kh&ocirc;ng bỏ cuộc. Chị &ldquo;tầm sư học đạo&rdquo;, t&igrave;m c&aacute;c m&ocirc; h&igrave;nh, trang trại c&ocirc;ng nghệ cao trong nước để học hỏi c&aacute;ch l&agrave;m, rồi lướt web nghi&ecirc;n cứu... Năm 2000, khi nhận thấy ở trong x&atilde; c&oacute; nhiều hộ n&ocirc;ng d&acirc;n kh&ocirc;ng c&oacute; nhu cầu sản xuất n&ocirc;ng nghiệp, chị nảy ra &yacute; định &ldquo;động trời&rdquo;, vay tiền gom, mua ruộng đất để l&agrave;m trang trại c&ocirc;ng nghệ cao với quy m&ocirc; lớn. Từ một n&ocirc;ng d&acirc;n thuần t&uacute;y, chị đứng ra mở C&ocirc;ng ty CP Đầu tư c&ocirc;ng nghệ Xanh chuy&ecirc;n sản xuất cung ứng rau, củ, quả sạch theo quy tr&igrave;nh kh&eacute;p k&iacute;n.</p>\r\n\r\n<p>C&ugrave;ng với thực tế v&agrave; kinh nghiệm &ldquo;đọc, hiểu đất&rdquo; của m&igrave;nh, chị Dung đ&atilde; quyết t&acirc;m chọn hướng đi ri&ecirc;ng đ&oacute; l&agrave; ứng dụng c&ocirc;ng nghệ IoT v&agrave; đưa ph&acirc;n b&oacute;n nano silic v&agrave;o sản xuất-tức l&agrave; đưa c&ocirc;ng nghệ t&aacute;c động trực tiếp với đất, l&aacute;, th&acirc;n của c&acirc;y trồng.&nbsp;</p>\r\n\r\n<p><img alt=\"Thời của nông nghiệp 4.0: Đổi chất, tăng lượng -0\" src=\"https://img.nhandan.com.vn/Files/Images/2021/08/06/ghep-1628239894136.jpg\" /></p>\r\n\r\n<p>Việc ứng dụng c&ocirc;ng nghệ cao trong sản xuất n&ocirc;ng nghiệp đang l&agrave; một xu hướng tất yếu m&agrave; nhiều trang trại, hộ n&ocirc;ng d&acirc;n chọn l&agrave;m hướng đi cho m&igrave;nh. Ảnh: b&aacute;o D&Acirc;N VIỆT&nbsp;&nbsp;</p>\r\n\r\n<p>Nhờ ứng dụng c&ocirc;ng nghệ IoT v&agrave; đưa ph&acirc;n b&oacute;n nano silic v&agrave;o sản xuất, qu&aacute; tr&igrave;nh sản xuất đ&atilde; giảm cả về lượng ph&acirc;n, nước tưới v&agrave; sức lao động... nhưng lại cho sản phẩm chất lượng tốt. &ldquo;Dữ liệu do c&aacute;c cảm biến to&agrave;n bộ khu vườn sẽ được thu thập, đưa về bộ xử l&yacute; tập trung để ph&acirc;n t&iacute;ch v&agrave; đưa ra c&aacute;c lệnh điều khiển tại chỗ m&agrave; kh&ocirc;ng cần chờ hệ thống m&aacute;y chủ. Nhờ đ&oacute;, giảm đ&aacute;ng kể thời gian trễ khi điều khiển c&aacute;c hệ thống tưới, điều h&ograve;a kh&ocirc;ng kh&iacute;, đ&oacute;ng-mở...&rdquo;, chị Dung t&acirc;m đắc.</p>\r\n\r\n<p>Điểm th&uacute; vị, cơ chế n&agrave;y cho ph&eacute;p hệ thống vẫn hoạt động b&igrave;nh thường ngay cả khi kh&ocirc;ng c&oacute; kết nối internet đến hệ thống m&aacute;y chủ. Nhờ đ&oacute; người n&ocirc;ng d&acirc;n vận c&oacute; thể thao t&aacute;c ngay tại c&aacute;c tủ điều khiển cũng như ngồi tr&ecirc;n &ocirc;-t&ocirc; sử dụng điện thoại di động để kiểm tra, gi&aacute;m s&aacute;t mọi hoạt động sản xuất v&agrave; đưa ra c&aacute;c quyết định cần thiết mọi l&uacute;c, mọi nơi. Tất cả c&aacute;c quy tr&igrave;nh từ l&agrave;m ph&acirc;n, tưới nước tới chăm s&oacute;c &ldquo;sức khỏe&rdquo;, ph&aacute;t triển c&acirc;y đều c&oacute; m&aacute;y t&iacute;nh ghi lại v&agrave; thực hiện quản l&yacute;, vận h&agrave;nh tr&ecirc;n smartphone.&nbsp;</p>\r\n\r\n<p>Theo chị Dung chia sẻ, trước đ&acirc;y phải thu&ecirc; tới 40 người l&agrave;m, nhưng giờ chỉ cần 10 người đ&atilde; c&oacute; thể điều h&agrave;nh v&agrave; l&agrave;m được mọi việc từ xa, điều khiển to&agrave;n bộ n&ocirc;ng trại. C&ocirc;ng việc thu hoạch n&ocirc;ng sản sau khi &aacute;p dụng hệ thống &ldquo;c&ocirc;ng nghệ k&eacute;p&rdquo; cũng đạt hiệu quả bất ngờ khi năng suất tăng từ 130% trở l&ecirc;n v&agrave; chất lượng sản phẩm sạch, an to&agrave;n v&igrave; kh&ocirc;ng sử dụng ph&acirc;n b&oacute;n h&oacute;a học, thuốc bảo quản.</p>\r\n\r\n<p>Hiện n&ocirc;ng trại rau, củ quả của C&ocirc;ng ty CP Đầu tư c&ocirc;ng nghệ Xanh được duy tr&igrave; sản xuất ổn định tr&ecirc;n diện t&iacute;ch hơn 10 ha, với m&ocirc; h&igrave;nh canh t&aacute;c trong nh&agrave; lưới v&agrave; cho sản lượng h&agrave;ng trăm tấn/năm. T&iacute;nh ri&ecirc;ng năm 2020, mặc d&ugrave; bị ảnh hưởng dịch Covid-19, nhưng c&ocirc;ng ty vẫn đạt doanh thu b&igrave;nh qu&acirc;n khoảng gần 20 tỷ đồng, tạo việc l&agrave;m cho gần 100 lao động địa phương, với mức lương khoảng 4,5 triệu đồng/người/th&aacute;ng.</p>\r\n\r\n<p><strong>T</strong>ừ những th&agrave;nh c&ocirc;ng vượt trội của m&ocirc; h&igrave;nh n&ocirc;ng trại ứng dụng &ldquo;c&ocirc;ng nghệ k&eacute;p&rdquo; của chị Dung, nhiều hộ n&ocirc;ng d&acirc;n tr&ecirc;n địa b&agrave;n đ&atilde; t&igrave;m đến học tập, v&agrave; nhận rộng. Theo B&iacute; thư Đảng ủy x&atilde; Kh&aacute;nh Cư Nguyễn Văn Nghị, ứng dụng c&ocirc;ng nghệ cao v&agrave;o canh t&aacute;c vừa gi&uacute;p người n&ocirc;ng d&acirc;n &ldquo;sạch sẽ về ch&acirc;n tay, giảm đổ mồ h&ocirc;i tr&ecirc;n đồng ruộng&rdquo;, vừa tăng thu nhập... Nhờ đ&oacute;, phong tr&agrave;o l&agrave;m gi&agrave;u với phương ch&acirc;m &ldquo;hộ gi&uacute;p hộ, d&acirc;n gi&uacute;p d&acirc;n&rdquo; từng bước được nh&acirc;n rộng, đ&uacute;ng như tinh thần Nghị quyết của địa phương đề ra.&nbsp;</p>\r\n\r\n<p><img src=\"https://nhandan.vn/Files/Images/2020/06/logom.png\" /></p>\r\n\r\n<p><em><strong>Ng&agrave;y xuất bản: 9/8/2021</strong></em></p>\r\n\r\n<p><strong>Thực hiện: L&Ecirc; HƯƠNG TR&Agrave;&nbsp;- THS HO&Agrave;NG MẠNH THẮNG&nbsp;- VĂN BẢO</strong></p>\r\n\r\n<p><strong>Tr&igrave;nh b&agrave;y: ĐỨC DUY&nbsp;</strong></p>', 'cong nghiep 4.0', 'cong nghiep 4.0', 1, '48.jpg', 1);
INSERT INTO `tbl_posts` (`post_id`, `post_title`, `post_slug`, `post_desc`, `post_content`, `post_meta_desc`, `post_meta_keywords`, `post_status`, `post_image`, `cate_post_id`) VALUES
(13, 'Nhóm thanh niên làm nông nghiệp kết hợp du lịch kiểu Israel', 'nhom-thanh-nien-lam-nong-nghiep', '<p>KH&Aacute;NH H&Ograve;A - Nh&oacute;m thanh ni&ecirc;n 9X đều tốt nghiệp đại học nhưng kh&ocirc;ng chuy&ecirc;n ng&agrave;nh về n&ocirc;ng nghiệp, song c&oacute; điểm chung là đam m&ecirc; n&ocirc;ng nghiệp v&agrave; c&oacute; thời gian tu nghiệp sinh tại Israel.</p>', '<h3>K&ecirc;́t hợp n&ocirc;ng nghi&ecirc;̣p và du lịch</h3>\r\n\r\n<p>Những ng&agrave;y th&aacute;ng 4 n&agrave;y, ch&uacute;ng t&ocirc;i c&oacute; dịp gh&eacute; thăm The Moshav Farm, một&nbsp;<a href=\"https://nongsanviet.nongnghiep.vn/nong-trai-tag130995/\" rel=\"follow noopener\" target=\"_blank\">n&ocirc;ng trại</a>&nbsp;nằm ở thung lũng Suối Mơ, x&atilde; Ninh Thượng, Thị xã Ninh H&ograve;a, c&aacute;ch trung t&acirc;m TP Nha Trang (Kh&aacute;nh H&ograve;a) hơn 50km về hướng bắc.</p>\r\n\r\n<p><img alt=\"The Moshav Farm ở xã Ninh Thượng, Thị xã Ninh Hòa (Khánh Hòa). Ảnh: KS.\" height=\"366\" src=\"https://media.ex-cdn.com/EXP/media.nongnghiep.vn/files/bao_in/2022/04/24/the-moshav-farm-1-1555_20220421_952-133805.jpeg\" width=\"680\" /></p>\r\n\r\n<p>The Moshav Farm ở x&atilde; Ninh Thượng, Thị xã Ninh H&ograve;a (Kh&aacute;nh H&ograve;a). Ảnh:&nbsp;<em>KS.</em></p>\r\n\r\n<p>The Moshav Farm l&agrave; t&ecirc;n đặt theo kiểu Do Th&aacute;i. Moshav l&agrave; từ gốc Do Th&aacute;i, l&agrave; m&ocirc; h&igrave;nh n&ocirc;ng nghiệp ở đất nước Israel, được hiểu như một l&agrave;ng n&ocirc;ng nghiệp c&oacute; rất nhiều n&ocirc;ng trại xung quanh, người d&acirc;n ở đ&oacute; sống nhờ n&ocirc;ng trại. Khu vực đ&oacute; c&oacute; nhiều dịch vụ như cửa h&agrave;ng vật tư n&ocirc;ng nghiệp, shop ph&acirc;n phối c&aacute;c sản phẩm n&ocirc;ng nghiệp v&agrave; c&aacute;c cơ sở gi&aacute;o dục, bệnh viện... rất tiện &iacute;ch.</p>\r\n\r\n<p>Do đ&oacute;, The Moshav Farm ra đời với mong muốn ph&aacute;t triển một m&ocirc; h&igrave;nh dịch vụ n&ocirc;ng nghiệp như vậy. Đ&oacute; l&agrave; chia sẻ của anh Nguyễn T&aacute; Đ&ocirc;ng, người được xem l&agrave; &ldquo;thủ lĩnh&rdquo; của n&ocirc;ng trại n&agrave;y về &yacute; tưởng l&agrave;m n&ocirc;ng nghiệp.</p>\r\n\r\n<p><img alt=\"Anh Nguyễn Tá Đông phụ trách điều hành chung tại nông trại The Moshav Farm. Ảnh: KS.\" height=\"453\" src=\"https://media.ex-cdn.com/EXP/media.nongnghiep.vn/files/bao_in/2022/04/24/the-moshav-farm-6-1555_20220421_3-133806.jpeg\" width=\"680\" /></p>\r\n\r\n<p>Anh Nguyễn T&aacute; Đ&ocirc;ng phụ tr&aacute;ch điều h&agrave;nh chung tại n&ocirc;ng trại&nbsp;The Moshav Farm. Ảnh:&nbsp;<em>KS.</em></p>\r\n\r\n<p>Được th&agrave;nh lập năm 2018, The Moshav Farm c&oacute; 5 th&agrave;nh vi&ecirc;n gồm anh Nguyễn T&aacute; Đ&ocirc;ng (sinh năm 1995, qu&ecirc; Đăk Lăk), Nguyễn Mạnh Tiến (sinh năm 1995, qu&ecirc; Nghệ An); Trương Ho&agrave;ng Nam (sinh năm 1995, qu&ecirc; Đồng Th&aacute;p); Phạm Minh Th&ocirc;ng (sinh năm 1996, qu&ecirc; Bến Tre) v&agrave; V&otilde; Hồng Li&ecirc;m (sinh năm 1973, qu&ecirc; Kh&aacute;nh H&ograve;a) h&ugrave;n vốn đầu tư.</p>\r\n\r\n<p>Nh&oacute;m thanh ni&ecirc;n 9X đều tốt nghiệp đại học nhưng kh&ocirc;ng chuy&ecirc;n ng&agrave;nh về n&ocirc;ng nghiệp, song c&oacute; một điểm chung niềm đam m&ecirc; n&ocirc;ng nghiệp v&agrave; c&oacute; thời gian đi tu nghiệp sinh tại Israel vừa học vừa l&agrave;m ở c&aacute;c n&ocirc;ng trại để &ldquo;tầm sư học đạo&rdquo; c&aacute;ch l&agrave;m n&ocirc;ng nghiệp hiện đại. Từ đ&oacute;, họ đi ngược xu hướng, bỏ phố về n&ocirc;ng th&ocirc;n l&agrave;m n&ocirc;ng nghiệp.</p>\r\n\r\n<p>Bản th&acirc;n Nguy&ecirc;̃n Tá Đ&ocirc;ng vốn l&agrave;m ở một c&ocirc;ng ty chuy&ecirc;n về xuất nhập khẩu với mức thu nhập khoảng 20 triệu đồng/th&aacute;ng nhưng anh bỏ ngang về l&agrave;m n&ocirc;ng nghiệp.</p>\r\n\r\n<p>&ldquo;T&ocirc;i thấy đất nước ch&uacute;ng ta c&oacute; nhiều n&ocirc;ng sản c&oacute; gi&aacute; trị, nhưng số lượng xuất khẩu &iacute;t v&agrave; gi&aacute; trị thấp. Xuất th&acirc;n l&agrave; con nh&agrave; n&ocirc;ng n&ecirc;n bản th&acirc;n t&ocirc;i mong muốn đ&oacute;ng g&oacute;p g&igrave; đ&oacute; để n&acirc;ng cao gi&aacute; trị n&ocirc;ng sản Việt Nam m&igrave;nh&rdquo;, Đ&ocirc;ng chia sẻ v&agrave; cho biết năm 2015, anh đ&atilde; đi tu nghiệp sinh ở Israel hơn 1 năm. Sau đ&oacute; về tiếp tục đi tham quan nhiều n&ocirc;ng trại trong nước v&agrave; c&aacute;c nước như Th&aacute;i Lan, Philippines để so s&aacute;nh giữa c&aacute;i m&igrave;nh học được với c&aacute;ch l&agrave;m thực tế rồi mới bắt tay&nbsp;<a href=\"https://nongsanviet.nongnghiep.vn/khoi-nghiep-tag75807/\" rel=\"follow noopener\" target=\"_blank\">khởi nghiệp</a>.</p>\r\n\r\n<p><img alt=\"Vườn nho trồng tại nông trại sinh trưởng và phát triển tốt, chuẩn bị cho thu hoạch. Ảnh: KS.\" height=\"453\" src=\"https://media.ex-cdn.com/EXP/media.nongnghiep.vn/files/bao_in/2022/04/24/the-moshav-farm-4-1555_20220421_352-133808.jpeg\" title=\"the-moshav-farm-4-1555_20220421_352.jpg\" width=\"680\" /></p>\r\n\r\n<p>Vườn nho trồng tại n&ocirc;ng trại sinh trưởng v&agrave; ph&aacute;t triển tốt, chuẩn bị cho thu hoạch. Ảnh:&nbsp;<em>KS</em>.</p>\r\n\r\n<p>V&agrave;, The Moshav Farm chọn hướng l&agrave;m n&ocirc;ng nghiệp theo hướng hữu cơ kết hợp với du lịch đ&ecirc;̉ khai th&aacute;c hết tiềm năng, hiệu quả của n&ocirc;ng nghiệp giống như đất nước Israel họ đang l&agrave;m. Bởi l&agrave;m n&ocirc;ng nghiệp thuần t&uacute;y th&igrave; gi&aacute; trị khai th&aacute;c lĩnh vực n&agrave;y sẽ kh&ocirc;ng được tối ưu.</p>\r\n\r\n<p>Sau một thời gian d&agrave;i lặn lội nhiều nơi để khảo s&aacute;t t&igrave;m địa điểm, nh&oacute;m thanh ni&ecirc;n 9X đ&atilde; chọn địa bàn xã Ninh Thượng đầu tư v&igrave; nhận thấy nơi đ&acirc;y cơ bản ph&ugrave; hợp, đ&aacute;p ứng c&aacute;c ti&ecirc;u ch&iacute; đưa ra để triển khai n&ocirc;ng trại như: Giao th&ocirc;ng thuận lợi, cơ sở hạ tầng đường, điện 3 pha sẵn c&oacute;, nguồn nước phục vụ sản xuất đầy đủ v&agrave; quỹ đất rộng, gi&aacute; lại rẻ. Từ đ&oacute;, n&ocirc;ng trại c&oacute; thể mở rộng ra c&aacute;c khu liền kề trong tương lai, cũng như kết hợp khai th&aacute;c du lịch theo định hướng.</p>\r\n\r\n<p><img alt=\"Văn phòng làm việc tại nông trại chủ yếu thanh niên trẻ có trình độ cao. Ảnh: KS.\" height=\"453\" src=\"https://media.ex-cdn.com/EXP/media.nongnghiep.vn/files/bao_in/2022/04/24/the-moshav-farm-5-1555_20220421_792-133809.jpeg\" title=\"the-moshav-farm-5-1555_20220421_792.jpg\" width=\"680\" /></p>\r\n\r\n<p>Văn ph&ograve;ng l&agrave;m việc tại n&ocirc;ng trại chủ yếu thanh ni&ecirc;n trẻ có trình đ&ocirc;̣ cao. Ảnh:&nbsp;<em>KS.</em></p>\r\n\r\n<p>Với diện t&iacute;ch ban đầu 10ha được mua lại từ đất trồng m&iacute;a của người d&acirc;n, đến nay The Moshav Farm đ&atilde; mở rộng l&ecirc;n đến 56ha. N&ocirc;ng trại được thiết kế b&agrave;i bản gồm 4 khu trồng trọt, chăn nu&ocirc;i; khu nh&agrave; xưởng, khu văn ph&ograve;ng, khu k&yacute; t&uacute;c x&aacute;. Trong đ&oacute; khu trồng trọt, chăn nu&ocirc;i chiếm phần lớn diện t&iacute;ch đang trồng c&aacute;c loại&nbsp;<a href=\"https://nongsanviet.nongnghiep.vn/cay-an-trai-tag79889/\" rel=\"follow noopener\" target=\"_blank\">c&acirc;y ăn tr&aacute;i</a>&nbsp;như dừa, bưởi, ổi, nho, m&iacute;t, xo&agrave;i,&nbsp;<a href=\"https://nongsanviet.nongnghiep.vn/cay-duoc-lieu-tag79724/\" rel=\"follow noopener\" target=\"_blank\">c&acirc;y dược liệu</a>&nbsp;v&agrave; chăn nu&ocirc;i cừu, hươu, nai v&agrave; đ&agrave; điểu&hellip; Tổng vốn đầu tư n&ocirc;ng trại hiện hơn 50 tỷ đồng.</p>\r\n\r\n<blockquote>\r\n<p>N&ecirc;́u thử nghiệm các giống c&acirc;y trồng, vật nu&ocirc;i ph&ugrave; hợp và hi&ecirc;̣u quả, n&ocirc;ng trại sẽ chuyển giao m&ocirc; h&igrave;nh cho b&agrave; con n&ocirc;ng d&acirc;n. Sau đ&oacute;, lượng n&ocirc;ng sản sau khi thu hoạch n&ocirc;ng trại sẽ thu mua lại cho b&agrave; con với mức gi&aacute; bằng hoặc cao hơn gi&aacute; thị trường. N&ocirc;ng trại đang cố gắng tạo ra sản phẩm c&oacute; gi&aacute; trị v&agrave; l&acirc;́y n&ocirc;ng d&acirc;n l&agrave; mắt x&iacute;ch trong chuỗi sản phẩm của n&ocirc;ng trại trong tương lai gần.</p>\r\n</blockquote>\r\n\r\n<h3>X&acirc;y dựng khách hàng trước khi bán sản ph&acirc;̉m</h3>\r\n\r\n<p>Hi&ecirc;̣n nay, n&ocirc;ng trại đang &aacute;p dụng cơ giới h&oacute;a khá đ&ocirc;̀ng b&ocirc;̣ cho sản xuất. C&aacute;c khu c&acirc;y trồng tại đ&acirc;y được đ&aacute;nh dấu bằng số ri&ecirc;ng biệt để quản l&yacute;, c&ugrave;ng với đ&oacute; là &aacute;p dụng hệ thống tưới tự động nhỏ giọt, phun sương, b&oacute;n ph&acirc;n tự động. Mỗi khu vực được bố tr&iacute; cho từng nh&oacute;m lao đ&ocirc;̣ng, c&oacute; cả kỹ sư trồng trọt,&nbsp;<a href=\"https://nongsanviet.nongnghiep.vn/chan-nuoi-tag30290/\" rel=\"follow noopener\" target=\"_blank\">chăn nu&ocirc;i</a>&nbsp;chăm s&oacute;c, quản l&yacute; c&acirc;y trồng, vật nu&ocirc;i. Tất cả c&ocirc;ng việc hằng ng&agrave;y được b&aacute;o c&aacute;o, theo d&otilde;i tr&ecirc;n phần mềm m&aacute;y t&iacute;nh.</p>\r\n\r\n<p><img alt=\"Từ vùng đất cằn cỗi, The Moshav Farm đã cải tạo, \'hữu cơ hóa\' thành đất đai màu mỡ. Trong đó, dừa là cây trồng chủ lực tại nông trại với diện tích hơn 20ha. Ảnh: KS.\" height=\"453\" src=\"https://media.ex-cdn.com/EXP/media.nongnghiep.vn/files/bao_in/2022/04/24/the-moshav-farm-8-1555_20220421_928-133810.jpeg\" title=\"the-moshav-farm-8-1555_20220421_928.jpg\" width=\"680\" /></p>\r\n\r\n<p>Từ vùng đ&acirc;́t cằn c&ocirc;̃i, The Moshav Farm đã cải tạo, &quot;hữu cơ hóa&quot; thành đ&acirc;́t đai màu mỡ. Trong đó, dừa l&agrave; c&acirc;y trồng chủ lực tại n&ocirc;ng trại với diện t&iacute;ch hơn 20ha. Ảnh:&nbsp;<em>KS.</em></p>\r\n\r\n<p>Theo nh&oacute;m thanh ni&ecirc;n 9X, sau thời gian trồng thử nghiệm, nhiều c&acirc;y trồng đã khẳng định ph&ugrave; hợp với điều kiện kh&iacute; hậu, thổ nhưỡng tại đ&acirc;y. Chẳng hạn như&nbsp;<a href=\"https://nongsanviet.nongnghiep.vn/dua-xiem-tag83715/\" rel=\"follow noopener\" target=\"_blank\">dừa xi&ecirc;m</a>&nbsp;l&ugrave;n, n&ocirc;ng trại đang trồng chủ lực với diện t&iacute;ch hơn 20ha. Ngo&agrave;i dừa, nhiều diện t&iacute;ch đang trồng xo&agrave;i Đ&agrave;i Loan, xoài tứ qu&yacute;, bưởi, cam, m&iacute;t, ổi, chuối v&agrave; nho. Hiện tại, một số c&acirc;y trồng đã cho tr&aacute;i b&oacute;i. Về c&acirc;y dược liệu, n&ocirc;ng trại đang trồng nhi&ecirc;̀u loài như&nbsp;<a href=\"https://nongsanviet.nongnghiep.vn/ca-gai-leo-tag35183/\" rel=\"follow noopener\" target=\"_blank\">c&agrave; gai leo</a>, x&aacute;o tam ph&acirc;n, đinh lăng, sả&hellip;, đ&ecirc;̀u sinh trưởng v&agrave; ph&aacute;t triển tốt v&agrave; cho thu hoạch theo kiểu cuốn chiếu.</p>\r\n\r\n<p>&ldquo;Những ng&agrave;y đầu đến đ&acirc;y đất đai kh&ocirc; cằn, bạc m&agrave;u, tuy nhi&ecirc;n nh&oacute;m đ&atilde; cải tạo đất bằng c&aacute;ch bổ sung h&agrave;ng trăm tấn ph&acirc;n hữu cơ mỗi năm từ nguồn sẵn c&oacute; trong n&ocirc;ng trại v&agrave; tận dụng nguồn rơm rạ của người d&acirc;n, b&atilde; b&ugrave;n m&iacute;a của nh&agrave; m&aacute;y đường với chi ph&iacute; rẻ. N&ocirc;ng trại cũng kh&ocirc;ng sử dụng&nbsp;<a href=\"https://nongsanviet.nongnghiep.vn/thuoc-bvtv-tag72061/\" rel=\"follow noopener\" target=\"_blank\">thuốc BVTV</a>&nbsp;để diệt cỏ, chỉ cắt cỏ c&oacute; kiểm so&aacute;t để giữ độ ẩm cho đất, gi&uacute;p vi sinh vật ph&aacute;t triển&rdquo;, anh Nguy&ecirc;̃n Tá Đ&ocirc;ng chia sẻ.</p>\r\n\r\n<p><img alt=\"Khu trồng cây dược liệu. Ảnh: KS.\" height=\"453\" src=\"https://media.ex-cdn.com/EXP/media.nongnghiep.vn/files/bao_in/2022/04/24/the-moshav-farm-7-1555_20220421_661-133811.jpeg\" title=\"the-moshav-farm-7-1555_20220421_661.jpg\" width=\"680\" /></p>\r\n\r\n<p>Khu trồng c&acirc;y dược liệu. Ảnh:&nbsp;<em>KS.</em></p>\r\n\r\n<p>B&ecirc;n cạnh c&acirc;y trồng, thời gian qua n&ocirc;ng trại đ&atilde; ti&ecirc;n phong nu&ocirc;i cừu v&agrave; nhận thấy rất ph&ugrave; hợp. V&igrave; vậy từ 30 con cừu ban đ&acirc;̀u, đến nay n&ocirc;ng trại đ&atilde; nh&acirc;n l&ecirc;n đến 100 con. Ngo&agrave;i ra tại đ&acirc;y cũng đang nu&ocirc;i hươu, nai, đ&agrave; điểu v&agrave; sắp tới sẽ nu&ocirc;i th&ecirc;m ngựa để phục vụ du lịch trong thời gian tới.</p>\r\n\r\n<p>The Moshav Farm hiện c&ograve;n trong giai đoạn &quot;lấy ngắn nu&ocirc;i d&agrave;i&quot; v&igrave; mới h&igrave;nh th&agrave;nh trong 3 năm. Tuy nhi&ecirc;n thời gian qua, bước đầu n&ocirc;ng trại đ&atilde; cho ra thị trường 10 d&ograve;ng sản phẩm chế biến từ c&acirc;y dược liệu v&agrave; c&acirc;y ngắn ng&agrave;y như l&aacute; x&ocirc;ng giải cảm; rượu vang nho, nước rửa tay, bột gừng sấy lạnh, dầu gi&oacute; bạc h&agrave;, mặt nạ b&ugrave;n kho&aacute;ng&hellip; Một số sản phẩm ngo&agrave;i được sản xuất tại chỗ, n&ocirc;ng trại c&ograve;n li&ecirc;n kết với nhiều nh&agrave; m&aacute;y chế biến để tối ưu quy tr&igrave;nh sản xuất.</p>\r\n\r\n<p>Ban đầu, c&aacute;c sản phẩm chủ yếu b&aacute;n lẻ, hi&ecirc;̣n đã được ph&acirc;n phối hơn 400 đại l&yacute; tr&ecirc;n to&agrave;n quốc, hầu như tỉnh n&agrave;o cũng c&oacute;, với tổng doanh thu 1 tỷ đồng/th&aacute;ng.</p>\r\n\r\n<p><img alt=\"Hiện nông trại đã cho ra đời 10 sản phẩm chế biến từ cây dược liệu và cây ngắn ngày. Ảnh: KS.\" height=\"510\" src=\"https://media.ex-cdn.com/EXP/media.nongnghiep.vn/files/bao_in/2022/04/24/the-moshav-farm-2-1555_20220421_325-133813.jpeg\" title=\"the-moshav-farm-2-1555_20220421_325.jpg\" width=\"680\" /></p>\r\n\r\n<p>Hiện n&ocirc;ng trại đ&atilde; cho ra đời 10 sản phẩm chế biến từ c&acirc;y dược liệu v&agrave; c&acirc;y ngắn ng&agrave;y. Ảnh:&nbsp;<em>KS.</em></p>\r\n\r\n<p>Chia sẻ về c&aacute;ch b&aacute;n sản phẩm của n&ocirc;ng trại, anh Nguyễn T&aacute; Đ&ocirc;ng cho biết: &ldquo;L&acirc;u nay, tư duy sản xuất th&ocirc;ng thường l&agrave; l&agrave;m ra sản phẩm rồi mới đi t&igrave;m đầu ra. Nh&oacute;m Đ&ocirc;ng l&agrave;m ngược lại, đi ch&agrave;o sản phẩm trước. Ch&uacute;ng t&ocirc;i l&agrave;m truyền th&ocirc;ng ngay từ đầu, trong qu&aacute; tr&igrave;nh l&agrave;m ra sản ph&acirc;̉m thế n&agrave;o th&igrave; l&agrave;m truyền th&ocirc;ng đến đ&oacute;. Vì v&acirc;̣y, trước khi ra mắt sản phẩm, mọi người đ&atilde; biết đến n&ecirc;n việc bu&ocirc;n b&aacute;n từ đ&oacute; diễn ra dễ d&agrave;ng hơn. Tuy nhi&ecirc;n, ch&iacute;nh chất lượng sản phẩm của n&ocirc;ng trại mới quyết định đầu ra bền vững&rdquo;.</p>\r\n\r\n<p>Được biết,&nbsp;<a href=\"https://nongsanviet.nongnghiep.vn/the-moshav-farm-tag151617/\" rel=\"follow noopener\" target=\"_blank\">The Moshav Farm</a>&nbsp;hiện c&oacute; 34 lao đ&ocirc;̣ng, chủ yếu thanh ni&ecirc;n trẻ có trình đ&ocirc;̣, được đào tạo b&agrave;i bản v&agrave; 10 nh&acirc;n c&ocirc;ng lao động địa phương. B&ecirc;n cạnh đ&oacute;, h&agrave;ng năm n&ocirc;ng trại c&ograve;n tiếp nhận h&agrave;ng chục thực tập sinh đến học c&aacute;ch l&agrave;m n&ocirc;ng nghiệp hiện đại.</p>\r\n\r\n<blockquote>\r\n<p>Theo anh Nguyễn T&aacute; Đ&ocirc;ng, thời gian đầu, vi&ecirc;̣c tuy&ecirc;̉n nh&acirc;n sự có trình đ&ocirc;̣ cao cho n&ocirc;ng trại rất kh&oacute; v&igrave; hầu hết ai cũng ở lại th&agrave;nh phố l&agrave;m việc. V&igrave; vậy, n&ocirc;ng trại chỉ c&oacute; 5 người l&agrave;m việc cả ng&agrave;y lẫn đ&ecirc;m.</p>\r\n\r\n<p>Để giải quyết về nh&acirc;n sự, nh&oacute;m l&ecirc;n &yacute; tưởng x&acirc;y dựng chương tr&igrave;nh thực tập sinh th&ocirc;ng qua việc kết nối n&ocirc;ng trại với c&aacute;c trường đại học, tạo điều kiện cho sinh vi&ecirc;n năm cuối c&oacute; cơ hội trải nghiệm c&aacute;ch l&agrave;m n&ocirc;ng nghiệp theo hướng hiện đại. Từ c&aacute;c bạn sinh viện n&agrave;y, nh&oacute;m biết năng lực từng người và sẽ mời ở lại l&agrave;m việc sau khi tốt nghiệp. Do đ&oacute;, hiện nguồn nh&acirc;n sự của n&ocirc;ng trại đ&atilde; có nhiều bạn trẻ c&oacute; năng lực ở nhiều lĩnh vực.</p>\r\n\r\n<p>Về đầu tư v&agrave;o n&ocirc;ng nghiệp, Nguy&ecirc;̃n Tá Đ&ocirc;ng x&aacute;c định phải l&agrave; b&agrave;i to&aacute;n l&acirc;u d&agrave;i, c&oacute; thể 5 - 7 năm hoặc l&acirc;u hơn nữa. Vì v&acirc;̣y, với số vốn ban đầu của nh&oacute;m kh&ocirc;ng lớn, trong qu&aacute; tr&igrave;nh hoạt đ&ocirc;̣ng, nhóm c&ograve;n k&ecirc;u gọi nhiều nh&agrave; đầu tư b&ecirc;n ngo&agrave;i v&agrave; vay vốn ng&acirc;n h&agrave;ng để thực hiện.</p>\r\n</blockquote>\r\n\r\n<p>Kim Sơ</p>', 'nông nghiệp, israel', 'nông nghiệp, israel', 1, '63.jfif', 1),
(14, 'Tỉnh Hòa Bình phát triển nông nghiệp sạch', 'tinh-hoa-binh-phat-trien-nong-nghiep-sach', '<p>Tỉnh H&ograve;a B&igrave;nh hiện c&oacute; hơn 4.000ha c&acirc;y trồng (gồm 3.373ha c&acirc;y ăn quả c&oacute; m&uacute;i, 561ha rau an to&agrave;n c&aacute;c loại v&agrave; 152ha c&acirc;y trồng kh&aacute;c) đủ điều kiện chứng nhận an to&agrave;n thực phẩm, đạt ti&ecirc;u chuẩn VietGAP, hữu cơ, đem lại hiệu quả kinh tế cao cho n&ocirc;ng d&acirc;n.</p>', '<p>Trong đ&oacute;, huyện Lương Sơn nổi tiếng với c&aacute;c sản phẩm rau hữu cơ, được người ti&ecirc;u d&ugrave;ng đ&oacute;n nhận. To&agrave;n huyện hiện c&oacute; hơn 12ha trồng rau được cấp chứng nhận hữu cơ với sản lượng 80-100 tấn/năm, gi&aacute; b&aacute;n theo hợp đồng k&yacute; kết với c&aacute;c đơn vị ti&ecirc;u thụ khoảng 20.000 đồng/kg. Năm 2022 v&agrave; 2023, huyện Lương Sơn dự kiến sản xuất n&ocirc;ng nghiệp hữu cơ với quy m&ocirc; 22ha; sản xuất rau an to&agrave;n, VietGAP quy m&ocirc; 15,5ha.</p>\r\n\r\n<table align=\"center\" border=\"0\" id=\"1a3188ff-4a66-4508-b25a-0038d8763f6a\">\r\n	<tbody>\r\n		<tr>\r\n		</tr>\r\n		<tr>\r\n			<td><img alt=\"Tỉnh Hòa Bình phát triển nông nghiệp sạch\" src=\"https://file3.qdnd.vn/data/images/0/2022/05/06/thuthuytv/hoabinh.jpeg?dpi=150&amp;quality=100&amp;w=870\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Nhờ trồng bưởi, dong, c&acirc;y thảo dược theo ti&ecirc;u chuẩn an to&agrave;n n&ecirc;n mỗi năm gia đ&igrave;nh &ocirc;ng Đỗ Văn Chiến ở TP H&ograve;a B&igrave;nh thu nhập gần một tỷ đồng.&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Những năm qua, ng&agrave;nh n&ocirc;ng nghiệp tỉnh<a href=\"https://www.qdnd.vn/tag/tinh-hoa-binh-660.html\">&nbsp;H&ograve;a B&igrave;nh</a>&nbsp;cũng x&acirc;y dựng được nhiều m&ocirc; h&igrave;nh sản xuất n&ocirc;ng nghiệp sạch theo ti&ecirc;u chuẩn VietGAP, hữu cơ vừa đem lại hiệu quả kinh tế cao, vừa g&oacute;p phần bảo vệ m&ocirc;i trường sống. C&oacute; thể kể đến m&ocirc; h&igrave;nh chuy&ecirc;n sản xuất c&agrave; chua của C&ocirc;ng ty TNHH Skyfarm tại huyện Lương Sơn; trồng dưa lưới của C&ocirc;ng ty Cổ phần Đầu tư n&ocirc;ng nghiệp c&ocirc;ng nghệ cao Trường Thịnh, m&ocirc; h&igrave;nh li&ecirc;n kết sản xuất rau an to&agrave;n của Hợp t&aacute;c x&atilde; (HTX) Dịch vụ n&ocirc;ng nghiệp xanh Hiếu Thịnh ở huyện Lạc Sơn...</p>\r\n\r\n<p>Anh Trần Văn T&uacute;, Ph&oacute; gi&aacute;m đốc HTX Chế biến n&ocirc;ng sản Ph&uacute; Cường-S&ocirc;ng Đ&agrave; ở TP H&ograve;a B&igrave;nh chia sẻ: &ldquo;To&agrave;n bộ 25ha chuối của HTX được trồng theo ti&ecirc;u chuẩn VietGAP. Năm vừa qua, d&ugrave; gặp nhiều kh&oacute; khăn nhưng sản phẩm của HTX vẫn xuất khẩu ch&iacute;nh ngạch sang thị trường Trung Quốc; được UBND tỉnh c&ocirc;ng nhận đạt ti&ecirc;u chuẩn OCOP 3 sao cấp tỉnh&rdquo;.&nbsp;Trao đổi với ch&uacute;ng t&ocirc;i, đồng ch&iacute; Nguyễn Huy Nhuận, Gi&aacute;m đốc Sở N&ocirc;ng nghiệp v&agrave; Ph&aacute;t triển n&ocirc;ng th&ocirc;n tỉnh H&ograve;a B&igrave;nh cho biết, ng&agrave;nh n&ocirc;ng nghiệp tỉnh đang tập trung x&acirc;y dựng v&ugrave;ng sản xuất n&ocirc;ng sản sạch, an to&agrave;n, ứng dụng c&ocirc;ng nghệ cao để phục vụ xuất khẩu.</p>\r\n\r\n<p>Hết năm 2021, tỉnh đ&atilde; cấp được 14 m&atilde; số v&ugrave;ng trồng cho hơn 200ha chuối, thanh long, nh&atilde;n, bưởi diễn v&agrave; 7 m&atilde; số cơ sở đ&oacute;ng g&oacute;i. Vừa qua, tỉnh H&ograve;a B&igrave;nh đ&atilde; xuất khẩu ch&iacute;nh ngạch 1.326 tấn&nbsp;sản phẩm sang thị trường Trung Quốc, Nhật Bản v&agrave; ch&acirc;u &Acirc;u (H&agrave; Lan, CH S&eacute;c, Đức...). C&aacute;c sản phẩm n&ocirc;ng nghiệp như: Chuối, ch&egrave;, măng, m&iacute;a... được ti&ecirc;u thụ ở nhiều địa phương trong cả nước. Đ&acirc;y l&agrave; kết quả của việc ứng dụng c&ocirc;ng nghệ cao v&agrave;o sản xuất n&ocirc;ng nghiệp theo quy tr&igrave;nh VietGAP, hữu cơ.</p>\r\n\r\n<p><strong>B&agrave;i v&agrave; ảnh:&nbsp;H&Agrave; HO&Agrave;NG</strong></p>', 'Hòa Bình, nông nghiệp, giống cây trồng, hoa quả, vietgap', 'Hòa Bình, nông nghiệp sạch', 1, '93.jpeg', 3),
(15, 'Loại trái cây nổi tiếng nào của Sơn La đang trưng bày tại Festival trái cây và sản phẩm OCOP Việt Nam năm 2022?', 'loai-trai-cay-noi-tieng-nao-cua-son-la-dang-trung-bay-tai-festival-trai-cay', '<p>Tại Festival tr&aacute;i c&acirc;y v&agrave; sản phẩm OCOP Việt Nam năm 2022, nhiều loại tr&aacute;i c&acirc;y đặc sản của c&aacute;c huyện, th&agrave;nh phố tr&ecirc;n địa b&agrave;n tỉnh Sơn La được mang tới trưng b&agrave;y giới thiệu thu h&uacute;t du kh&aacute;ch tới trải nghiệm v&agrave; hỏi mua.</p>', '<p>Tr&ograve; chuyện với ph&oacute;ng vi&ecirc;n D&acirc;n việt, chị Phạm Thị Thanh Hường - Chuy&ecirc;n vi&ecirc;n ph&ograve;ng NNPTNT huyện Thuận Ch&acirc;u, cho hay: Đến với sự kiện Festival tr&aacute;i c&acirc;y v&agrave; sản phẩm OCOP Việt Nam năm 2022, gian h&agrave;ng huyện Thuận Ch&acirc;u mang đến 2 sản phẩm chủ lực của huyện l&agrave; xo&agrave;i Đ&agrave;i Loan v&agrave; Thanh long.&nbsp;</p>\r\n\r\n<p>Theo đ&oacute;, Sơn La c&oacute; hai sản phẩm đ&atilde; được cấp chứng nhận m&atilde; số v&ugrave;ng trồng v&agrave; đ&atilde; xuất ra nước ngo&agrave;i. Gian h&agrave;ng c&ograve;n trưng b&agrave;y chanh leo v&agrave; mắc ca.&nbsp;</p>\r\n\r\n<p>Chanh leo hiện nay đ&atilde; được cấp chứng nhận VietGap. Đối với Mắc ca, hiện nay, huyện Thuận Ch&acirc;u đang trồng thử nghiệm với hơn 300ha, trong đ&oacute; c&oacute; 100ha đang cho thu hoạch tại sản phẩm tại Mường &Eacute;, Phỏng L&aacute;i, Chiềng Pha, P&uacute;ng Tra, Chiềng La.&nbsp;</p>\r\n\r\n<p>&quot;Thời gian tới, huyện Thuận Ch&acirc;u sẽ ph&aacute;t triển th&ecirc;m 500ha nữa. Hiện tại đ&atilde; c&oacute; nhiều đơn vị, c&ocirc;ng ty, tập đo&agrave;n mắc ca đ&atilde; l&ecirc;n khảo s&aacute;t c&oacute; định hướng ph&aacute;t triển mắc ca tr&ecirc;n địa b&agrave;n huyện Thuận Ch&acirc;u...&quot; chị Hường cho hay.</p>\r\n\r\n<p><a href=\"https://danviet.mediacdn.vn/296231569849192448/2022/5/31/anh-trai-cay-son-la-2-16539936374752146920102-1653994420789635822091.jpeg\" title=\"Huyện Thuận Châu (tỉnh Sơn La) mang đến 2 sản phẩm trái cây chủ lực của huyện là xoài Đài Loan và thanh long. (Ảnh: Phạm Hoài)\"><img alt=\"Sơn La có những loại trái cây nổi tiếng nào trưng bày tại Festival trái cây và sản phẩm OCOP Việt Nam năm 2022 - Ảnh 1.\" height=\"\" src=\"https://danviet.mediacdn.vn/296231569849192448/2022/5/31/anh-trai-cay-son-la-2-16539936374752146920102-1653994420789635822091.jpeg\" title=\"Sơn La có những loại trái cây nổi tiếng nào trưng bày tại Festival trái cây và sản phẩm OCOP Việt Nam năm 2022 - Ảnh 1.\" width=\"\" /></a></p>\r\n\r\n<p>Huyện Thuận Ch&acirc;u (tỉnh Sơn La) mang đến 2 sản phẩm tr&aacute;i c&acirc;y chủ lực của huyện l&agrave; xo&agrave;i Đ&agrave;i Loan v&agrave; thanh long. (Ảnh: Phạm Ho&agrave;i)</p>\r\n\r\n<p><a href=\"https://danviet.mediacdn.vn/296231569849192448/2022/5/31/anh-00-1653992957658294093487-1653994420832948952726.jpeg\" title=\"Bên cạnh đó, huyện Thuận Châu cũng mang đến Festival trái cây và sản phẩm OCOP Việt Nam năm 2022 quả mắc ca nhằm giới thiệu cho du khách. (Ảnh: Phạm Hoài)\"><img alt=\"Sơn La có những loại trái cây nổi tiếng nào trưng bày tại Festival trái cây và sản phẩm OCOP Việt Nam năm 2022 - Ảnh 2.\" height=\"\" src=\"https://danviet.mediacdn.vn/296231569849192448/2022/5/31/anh-00-1653992957658294093487-1653994420832948952726.jpeg\" title=\"Sơn La có những loại trái cây nổi tiếng nào trưng bày tại Festival trái cây và sản phẩm OCOP Việt Nam năm 2022 - Ảnh 2.\" width=\"\" /></a></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, huyện Thuận Ch&acirc;u cũng mang đến Festival tr&aacute;i c&acirc;y v&agrave; sản phẩm OCOP Việt Nam năm 2022 quả mắc ca nhằm giới thiệu cho du kh&aacute;ch. (Ảnh: Phạm Ho&agrave;i)</p>\r\n\r\n<p>N&oacute;i tới Mộc Ch&acirc;u, nhiều người sẽ nhắc ngay tới mận hậu &ndash; một loại tr&aacute;i c&acirc;y đặc sản của miền thảo nguy&ecirc;n nơi đ&acirc;y. Anh Nguyễn Tiến H&ugrave;ng &ndash; &nbsp;chuy&ecirc;n vi&ecirc;n Trung t&acirc;m kỹ thuật N&ocirc;ng nghiệp huyện Mộc Ch&acirc;u, chia sẻ: Mộc Ch&acirc;u (Sơn La) được xem l&agrave; vựa mận lớn nhất cả nước, mận được trồng nhiều ở khu vực thị trấn N&ocirc;ng trường v&agrave; x&atilde; T&acirc;n Lập. Mận hậu Mộc Ch&acirc;u hiện nay đ&atilde; cấp giấy chứng nhận m&atilde; số v&ugrave;ng trồng.&nbsp;</p>\r\n\r\n<p>Đến với sự kiện n&agrave;y, ch&uacute;ng t&ocirc;i muốn quảng b&aacute; thương hiệu mận hậu Mộc Ch&acirc;u trong l&ograve;ng du kh&aacute;ch. Đồng thời, mong muốn kết nối được nhiều đơn vị gi&uacute;p thu mua mận cho Hợp t&aacute;c x&atilde;, người d&acirc;n tr&ecirc;n địa b&agrave;n.</p>\r\n\r\n<p><a href=\"https://danviet.mediacdn.vn/296231569849192448/2022/5/31/anh-trai-cay-son-la-1-1653992984907599028457-16539944208661979676662.jpeg\" title=\"Mận hậu Mộc Châu quả to, mọng, ăn có vị ngọt đậm pha ít chua khi đã chín. (Ảnh: Phạm Hoài)\"><img alt=\"Sơn La có những loại trái cây nổi tiếng nào trưng bày tại Festival trái cây và sản phẩm OCOP Việt Nam năm 2022 - Ảnh 3.\" height=\"\" src=\"https://danviet.mediacdn.vn/296231569849192448/2022/5/31/anh-trai-cay-son-la-1-1653992984907599028457-16539944208661979676662.jpeg\" title=\"Sơn La có những loại trái cây nổi tiếng nào trưng bày tại Festival trái cây và sản phẩm OCOP Việt Nam năm 2022 - Ảnh 3.\" width=\"\" /></a></p>\r\n\r\n<p>Mận hậu Mộc Ch&acirc;u quả to, mọng, ăn c&oacute; vị ngọt đậm pha &iacute;t chua khi đ&atilde; ch&iacute;n. (Ảnh: Phạm Ho&agrave;i)</p>\r\n\r\n<p>Đến với gian h&agrave;ng của huyện S&ocirc;ng M&atilde;, du kh&aacute;ch thu h&uacute;t bởi những quả nh&atilde;n b&oacute;ng mẩy, v&agrave;ng s&aacute;ng. Vừa giới thiệu cho du kh&aacute;ch về tr&aacute;i nh&atilde;n của địa phương, vừa tr&ograve; chuyện với ph&oacute;ng vi&ecirc;n, chị Lường Thị Lợi - chuy&ecirc;n vi&ecirc;n Ph&ograve;ng N&ocirc;ng nghiệp v&agrave; PTNT huyện S&ocirc;ng M&atilde; cho hay: huyện S&ocirc;ng M&atilde; hiện nay&nbsp; c&oacute; hơn 7.400ha diện t&iacute;ch trồng nh&atilde;n, c&oacute; diện t&iacute;ch nhiều nhất tỉnh Sơn La. Nh&atilde;n S&ocirc;ng M&atilde; c&oacute; n&eacute;t &oacute; đặc trưng ri&ecirc;ng về mẫu m&atilde;, hương vị. Nh&atilde;n S&ocirc;ng M&atilde; được cấp m&atilde; v&ugrave;ng trồng v&agrave; xuất khẩu đi c&aacute;c nước Ch&acirc;u &Acirc;u (&Uacute;c, Mỹ..), Trung Quốc. Đến với sự kiện n&agrave;y t&ocirc;i muốn quảng b&aacute; thương hiệu nh&atilde;n S&ocirc;ng M&atilde; tới tất cả du kh&aacute;ch trong v&agrave; ngo&agrave;i nước.</p>\r\n\r\n<p><a href=\"https://danviet.mediacdn.vn/296231569849192448/2022/5/31/anh-trai-cay-son-la-3-165399300737923726927-16539944209041682869359.jpeg\" title=\"Nhãn Sông Mã có nét ó đặc trưng riêng về mẫu mã, hương vị. (Ảnh: Phạm Hoài)\"><img alt=\"Sơn La có những loại trái cây nổi tiếng nào trưng bày tại Festival trái cây và sản phẩm OCOP Việt Nam năm 2022 - Ảnh 4.\" height=\"\" src=\"https://danviet.mediacdn.vn/296231569849192448/2022/5/31/anh-trai-cay-son-la-3-165399300737923726927-16539944209041682869359.jpeg\" title=\"Sơn La có những loại trái cây nổi tiếng nào trưng bày tại Festival trái cây và sản phẩm OCOP Việt Nam năm 2022 - Ảnh 4.\" width=\"\" /></a></p>\r\n\r\n<p>Nh&atilde;n S&ocirc;ng M&atilde; c&oacute; n&eacute;t &oacute; đặc trưng ri&ecirc;ng về mẫu m&atilde;, hương vị. (Ảnh: Phạm Ho&agrave;i)</p>\r\n\r\n<p>Chị L&ograve; Thị Thủy - Gi&aacute;m đốc Hợp t&aacute;c x&atilde; Đo&agrave;n Kết (x&atilde; Mường B&uacute;, huyện Mường La), cho biết: T&ocirc;i mang đến gian h&agrave;ng huyện Mường La 3 loại xo&agrave;i l&agrave;: xo&agrave;i &Uacute;c; xo&agrave;i GL4; xo&agrave;i địa phương. Hiện nay, Hợp t&aacute;c x&atilde; c&oacute; 15ha xo&agrave;i, trong đ&oacute; c&oacute; 5 ha xo&agrave;i &Uacute;c v&agrave; 10 ha GL4. Xo&agrave;i GL4 xuất khẩu của Hợp t&aacute;c x&atilde; &nbsp;ch&uacute;ng t&ocirc;i đ&atilde; được xuất khẩu sang thị trường Trung Quốc, &Uacute;c. Th&ocirc;ng qua sự kiện n&agrave;y, t&ocirc;i cũng mong muốn nhiều kh&aacute;ch h&agrave;ng trong v&agrave; ngo&agrave;i tỉnh biết đến xo&agrave;i của Hợp t&aacute;c x&atilde; ch&uacute;ng t&ocirc;i, từ đ&oacute;, n&acirc;ng cao thương hiệu xo&agrave;i Mường La trong mắt người ti&ecirc;u d&ugrave;ng cả nước.</p>\r\n\r\n<p><a href=\"https://danviet.mediacdn.vn/296231569849192448/2022/5/31/anh-trai-cay-son-la-4-1653993040941619626874-1653994420945916316571.jpeg\" title=\"Xoài GL4 và xoài Úc của huyên Mường La được chị Lò Thị Thủy - Giám đốc Hợp tác xã Đoàn Kết mang tới giới thiệu tại Festival trái cây và sản phẩm OCOP Việt Nam năm 2022. (Ảnh: Phạm Hoài)\"><img alt=\"Sơn La có những loại trái cây nổi tiếng nào trưng bày tại Festival trái cây và sản phẩm OCOP Việt Nam năm 2022 - Ảnh 5.\" height=\"\" src=\"https://danviet.mediacdn.vn/296231569849192448/2022/5/31/anh-trai-cay-son-la-4-1653993040941619626874-1653994420945916316571.jpeg\" title=\"Sơn La có những loại trái cây nổi tiếng nào trưng bày tại Festival trái cây và sản phẩm OCOP Việt Nam năm 2022 - Ảnh 5.\" width=\"\" /></a></p>\r\n\r\n<p>Xo&agrave;i GL4 v&agrave; xo&agrave;i &Uacute;c của huy&ecirc;n Mường La được chị L&ograve; Thị Thủy - Gi&aacute;m đốc Hợp t&aacute;c x&atilde; Đo&agrave;n Kết mang tới giới thiệu tại Festival tr&aacute;i c&acirc;y v&agrave; sản phẩm OCOP Việt Nam năm 2022. (Ảnh: Phạm Ho&agrave;i)</p>\r\n\r\n<p>Tới gian h&agrave;ng huyện Y&ecirc;n Ch&acirc;u, ch&uacute;ng t&ocirc;i bắt gặp chị Lường Thị Thức - Vi&ecirc;n chức Trung t&acirc;m Dịch vụ N&ocirc;ng nghiệp huyện Y&ecirc;n Ch&acirc;u đang chăm ch&uacute; b&agrave;y biện lại những quả xo&agrave;i cho gian h&agrave;ng của m&igrave;nh.&nbsp;</p>\r\n\r\n<p>Chị Thức chia sẻ: &nbsp;huyện Y&ecirc;n Ch&acirc;u c&oacute; 10.847 ha diện t&iacute;ch c&acirc;y ăn quả trong đ&oacute; xo&agrave;i c&oacute; diện t&iacute;ch hơn 3.000 ha. Huyện Y&ecirc;n Ch&acirc;u c&oacute; hai loại xo&agrave;i ch&iacute;nh l&agrave; xo&agrave;i tr&ograve;n v&agrave; xo&agrave;i h&ocirc;i. Xo&agrave;i tr&ograve;n nổi tiếng với hương vị đặc trưng thơm ngọt đậm đ&agrave;, vỏ xanh v&agrave;ng, chỉ Y&ecirc;n Ch&acirc;u mới c&oacute;, đ&atilde; được Cục Sở hữu tr&iacute; tuệ cấp Giấy chứng nhận đăng k&yacute; chỉ dẫn địa l&yacute; v&agrave; hệ thống nhận diện thương hiệu.&nbsp;</p>\r\n\r\n<p>C&ugrave;ng với đ&oacute;, Y&ecirc;n Ch&acirc;u c&ograve;n c&oacute; xo&agrave;i tượng da xanh thơm ngon, tươi l&acirc;u, c&oacute; thể chế biến được th&agrave;nh nhiều m&oacute;n ăn kh&aacute;c nhau v&agrave; đ&atilde; được cấp m&atilde; số v&ugrave;ng trồng, xuất khẩu sang Australia.&nbsp;</p>\r\n\r\n<p><a href=\"https://danviet.mediacdn.vn/296231569849192448/2022/5/31/anh-trai-cay-son-la-6-1653993257586911459133-16539944209861789324248.jpeg\" title=\"Xoài tròn và xoài Tượng của huyên Yên Châu được trưng bày tại Festival trái cây và sản phẩm OCOP Việt Nam năm 2022. (Ảnh: Phạm Hoài)\"><img alt=\"Sơn La có những loại trái cây nổi tiếng nào trưng bày tại Festival trái cây và sản phẩm OCOP Việt Nam năm 2022 - Ảnh 6.\" height=\"\" src=\"https://danviet.mediacdn.vn/296231569849192448/2022/5/31/anh-trai-cay-son-la-6-1653993257586911459133-16539944209861789324248.jpeg\" title=\"Sơn La có những loại trái cây nổi tiếng nào trưng bày tại Festival trái cây và sản phẩm OCOP Việt Nam năm 2022 - Ảnh 6.\" width=\"\" /></a></p>\r\n\r\n<p>Xo&agrave;i tr&ograve;n v&agrave; xo&agrave;i Tượng của huy&ecirc;n Y&ecirc;n Ch&acirc;u được trưng b&agrave;y tại Festival tr&aacute;i c&acirc;y v&agrave; sản phẩm OCOP Việt Nam năm 2022. (Ảnh: Phạm Ho&agrave;i)</p>\r\n\r\n<p>Festival tr&aacute;i c&acirc;y v&agrave; sản phẩm OCOP Việt Nam năm 2022 l&agrave; cơ hội để c&aacute;c huyện, th&agrave;nh phố tr&ecirc;n địa b&agrave;n tỉnh Sơn La kết nối th&ocirc;ng tin v&agrave; giới thiệu với c&aacute;c bạn h&agrave;ng về c&aacute;c sản phẩm n&ocirc;ng sản đặc trưng, chủ lực của m&igrave;nh. Đồng thời, tạo điều kiện hỗ trợ, giới thiệu, kết nối gi&uacute;p n&ocirc;ng d&acirc;n Sơn La ti&ecirc;u thụ sản phẩm tr&aacute;i c&acirc;y.</p>\r\n\r\n<p>Thanh Ng&acirc;n-Phạm Ho&agrave;i</p>', 'Sơn La, trái cây', 'Sơn La, trái cây', 1, '51.jpeg', 2),
(16, 'Viet Nam agencies pass buck over Chinese fruits with fake US-grown labels', 'viet-nam-agencies-pass-buck-over-chinese', '<p>Vietnamese enterprises have plenty of room to expand their market shares in the US in 2022.</p>', '<h2>Diversification in distribution systems and the openness</h2>\r\n\r\n<p>There remains plenty of room for local enterprises to expand their market shares in the US in the future thanks to its diversification in distribution systems and the openness of American culture, with local fruit and vegetables being a culinary trend, according to insiders.</p>\r\n\r\n<p>With the US market home to 332 million customers, it also boasts a high per capita income and a three-million-strong overseas Vietnamese community.</p>\r\n\r\n<p>As VOV News reported, statistics compiled by the General Department of Vietnam Customs show that&nbsp;<a href=\"https://vietnamtimes.org.vn/uk-represents-a-potential-export-market-for-vietnamese-fruit-and-vegetables-33991.html&amp;dm=52ca6bcf3eb95248dccf2370722a393e&amp;utime=MjAyMjAyMTQwOTMxNTY=\" rel=\"nofollow\" target=\"_blank\">Vietnamese fruit and vegetable</a>&nbsp;exports to the US market during the 11-month period last year surged by 33.2% on-year to reach US$203.2 million.</p>\r\n\r\n<p>Six types of fresh Vietnamese fruits are permitted to enter the US market, including mangoes, longans, lychee, dragon fruit, rambutan, and star apples.</p>\r\n\r\n<p>Most notably, Ke Sach star apples from the Mekong Delta province of Soc Trang have been exported to the US and Singaporean markets in huge quantities, said Vu Ba Quan, head of Ke Sach district&rsquo;s Agriculture and Rural Development Department.</p>\r\n\r\n<p>Deputy Minister of Agriculture and Rural Development Tran Thanh Nam revealed that Vietnamese pomelos will officially enter the US market, while the US authorities will also consider opening the door to Vietnamese coconuts in the near future.</p>\r\n\r\n<p>The Deputy Minister therefore recommended that local businesses work closely with local plant quarantine units to complete necessary documents to soon export pomelos to the US.</p>\r\n\r\n<p>Aside from advantages, Vietnamese enterprises have also encountered numerous difficulties in exporting fruit and vegetables to the demanding market amid tough competition from states such as Florida and California, as well as South American countries with natural conditions similar to Vietnam, and products from other Asian countries.</p>\r\n\r\n<p>Moreover, due to geographical distance, high transportation and storage costs, Vietnamese fruit and vegetable products have yet to make a significance presence in the market.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Vietnam\'s Bright Prospect For Fruit And Vegetable Export To US\" src=\"https://vietnamtimes.org.vn/stores/news_dataimages/thanhhavnt/022022/14/09/in_article/3319_vn-export-2.jpg?rt=20220214093321\" title=\"Vietnam\'s Bright Prospect For Fruit And Vegetable Export To US\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processing carrots at Tan Huong Agricultural Products and Foodstuffs Processing at Cam Giang district. Photo: Hanoitimes.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>As a means of increasing the export of fruit and vegetables to the US market, Vietnam&rsquo;s Trade Office in the US has advised domestic enterprises to co-ordinate efforts with US importers and distributors to study flexible payment methods whilst supporting risk sharing in the early stage of market access.</p>\r\n\r\n<p>Furthermore, the trade office emphasised the necessity of investing in cold storages in order to set up a distribution centre for Vietnamese goods at a large port in the West Coast.</p>\r\n\r\n<p>This move is anticipated to reduce costs and facilitate the entry of local goods to the market in a convenient manner in the time to come.</p>\r\n\r\n<h2>Opportunities from free trade agreements</h2>\r\n\r\n<p>Nguyen Hong Dien, Minister of Industry and Trade, said that in 2021, the country&rsquo;s import and export turnover hit a record of nearly 670 billion USD, of which exports made a spectacular breakthrough with an increase of over 19 percent. This is a milestone, a bright spot of the economy in the context of the complicated developments of the COVID-19 pandemic.</p>\r\n\r\n<p>Last year, Vietnam had 35 items seeing export turnover of one billion USD, an increase of one item compared to 2020. Of these, there were eight items with export turnover of over 10 billion USD, he told Tien phong (Vanguard) newspaper.</p>\r\n\r\n<p>According to VCCI News, although accounting for less than 10 percent of the export value of the whole economy, agriculture was the sector that brought &quot;new impetus&quot; to export growth in 2021.</p>\r\n\r\n<p>The minister attributed the results to well exploitation of foreign markets which brought Vietnamese goods deeper into the global production and supply chain.</p>\r\n\r\n<p>&ldquo;Vietnamese businesses have taken opportunities from free trade agreements, especially new-generation agreements such as CPTPP, EVFTA and UKVFTA,&quot; Dien said.</p>\r\n\r\n<p>However, he said, there are still problems relating to import and export that should be dealt with. The export scale has increased, but added value is still low, he said, adding that many industries still export raw and semi-processed products. In particular, the proportion of enterprises with domestic investment in total exports is still low, Dien said.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Vietnam\'s Bright Prospect For Fruit And Vegetable Export To US\" src=\"https://vietnamtimes.org.vn/stores/news_dataimages/thanhhavnt/022022/14/09/in_article/3027_vn-export-3.jpg?rt=20220214093343\" title=\"Vietnam\'s Bright Prospect For Fruit And Vegetable Export To US\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pomelos are expected to gain entry to the US market in the coming time. Photo: VOV News.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Most notably, fruit remains one of the potential products that the country needs to focus on exploiting advantages from the&nbsp;<a href=\"https://vietnamtimes.org.vn/evfta-driving-force-for-vietnams-rice-export-to-eu-39258.html&amp;dm=52ca6bcf3eb95248dccf2370722a393e&amp;utime=MjAyMjAyMTQwOTMzNTk=\" rel=\"nofollow\" target=\"_blank\">EVFTA</a>, thereby contributing to promoting exports to the EU.</p>\r\n\r\n<p>The demand for fruit is increasing daily in the bloc due to eating habits to protect and promote health. Potential fruit varieties for good growth in the EU market in the near future includes fresh tamarind, jackfruit, litchi, plum, passion fruit, dragon fruit, guava, mango, and mangosteen.</p>\r\n\r\n<p>It is also noteworthy that through the EVFTA, EU countries have pledge to eliminate tariffs on pepper products as soon as the agreement comes into effect, especially for processed products that previously had a tax rate of 5% to 9%. This has contributed to allowing Vietnamese pepper exports to enjoy many advantages in the EU market, as Asean Vietnam reported.</p>\r\n\r\n<p>Ruby Lee</p>', 'Viet Nam, agencies', 'Viet Nam, agencies', 1, '45.webp', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` int(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_quantity`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(2, 'Strawberry', 60, 2, 5, '2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta sint dignissimos, rem commodi cum voluptatem quae reprehenderit repudiandae ea tempora incidunt ipsa, quisquam animi perferendis eos eum modi! Tempora, earum.', '170000', '58.jpg', 0, NULL, NULL),
(4, 'Kiwi', 40, 8, 5, '3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta sint dignissimos, rem commodi cum voluptatem quae reprehenderit repudiandae ea tempora incidunt ipsa, quisquam animi perferendis eos eum modi! Tempora, earum.', '200000', '44.jpg', 0, NULL, NULL),
(5, 'Lemon', 200, 5, 5, '0', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta sint dignissimos, rem commodi cum voluptatem quae reprehenderit repudiandae ea tempora incidunt ipsa, quisquam animi perferendis eos eum modi! Tempora, earum.', '15000', '12.jpg', 0, NULL, NULL),
(6, 'Táo xanh', 50, 6, 5, '012', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta sint dignissimos, rem commodi cum voluptatem quae reprehenderit repudiandae ea tempora incidunt ipsa, quisquam animi perferendis eos eum modi! Tempora, earum.', '120000', '39.jpg', 0, NULL, NULL),
(8, 'Nho', 15, 2, 5, '3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta sint dignissimos, rem commodi cum voluptatem quae reprehenderit repudiandae ea tempora incidunt ipsa, quisquam animi perferendis eos eum modi! Tempora, earum.', '65000', '64.jpg', 0, NULL, NULL),
(9, 'Quả mâm xôi', 43, 1, 5, '3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta sint dignissimos, rem commodi cum voluptatem quae reprehenderit repudiandae ea tempora incidunt ipsa, quisquam animi perferendis eos eum modi! Tempora, earum.', '120000', '93.jpg', 0, NULL, NULL),
(11, 'Xoài', 70, 8, 5, 'XOÀI CÁT CHU VÀNG', 'Xoài Cát chu Cao Lãnh Đồng Tháp là một trong những đặc sản hoa quả của địa phương đã có từ rất lâu đời. Ngày xưa, giống xoài này được trồng tập trung tại Xã Mỹ Xương, Huyện Cao Lãnh. Hiện nay, giống xoài đã được nhân rộng thêm ở nhiều nơi như Tịnh Thới, Tân Thuận Đông, Tân Thuận Tây của Tp. Cao Lãnh, hay huyện Lấp Vò. Tất cả đều mang lại sự ngon ngọt đặc trưng mà không vùng đất nào có được.', '20000', '98.jpg', 0, NULL, NULL),
(12, 'Táo fuji New Zealand', 90, 6, 1, 'Trọng lượng khoảng 200g đến 250g mỗi quả, có vỏ goài màu đỏ, vỏ nhẵn và trơn.', 'Táo Fuji New Zealand có mùa vụ bắt đầu từ tháng 02 đến tháng 08 hàng năm rơi đúng vào dịp tết Nguyên Đán của Việt Nam, bạn có thể chọn Fuji để lên giỏ quà tết cho người thân', '99000', '57.png', 0, NULL, NULL),
(13, 'Xoài đỏ', 25, 8, 5, 'XOÀI ĐÀI LOAN ĐỎ( Xoài Ngọc Vân)', 'Xoài Đài Loan đỏ thẫm ra quả ngay sau năm đầu tiên, không có hiện tượng ra hoa nhiều nhưng không đậu quả như xoài miền Nam. Quả to trọng lượng trung bình đạt 1,0-1,5kg cùi dầy, thịt quả đanh chắc, hạt mỏng, ăn ngọt đậm và chua nhẹ, đặc biệt ăn xanh cũng ngọt và sức sinh trưởng vượt trội so với các giống xoài khác.', '185000', '47.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_quanhuyen`
--

CREATE TABLE `tbl_quanhuyen` (
  `maqh` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name_quanhuyen` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `matp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_quanhuyen`
--

INSERT INTO `tbl_quanhuyen` (`maqh`, `name_quanhuyen`, `type`, `matp`) VALUES
('001', 'Quận Ba Đình', 'Quận', 1),
('002', 'Quận Hoàn Kiếm', 'Quận', 1),
('003', 'Quận Tây Hồ', 'Quận', 1),
('004', 'Quận Long Biên', 'Quận', 1),
('005', 'Quận Cầu Giấy', 'Quận', 1),
('006', 'Quận Đống Đa', 'Quận', 1),
('007', 'Quận Hai Bà Trưng', 'Quận', 1),
('008', 'Quận Hoàng Mai', 'Quận', 1),
('009', 'Quận Thanh Xuân', 'Quận', 1),
('016', 'Huyện Sóc Sơn', 'Huyện', 1),
('017', 'Huyện Đông Anh', 'Huyện', 1),
('018', 'Huyện Gia Lâm', 'Huyện', 1),
('019', 'Quận Nam Từ Liêm', 'Quận', 1),
('020', 'Huyện Thanh Trì', 'Huyện', 1),
('021', 'Quận Bắc Từ Liêm', 'Quận', 1),
('024', 'Thành phố Hà Giang', 'Thành phố', 2),
('026', 'Huyện Đồng Văn', 'Huyện', 2),
('027', 'Huyện Mèo Vạc', 'Huyện', 2),
('028', 'Huyện Yên Minh', 'Huyện', 2),
('029', 'Huyện Quản Bạ', 'Huyện', 2),
('030', 'Huyện Vị Xuyên', 'Huyện', 2),
('031', 'Huyện Bắc Mê', 'Huyện', 2),
('032', 'Huyện Hoàng Su Phì', 'Huyện', 2),
('033', 'Huyện Xín Mần', 'Huyện', 2),
('034', 'Huyện Bắc Quang', 'Huyện', 2),
('035', 'Huyện Quang Bình', 'Huyện', 2),
('040', 'Thành phố Cao Bằng', 'Thành phố', 4),
('042', 'Huyện Bảo Lâm', 'Huyện', 4),
('043', 'Huyện Bảo Lạc', 'Huyện', 4),
('044', 'Huyện Thông Nông', 'Huyện', 4),
('045', 'Huyện Hà Quảng', 'Huyện', 4),
('046', 'Huyện Trà Lĩnh', 'Huyện', 4),
('047', 'Huyện Trùng Khánh', 'Huyện', 4),
('048', 'Huyện Hạ Lang', 'Huyện', 4),
('049', 'Huyện Quảng Uyên', 'Huyện', 4),
('050', 'Huyện Phục Hoà', 'Huyện', 4),
('051', 'Huyện Hoà An', 'Huyện', 4),
('052', 'Huyện Nguyên Bình', 'Huyện', 4),
('053', 'Huyện Thạch An', 'Huyện', 4),
('058', 'Thành Phố Bắc Kạn', 'Thành phố', 6),
('060', 'Huyện Pác Nặm', 'Huyện', 6),
('061', 'Huyện Ba Bể', 'Huyện', 6),
('062', 'Huyện Ngân Sơn', 'Huyện', 6),
('063', 'Huyện Bạch Thông', 'Huyện', 6),
('064', 'Huyện Chợ Đồn', 'Huyện', 6),
('065', 'Huyện Chợ Mới', 'Huyện', 6),
('066', 'Huyện Na Rì', 'Huyện', 6),
('070', 'Thành phố Tuyên Quang', 'Thành phố', 8),
('071', 'Huyện Lâm Bình', 'Huyện', 8),
('072', 'Huyện Nà Hang', 'Huyện', 8),
('073', 'Huyện Chiêm Hóa', 'Huyện', 8),
('074', 'Huyện Hàm Yên', 'Huyện', 8),
('075', 'Huyện Yên Sơn', 'Huyện', 8),
('076', 'Huyện Sơn Dương', 'Huyện', 8),
('080', 'Thành phố Lào Cai', 'Thành phố', 10),
('082', 'Huyện Bát Xát', 'Huyện', 10),
('083', 'Huyện Mường Khương', 'Huyện', 10),
('084', 'Huyện Si Ma Cai', 'Huyện', 10),
('085', 'Huyện Bắc Hà', 'Huyện', 10),
('086', 'Huyện Bảo Thắng', 'Huyện', 10),
('087', 'Huyện Bảo Yên', 'Huyện', 10),
('088', 'Huyện Sa Pa', 'Huyện', 10),
('089', 'Huyện Văn Bàn', 'Huyện', 10),
('094', 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
('095', 'Thị Xã Mường Lay', 'Thị xã', 11),
('096', 'Huyện Mường Nhé', 'Huyện', 11),
('097', 'Huyện Mường Chà', 'Huyện', 11),
('098', 'Huyện Tủa Chùa', 'Huyện', 11),
('099', 'Huyện Tuần Giáo', 'Huyện', 11),
('100', 'Huyện Điện Biên', 'Huyện', 11),
('101', 'Huyện Điện Biên Đông', 'Huyện', 11),
('102', 'Huyện Mường Ảng', 'Huyện', 11),
('103', 'Huyện Nậm Pồ', 'Huyện', 11),
('105', 'Thành phố Lai Châu', 'Thành phố', 12),
('106', 'Huyện Tam Đường', 'Huyện', 12),
('107', 'Huyện Mường Tè', 'Huyện', 12),
('108', 'Huyện Sìn Hồ', 'Huyện', 12),
('109', 'Huyện Phong Thổ', 'Huyện', 12),
('110', 'Huyện Than Uyên', 'Huyện', 12),
('111', 'Huyện Tân Uyên', 'Huyện', 12),
('112', 'Huyện Nậm Nhùn', 'Huyện', 12),
('116', 'Thành phố Sơn La', 'Thành phố', 14),
('118', 'Huyện Quỳnh Nhai', 'Huyện', 14),
('119', 'Huyện Thuận Châu', 'Huyện', 14),
('120', 'Huyện Mường La', 'Huyện', 14),
('121', 'Huyện Bắc Yên', 'Huyện', 14),
('122', 'Huyện Phù Yên', 'Huyện', 14),
('123', 'Huyện Mộc Châu', 'Huyện', 14),
('124', 'Huyện Yên Châu', 'Huyện', 14),
('125', 'Huyện Mai Sơn', 'Huyện', 14),
('126', 'Huyện Sông Mã', 'Huyện', 14),
('127', 'Huyện Sốp Cộp', 'Huyện', 14),
('128', 'Huyện Vân Hồ', 'Huyện', 14),
('132', 'Thành phố Yên Bái', 'Thành phố', 15),
('133', 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
('135', 'Huyện Lục Yên', 'Huyện', 15),
('136', 'Huyện Văn Yên', 'Huyện', 15),
('137', 'Huyện Mù Căng Chải', 'Huyện', 15),
('138', 'Huyện Trấn Yên', 'Huyện', 15),
('139', 'Huyện Trạm Tấu', 'Huyện', 15),
('140', 'Huyện Văn Chấn', 'Huyện', 15),
('141', 'Huyện Yên Bình', 'Huyện', 15),
('148', 'Thành phố Hòa Bình', 'Thành phố', 17),
('150', 'Huyện Đà Bắc', 'Huyện', 17),
('151', 'Huyện Kỳ Sơn', 'Huyện', 17),
('152', 'Huyện Lương Sơn', 'Huyện', 17),
('153', 'Huyện Kim Bôi', 'Huyện', 17),
('154', 'Huyện Cao Phong', 'Huyện', 17),
('155', 'Huyện Tân Lạc', 'Huyện', 17),
('156', 'Huyện Mai Châu', 'Huyện', 17),
('157', 'Huyện Lạc Sơn', 'Huyện', 17),
('158', 'Huyện Yên Thủy', 'Huyện', 17),
('159', 'Huyện Lạc Thủy', 'Huyện', 17),
('164', 'Thành phố Thái Nguyên', 'Thành phố', 19),
('165', 'Thành phố Sông Công', 'Thành phố', 19),
('167', 'Huyện Định Hóa', 'Huyện', 19),
('168', 'Huyện Phú Lương', 'Huyện', 19),
('169', 'Huyện Đồng Hỷ', 'Huyện', 19),
('170', 'Huyện Võ Nhai', 'Huyện', 19),
('171', 'Huyện Đại Từ', 'Huyện', 19),
('172', 'Thị xã Phổ Yên', 'Thị xã', 19),
('173', 'Huyện Phú Bình', 'Huyện', 19),
('178', 'Thành phố Lạng Sơn', 'Thành phố', 20),
('180', 'Huyện Tràng Định', 'Huyện', 20),
('181', 'Huyện Bình Gia', 'Huyện', 20),
('182', 'Huyện Văn Lãng', 'Huyện', 20),
('183', 'Huyện Cao Lộc', 'Huyện', 20),
('184', 'Huyện Văn Quan', 'Huyện', 20),
('185', 'Huyện Bắc Sơn', 'Huyện', 20),
('186', 'Huyện Hữu Lũng', 'Huyện', 20),
('187', 'Huyện Chi Lăng', 'Huyện', 20),
('188', 'Huyện Lộc Bình', 'Huyện', 20),
('189', 'Huyện Đình Lập', 'Huyện', 20),
('193', 'Thành phố Hạ Long', 'Thành phố', 22),
('194', 'Thành phố Móng Cái', 'Thành phố', 22),
('195', 'Thành phố Cẩm Phả', 'Thành phố', 22),
('196', 'Thành phố Uông Bí', 'Thành phố', 22),
('198', 'Huyện Bình Liêu', 'Huyện', 22),
('199', 'Huyện Tiên Yên', 'Huyện', 22),
('200', 'Huyện Đầm Hà', 'Huyện', 22),
('201', 'Huyện Hải Hà', 'Huyện', 22),
('202', 'Huyện Ba Chẽ', 'Huyện', 22),
('203', 'Huyện Vân Đồn', 'Huyện', 22),
('204', 'Huyện Hoành Bồ', 'Huyện', 22),
('205', 'Thị xã Đông Triều', 'Thị xã', 22),
('206', 'Thị xã Quảng Yên', 'Thị xã', 22),
('207', 'Huyện Cô Tô', 'Huyện', 22),
('213', 'Thành phố Bắc Giang', 'Thành phố', 24),
('215', 'Huyện Yên Thế', 'Huyện', 24),
('216', 'Huyện Tân Yên', 'Huyện', 24),
('217', 'Huyện Lạng Giang', 'Huyện', 24),
('218', 'Huyện Lục Nam', 'Huyện', 24),
('219', 'Huyện Lục Ngạn', 'Huyện', 24),
('220', 'Huyện Sơn Động', 'Huyện', 24),
('221', 'Huyện Yên Dũng', 'Huyện', 24),
('222', 'Huyện Việt Yên', 'Huyện', 24),
('223', 'Huyện Hiệp Hòa', 'Huyện', 24),
('227', 'Thành phố Việt Trì', 'Thành phố', 25),
('228', 'Thị xã Phú Thọ', 'Thị xã', 25),
('230', 'Huyện Đoan Hùng', 'Huyện', 25),
('231', 'Huyện Hạ Hoà', 'Huyện', 25),
('232', 'Huyện Thanh Ba', 'Huyện', 25),
('233', 'Huyện Phù Ninh', 'Huyện', 25),
('234', 'Huyện Yên Lập', 'Huyện', 25),
('235', 'Huyện Cẩm Khê', 'Huyện', 25),
('236', 'Huyện Tam Nông', 'Huyện', 25),
('237', 'Huyện Lâm Thao', 'Huyện', 25),
('238', 'Huyện Thanh Sơn', 'Huyện', 25),
('239', 'Huyện Thanh Thuỷ', 'Huyện', 25),
('240', 'Huyện Tân Sơn', 'Huyện', 25),
('243', 'Thành phố Vĩnh Yên', 'Thành phố', 26),
('244', 'Thị xã Phúc Yên', 'Thị xã', 26),
('246', 'Huyện Lập Thạch', 'Huyện', 26),
('247', 'Huyện Tam Dương', 'Huyện', 26),
('248', 'Huyện Tam Đảo', 'Huyện', 26),
('249', 'Huyện Bình Xuyên', 'Huyện', 26),
('250', 'Huyện Mê Linh', 'Huyện', 1),
('251', 'Huyện Yên Lạc', 'Huyện', 26),
('252', 'Huyện Vĩnh Tường', 'Huyện', 26),
('253', 'Huyện Sông Lô', 'Huyện', 26),
('256', 'Thành phố Bắc Ninh', 'Thành phố', 27),
('258', 'Huyện Yên Phong', 'Huyện', 27),
('259', 'Huyện Quế Võ', 'Huyện', 27),
('260', 'Huyện Tiên Du', 'Huyện', 27),
('261', 'Thị xã Từ Sơn', 'Thị xã', 27),
('262', 'Huyện Thuận Thành', 'Huyện', 27),
('263', 'Huyện Gia Bình', 'Huyện', 27),
('264', 'Huyện Lương Tài', 'Huyện', 27),
('268', 'Quận Hà Đông', 'Quận', 1),
('269', 'Thị xã Sơn Tây', 'Thị xã', 1),
('271', 'Huyện Ba Vì', 'Huyện', 1),
('272', 'Huyện Phúc Thọ', 'Huyện', 1),
('273', 'Huyện Đan Phượng', 'Huyện', 1),
('274', 'Huyện Hoài Đức', 'Huyện', 1),
('275', 'Huyện Quốc Oai', 'Huyện', 1),
('276', 'Huyện Thạch Thất', 'Huyện', 1),
('277', 'Huyện Chương Mỹ', 'Huyện', 1),
('278', 'Huyện Thanh Oai', 'Huyện', 1),
('279', 'Huyện Thường Tín', 'Huyện', 1),
('280', 'Huyện Phú Xuyên', 'Huyện', 1),
('281', 'Huyện Ứng Hòa', 'Huyện', 1),
('282', 'Huyện Mỹ Đức', 'Huyện', 1),
('288', 'Thành phố Hải Dương', 'Thành phố', 30),
('290', 'Thị xã Chí Linh', 'Thị xã', 30),
('291', 'Huyện Nam Sách', 'Huyện', 30),
('292', 'Huyện Kinh Môn', 'Huyện', 30),
('293', 'Huyện Kim Thành', 'Huyện', 30),
('294', 'Huyện Thanh Hà', 'Huyện', 30),
('295', 'Huyện Cẩm Giàng', 'Huyện', 30),
('296', 'Huyện Bình Giang', 'Huyện', 30),
('297', 'Huyện Gia Lộc', 'Huyện', 30),
('298', 'Huyện Tứ Kỳ', 'Huyện', 30),
('299', 'Huyện Ninh Giang', 'Huyện', 30),
('300', 'Huyện Thanh Miện', 'Huyện', 30),
('303', 'Quận Hồng Bàng', 'Quận', 31),
('304', 'Quận Ngô Quyền', 'Quận', 31),
('305', 'Quận Lê Chân', 'Quận', 31),
('306', 'Quận Hải An', 'Quận', 31),
('307', 'Quận Kiến An', 'Quận', 31),
('308', 'Quận Đồ Sơn', 'Quận', 31),
('309', 'Quận Dương Kinh', 'Quận', 31),
('311', 'Huyện Thuỷ Nguyên', 'Huyện', 31),
('312', 'Huyện An Dương', 'Huyện', 31),
('313', 'Huyện An Lão', 'Huyện', 31),
('314', 'Huyện Kiến Thuỵ', 'Huyện', 31),
('315', 'Huyện Tiên Lãng', 'Huyện', 31),
('316', 'Huyện Vĩnh Bảo', 'Huyện', 31),
('317', 'Huyện Cát Hải', 'Huyện', 31),
('318', 'Huyện Bạch Long Vĩ', 'Huyện', 31),
('323', 'Thành phố Hưng Yên', 'Thành phố', 33),
('325', 'Huyện Văn Lâm', 'Huyện', 33),
('326', 'Huyện Văn Giang', 'Huyện', 33),
('327', 'Huyện Yên Mỹ', 'Huyện', 33),
('328', 'Huyện Mỹ Hào', 'Huyện', 33),
('329', 'Huyện Ân Thi', 'Huyện', 33),
('330', 'Huyện Khoái Châu', 'Huyện', 33),
('331', 'Huyện Kim Động', 'Huyện', 33),
('332', 'Huyện Tiên Lữ', 'Huyện', 33),
('333', 'Huyện Phù Cừ', 'Huyện', 33),
('336', 'Thành phố Thái Bình', 'Thành phố', 34),
('338', 'Huyện Quỳnh Phụ', 'Huyện', 34),
('339', 'Huyện Hưng Hà', 'Huyện', 34),
('340', 'Huyện Đông Hưng', 'Huyện', 34),
('341', 'Huyện Thái Thụy', 'Huyện', 34),
('342', 'Huyện Tiền Hải', 'Huyện', 34),
('343', 'Huyện Kiến Xương', 'Huyện', 34),
('344', 'Huyện Vũ Thư', 'Huyện', 34),
('347', 'Thành phố Phủ Lý', 'Thành phố', 35),
('349', 'Huyện Duy Tiên', 'Huyện', 35),
('350', 'Huyện Kim Bảng', 'Huyện', 35),
('351', 'Huyện Thanh Liêm', 'Huyện', 35),
('352', 'Huyện Bình Lục', 'Huyện', 35),
('353', 'Huyện Lý Nhân', 'Huyện', 35),
('356', 'Thành phố Nam Định', 'Thành phố', 36),
('358', 'Huyện Mỹ Lộc', 'Huyện', 36),
('359', 'Huyện Vụ Bản', 'Huyện', 36),
('360', 'Huyện Ý Yên', 'Huyện', 36),
('361', 'Huyện Nghĩa Hưng', 'Huyện', 36),
('362', 'Huyện Nam Trực', 'Huyện', 36),
('363', 'Huyện Trực Ninh', 'Huyện', 36),
('364', 'Huyện Xuân Trường', 'Huyện', 36),
('365', 'Huyện Giao Thủy', 'Huyện', 36),
('366', 'Huyện Hải Hậu', 'Huyện', 36),
('369', 'Thành phố Ninh Bình', 'Thành phố', 37),
('370', 'Thành phố Tam Điệp', 'Thành phố', 37),
('372', 'Huyện Nho Quan', 'Huyện', 37),
('373', 'Huyện Gia Viễn', 'Huyện', 37),
('374', 'Huyện Hoa Lư', 'Huyện', 37),
('375', 'Huyện Yên Khánh', 'Huyện', 37),
('376', 'Huyện Kim Sơn', 'Huyện', 37),
('377', 'Huyện Yên Mô', 'Huyện', 37),
('380', 'Thành phố Thanh Hóa', 'Thành phố', 38),
('381', 'Thị xã Bỉm Sơn', 'Thị xã', 38),
('382', 'Thị xã Sầm Sơn', 'Thị xã', 38),
('384', 'Huyện Mường Lát', 'Huyện', 38),
('385', 'Huyện Quan Hóa', 'Huyện', 38),
('386', 'Huyện Bá Thước', 'Huyện', 38),
('387', 'Huyện Quan Sơn', 'Huyện', 38),
('388', 'Huyện Lang Chánh', 'Huyện', 38),
('389', 'Huyện Ngọc Lặc', 'Huyện', 38),
('390', 'Huyện Cẩm Thủy', 'Huyện', 38),
('391', 'Huyện Thạch Thành', 'Huyện', 38),
('392', 'Huyện Hà Trung', 'Huyện', 38),
('393', 'Huyện Vĩnh Lộc', 'Huyện', 38),
('394', 'Huyện Yên Định', 'Huyện', 38),
('395', 'Huyện Thọ Xuân', 'Huyện', 38),
('396', 'Huyện Thường Xuân', 'Huyện', 38),
('397', 'Huyện Triệu Sơn', 'Huyện', 38),
('398', 'Huyện Thiệu Hóa', 'Huyện', 38),
('399', 'Huyện Hoằng Hóa', 'Huyện', 38),
('400', 'Huyện Hậu Lộc', 'Huyện', 38),
('401', 'Huyện Nga Sơn', 'Huyện', 38),
('402', 'Huyện Như Xuân', 'Huyện', 38),
('403', 'Huyện Như Thanh', 'Huyện', 38),
('404', 'Huyện Nông Cống', 'Huyện', 38),
('405', 'Huyện Đông Sơn', 'Huyện', 38),
('406', 'Huyện Quảng Xương', 'Huyện', 38),
('407', 'Huyện Tĩnh Gia', 'Huyện', 38),
('412', 'Thành phố Vinh', 'Thành phố', 40),
('413', 'Thị xã Cửa Lò', 'Thị xã', 40),
('414', 'Thị xã Thái Hoà', 'Thị xã', 40),
('415', 'Huyện Quế Phong', 'Huyện', 40),
('416', 'Huyện Quỳ Châu', 'Huyện', 40),
('417', 'Huyện Kỳ Sơn', 'Huyện', 40),
('418', 'Huyện Tương Dương', 'Huyện', 40),
('419', 'Huyện Nghĩa Đàn', 'Huyện', 40),
('420', 'Huyện Quỳ Hợp', 'Huyện', 40),
('421', 'Huyện Quỳnh Lưu', 'Huyện', 40),
('422', 'Huyện Con Cuông', 'Huyện', 40),
('423', 'Huyện Tân Kỳ', 'Huyện', 40),
('424', 'Huyện Anh Sơn', 'Huyện', 40),
('425', 'Huyện Diễn Châu', 'Huyện', 40),
('426', 'Huyện Yên Thành', 'Huyện', 40),
('427', 'Huyện Đô Lương', 'Huyện', 40),
('428', 'Huyện Thanh Chương', 'Huyện', 40),
('429', 'Huyện Nghi Lộc', 'Huyện', 40),
('430', 'Huyện Nam Đàn', 'Huyện', 40),
('431', 'Huyện Hưng Nguyên', 'Huyện', 40),
('432', 'Thị xã Hoàng Mai', 'Thị xã', 40),
('436', 'Thành phố Hà Tĩnh', 'Thành phố', 42),
('437', 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
('439', 'Huyện Hương Sơn', 'Huyện', 42),
('440', 'Huyện Đức Thọ', 'Huyện', 42),
('441', 'Huyện Vũ Quang', 'Huyện', 42),
('442', 'Huyện Nghi Xuân', 'Huyện', 42),
('443', 'Huyện Can Lộc', 'Huyện', 42),
('444', 'Huyện Hương Khê', 'Huyện', 42),
('445', 'Huyện Thạch Hà', 'Huyện', 42),
('446', 'Huyện Cẩm Xuyên', 'Huyện', 42),
('447', 'Huyện Kỳ Anh', 'Huyện', 42),
('448', 'Huyện Lộc Hà', 'Huyện', 42),
('449', 'Thị xã Kỳ Anh', 'Thị xã', 42),
('450', 'Thành Phố Đồng Hới', 'Thành phố', 44),
('452', 'Huyện Minh Hóa', 'Huyện', 44),
('453', 'Huyện Tuyên Hóa', 'Huyện', 44),
('454', 'Huyện Quảng Trạch', 'Thị xã', 44),
('455', 'Huyện Bố Trạch', 'Huyện', 44),
('456', 'Huyện Quảng Ninh', 'Huyện', 44),
('457', 'Huyện Lệ Thủy', 'Huyện', 44),
('458', 'Thị xã Ba Đồn', 'Huyện', 44),
('461', 'Thành phố Đông Hà', 'Thành phố', 45),
('462', 'Thị xã Quảng Trị', 'Thị xã', 45),
('464', 'Huyện Vĩnh Linh', 'Huyện', 45),
('465', 'Huyện Hướng Hóa', 'Huyện', 45),
('466', 'Huyện Gio Linh', 'Huyện', 45),
('467', 'Huyện Đa Krông', 'Huyện', 45),
('468', 'Huyện Cam Lộ', 'Huyện', 45),
('469', 'Huyện Triệu Phong', 'Huyện', 45),
('470', 'Huyện Hải Lăng', 'Huyện', 45),
('471', 'Huyện Cồn Cỏ', 'Huyện', 45),
('474', 'Thành phố Huế', 'Thành phố', 46),
('476', 'Huyện Phong Điền', 'Huyện', 46),
('477', 'Huyện Quảng Điền', 'Huyện', 46),
('478', 'Huyện Phú Vang', 'Huyện', 46),
('479', 'Thị xã Hương Thủy', 'Thị xã', 46),
('480', 'Thị xã Hương Trà', 'Thị xã', 46),
('481', 'Huyện A Lưới', 'Huyện', 46),
('482', 'Huyện Phú Lộc', 'Huyện', 46),
('483', 'Huyện Nam Đông', 'Huyện', 46),
('490', 'Quận Liên Chiểu', 'Quận', 48),
('491', 'Quận Thanh Khê', 'Quận', 48),
('492', 'Quận Hải Châu', 'Quận', 48),
('493', 'Quận Sơn Trà', 'Quận', 48),
('494', 'Quận Ngũ Hành Sơn', 'Quận', 48),
('495', 'Quận Cẩm Lệ', 'Quận', 48),
('497', 'Huyện Hòa Vang', 'Huyện', 48),
('498', 'Huyện Hoàng Sa', 'Huyện', 48),
('502', 'Thành phố Tam Kỳ', 'Thành phố', 49),
('503', 'Thành phố Hội An', 'Thành phố', 49),
('504', 'Huyện Tây Giang', 'Huyện', 49),
('505', 'Huyện Đông Giang', 'Huyện', 49),
('506', 'Huyện Đại Lộc', 'Huyện', 49),
('507', 'Thị xã Điện Bàn', 'Thị xã', 49),
('508', 'Huyện Duy Xuyên', 'Huyện', 49),
('509', 'Huyện Quế Sơn', 'Huyện', 49),
('510', 'Huyện Nam Giang', 'Huyện', 49),
('511', 'Huyện Phước Sơn', 'Huyện', 49),
('512', 'Huyện Hiệp Đức', 'Huyện', 49),
('513', 'Huyện Thăng Bình', 'Huyện', 49),
('514', 'Huyện Tiên Phước', 'Huyện', 49),
('515', 'Huyện Bắc Trà My', 'Huyện', 49),
('516', 'Huyện Nam Trà My', 'Huyện', 49),
('517', 'Huyện Núi Thành', 'Huyện', 49),
('518', 'Huyện Phú Ninh', 'Huyện', 49),
('519', 'Huyện Nông Sơn', 'Huyện', 49),
('522', 'Thành phố Quảng Ngãi', 'Thành phố', 51),
('524', 'Huyện Bình Sơn', 'Huyện', 51),
('525', 'Huyện Trà Bồng', 'Huyện', 51),
('526', 'Huyện Tây Trà', 'Huyện', 51),
('527', 'Huyện Sơn Tịnh', 'Huyện', 51),
('528', 'Huyện Tư Nghĩa', 'Huyện', 51),
('529', 'Huyện Sơn Hà', 'Huyện', 51),
('530', 'Huyện Sơn Tây', 'Huyện', 51),
('531', 'Huyện Minh Long', 'Huyện', 51),
('532', 'Huyện Nghĩa Hành', 'Huyện', 51),
('533', 'Huyện Mộ Đức', 'Huyện', 51),
('534', 'Huyện Đức Phổ', 'Huyện', 51),
('535', 'Huyện Ba Tơ', 'Huyện', 51),
('536', 'Huyện Lý Sơn', 'Huyện', 51),
('540', 'Thành phố Qui Nhơn', 'Thành phố', 52),
('542', 'Huyện An Lão', 'Huyện', 52),
('543', 'Huyện Hoài Nhơn', 'Huyện', 52),
('544', 'Huyện Hoài Ân', 'Huyện', 52),
('545', 'Huyện Phù Mỹ', 'Huyện', 52),
('546', 'Huyện Vĩnh Thạnh', 'Huyện', 52),
('547', 'Huyện Tây Sơn', 'Huyện', 52),
('548', 'Huyện Phù Cát', 'Huyện', 52),
('549', 'Thị xã An Nhơn', 'Thị xã', 52),
('550', 'Huyện Tuy Phước', 'Huyện', 52),
('551', 'Huyện Vân Canh', 'Huyện', 52),
('555', 'Thành phố Tuy Hoà', 'Thành phố', 54),
('557', 'Thị xã Sông Cầu', 'Thị xã', 54),
('558', 'Huyện Đồng Xuân', 'Huyện', 54),
('559', 'Huyện Tuy An', 'Huyện', 54),
('560', 'Huyện Sơn Hòa', 'Huyện', 54),
('561', 'Huyện Sông Hinh', 'Huyện', 54),
('562', 'Huyện Tây Hoà', 'Huyện', 54),
('563', 'Huyện Phú Hoà', 'Huyện', 54),
('564', 'Huyện Đông Hòa', 'Huyện', 54),
('568', 'Thành phố Nha Trang', 'Thành phố', 56),
('569', 'Thành phố Cam Ranh', 'Thành phố', 56),
('570', 'Huyện Cam Lâm', 'Huyện', 56),
('571', 'Huyện Vạn Ninh', 'Huyện', 56),
('572', 'Thị xã Ninh Hòa', 'Thị xã', 56),
('573', 'Huyện Khánh Vĩnh', 'Huyện', 56),
('574', 'Huyện Diên Khánh', 'Huyện', 56),
('575', 'Huyện Khánh Sơn', 'Huyện', 56),
('576', 'Huyện Trường Sa', 'Huyện', 56),
('582', 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
('584', 'Huyện Bác Ái', 'Huyện', 58),
('585', 'Huyện Ninh Sơn', 'Huyện', 58),
('586', 'Huyện Ninh Hải', 'Huyện', 58),
('587', 'Huyện Ninh Phước', 'Huyện', 58),
('588', 'Huyện Thuận Bắc', 'Huyện', 58),
('589', 'Huyện Thuận Nam', 'Huyện', 58),
('593', 'Thành phố Phan Thiết', 'Thành phố', 60),
('594', 'Thị xã La Gi', 'Thị xã', 60),
('595', 'Huyện Tuy Phong', 'Huyện', 60),
('596', 'Huyện Bắc Bình', 'Huyện', 60),
('597', 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
('598', 'Huyện Hàm Thuận Nam', 'Huyện', 60),
('599', 'Huyện Tánh Linh', 'Huyện', 60),
('600', 'Huyện Đức Linh', 'Huyện', 60),
('601', 'Huyện Hàm Tân', 'Huyện', 60),
('602', 'Huyện Phú Quí', 'Huyện', 60),
('608', 'Thành phố Kon Tum', 'Thành phố', 62),
('610', 'Huyện Đắk Glei', 'Huyện', 62),
('611', 'Huyện Ngọc Hồi', 'Huyện', 62),
('612', 'Huyện Đắk Tô', 'Huyện', 62),
('613', 'Huyện Kon Plông', 'Huyện', 62),
('614', 'Huyện Kon Rẫy', 'Huyện', 62),
('615', 'Huyện Đắk Hà', 'Huyện', 62),
('616', 'Huyện Sa Thầy', 'Huyện', 62),
('617', 'Huyện Tu Mơ Rông', 'Huyện', 62),
('618', 'Huyện Ia H\' Drai', 'Huyện', 62),
('622', 'Thành phố Pleiku', 'Thành phố', 64),
('623', 'Thị xã An Khê', 'Thị xã', 64),
('624', 'Thị xã Ayun Pa', 'Thị xã', 64),
('625', 'Huyện KBang', 'Huyện', 64),
('626', 'Huyện Đăk Đoa', 'Huyện', 64),
('627', 'Huyện Chư Păh', 'Huyện', 64),
('628', 'Huyện Ia Grai', 'Huyện', 64),
('629', 'Huyện Mang Yang', 'Huyện', 64),
('630', 'Huyện Kông Chro', 'Huyện', 64),
('631', 'Huyện Đức Cơ', 'Huyện', 64),
('632', 'Huyện Chư Prông', 'Huyện', 64),
('633', 'Huyện Chư Sê', 'Huyện', 64),
('634', 'Huyện Đăk Pơ', 'Huyện', 64),
('635', 'Huyện Ia Pa', 'Huyện', 64),
('637', 'Huyện Krông Pa', 'Huyện', 64),
('638', 'Huyện Phú Thiện', 'Huyện', 64),
('639', 'Huyện Chư Pưh', 'Huyện', 64),
('643', 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
('644', 'Thị Xã Buôn Hồ', 'Thị xã', 66),
('645', 'Huyện Ea H\'leo', 'Huyện', 66),
('646', 'Huyện Ea Súp', 'Huyện', 66),
('647', 'Huyện Buôn Đôn', 'Huyện', 66),
('648', 'Huyện Cư M\'gar', 'Huyện', 66),
('649', 'Huyện Krông Búk', 'Huyện', 66),
('650', 'Huyện Krông Năng', 'Huyện', 66),
('651', 'Huyện Ea Kar', 'Huyện', 66),
('652', 'Huyện M\'Đrắk', 'Huyện', 66),
('653', 'Huyện Krông Bông', 'Huyện', 66),
('654', 'Huyện Krông Pắc', 'Huyện', 66),
('655', 'Huyện Krông A Na', 'Huyện', 66),
('656', 'Huyện Lắk', 'Huyện', 66),
('657', 'Huyện Cư Kuin', 'Huyện', 66),
('660', 'Thị xã Gia Nghĩa', 'Thị xã', 67),
('661', 'Huyện Đăk Glong', 'Huyện', 67),
('662', 'Huyện Cư Jút', 'Huyện', 67),
('663', 'Huyện Đắk Mil', 'Huyện', 67),
('664', 'Huyện Krông Nô', 'Huyện', 67),
('665', 'Huyện Đắk Song', 'Huyện', 67),
('666', 'Huyện Đắk R\'Lấp', 'Huyện', 67),
('667', 'Huyện Tuy Đức', 'Huyện', 67),
('672', 'Thành phố Đà Lạt', 'Thành phố', 68),
('673', 'Thành phố Bảo Lộc', 'Thành phố', 68),
('674', 'Huyện Đam Rông', 'Huyện', 68),
('675', 'Huyện Lạc Dương', 'Huyện', 68),
('676', 'Huyện Lâm Hà', 'Huyện', 68),
('677', 'Huyện Đơn Dương', 'Huyện', 68),
('678', 'Huyện Đức Trọng', 'Huyện', 68),
('679', 'Huyện Di Linh', 'Huyện', 68),
('680', 'Huyện Bảo Lâm', 'Huyện', 68),
('681', 'Huyện Đạ Huoai', 'Huyện', 68),
('682', 'Huyện Đạ Tẻh', 'Huyện', 68),
('683', 'Huyện Cát Tiên', 'Huyện', 68),
('688', 'Thị xã Phước Long', 'Thị xã', 70),
('689', 'Thị xã Đồng Xoài', 'Thị xã', 70),
('690', 'Thị xã Bình Long', 'Thị xã', 70),
('691', 'Huyện Bù Gia Mập', 'Huyện', 70),
('692', 'Huyện Lộc Ninh', 'Huyện', 70),
('693', 'Huyện Bù Đốp', 'Huyện', 70),
('694', 'Huyện Hớn Quản', 'Huyện', 70),
('695', 'Huyện Đồng Phú', 'Huyện', 70),
('696', 'Huyện Bù Đăng', 'Huyện', 70),
('697', 'Huyện Chơn Thành', 'Huyện', 70),
('698', 'Huyện Phú Riềng', 'Huyện', 70),
('703', 'Thành phố Tây Ninh', 'Thành phố', 72),
('705', 'Huyện Tân Biên', 'Huyện', 72),
('706', 'Huyện Tân Châu', 'Huyện', 72),
('707', 'Huyện Dương Minh Châu', 'Huyện', 72),
('708', 'Huyện Châu Thành', 'Huyện', 72),
('709', 'Huyện Hòa Thành', 'Huyện', 72),
('710', 'Huyện Gò Dầu', 'Huyện', 72),
('711', 'Huyện Bến Cầu', 'Huyện', 72),
('712', 'Huyện Trảng Bàng', 'Huyện', 72),
('718', 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
('719', 'Huyện Bàu Bàng', 'Huyện', 74),
('720', 'Huyện Dầu Tiếng', 'Huyện', 74),
('721', 'Thị xã Bến Cát', 'Thị xã', 74),
('722', 'Huyện Phú Giáo', 'Huyện', 74),
('723', 'Thị xã Tân Uyên', 'Thị xã', 74),
('724', 'Thị xã Dĩ An', 'Thị xã', 74),
('725', 'Thị xã Thuận An', 'Thị xã', 74),
('726', 'Huyện Bắc Tân Uyên', 'Huyện', 74),
('731', 'Thành phố Biên Hòa', 'Thành phố', 75),
('732', 'Thị xã Long Khánh', 'Thị xã', 75),
('734', 'Huyện Tân Phú', 'Huyện', 75),
('735', 'Huyện Vĩnh Cửu', 'Huyện', 75),
('736', 'Huyện Định Quán', 'Huyện', 75),
('737', 'Huyện Trảng Bom', 'Huyện', 75),
('738', 'Huyện Thống Nhất', 'Huyện', 75),
('739', 'Huyện Cẩm Mỹ', 'Huyện', 75),
('740', 'Huyện Long Thành', 'Huyện', 75),
('741', 'Huyện Xuân Lộc', 'Huyện', 75),
('742', 'Huyện Nhơn Trạch', 'Huyện', 75),
('747', 'Thành phố Vũng Tàu', 'Thành phố', 77),
('748', 'Thành phố Bà Rịa', 'Thành phố', 77),
('750', 'Huyện Châu Đức', 'Huyện', 77),
('751', 'Huyện Xuyên Mộc', 'Huyện', 77),
('752', 'Huyện Long Điền', 'Huyện', 77),
('753', 'Huyện Đất Đỏ', 'Huyện', 77),
('754', 'Huyện Tân Thành', 'Huyện', 77),
('755', 'Huyện Côn Đảo', 'Huyện', 77),
('760', 'Quận 1', 'Quận', 79),
('761', 'Quận 12', 'Quận', 79),
('762', 'Quận Thủ Đức', 'Quận', 79),
('763', 'Quận 9', 'Quận', 79),
('764', 'Quận Gò Vấp', 'Quận', 79),
('765', 'Quận Bình Thạnh', 'Quận', 79),
('766', 'Quận Tân Bình', 'Quận', 79),
('767', 'Quận Tân Phú', 'Quận', 79),
('768', 'Quận Phú Nhuận', 'Quận', 79),
('769', 'Quận 2', 'Quận', 79),
('770', 'Quận 3', 'Quận', 79),
('771', 'Quận 10', 'Quận', 79),
('772', 'Quận 11', 'Quận', 79),
('773', 'Quận 4', 'Quận', 79),
('774', 'Quận 5', 'Quận', 79),
('775', 'Quận 6', 'Quận', 79),
('776', 'Quận 8', 'Quận', 79),
('777', 'Quận Bình Tân', 'Quận', 79),
('778', 'Quận 7', 'Quận', 79),
('783', 'Huyện Củ Chi', 'Huyện', 79),
('784', 'Huyện Hóc Môn', 'Huyện', 79),
('785', 'Huyện Bình Chánh', 'Huyện', 79),
('786', 'Huyện Nhà Bè', 'Huyện', 79),
('787', 'Huyện Cần Giờ', 'Huyện', 79),
('794', 'Thành phố Tân An', 'Thành phố', 80),
('795', 'Thị xã Kiến Tường', 'Thị xã', 80),
('796', 'Huyện Tân Hưng', 'Huyện', 80),
('797', 'Huyện Vĩnh Hưng', 'Huyện', 80),
('798', 'Huyện Mộc Hóa', 'Huyện', 80),
('799', 'Huyện Tân Thạnh', 'Huyện', 80),
('800', 'Huyện Thạnh Hóa', 'Huyện', 80),
('801', 'Huyện Đức Huệ', 'Huyện', 80),
('802', 'Huyện Đức Hòa', 'Huyện', 80),
('803', 'Huyện Bến Lức', 'Huyện', 80),
('804', 'Huyện Thủ Thừa', 'Huyện', 80),
('805', 'Huyện Tân Trụ', 'Huyện', 80),
('806', 'Huyện Cần Đước', 'Huyện', 80),
('807', 'Huyện Cần Giuộc', 'Huyện', 80),
('808', 'Huyện Châu Thành', 'Huyện', 80),
('815', 'Thành phố Mỹ Tho', 'Thành phố', 82),
('816', 'Thị xã Gò Công', 'Thị xã', 82),
('817', 'Thị xã Cai Lậy', 'Huyện', 82),
('818', 'Huyện Tân Phước', 'Huyện', 82),
('819', 'Huyện Cái Bè', 'Huyện', 82),
('820', 'Huyện Cai Lậy', 'Thị xã', 82),
('821', 'Huyện Châu Thành', 'Huyện', 82),
('822', 'Huyện Chợ Gạo', 'Huyện', 82),
('823', 'Huyện Gò Công Tây', 'Huyện', 82),
('824', 'Huyện Gò Công Đông', 'Huyện', 82),
('825', 'Huyện Tân Phú Đông', 'Huyện', 82),
('829', 'Thành phố Bến Tre', 'Thành phố', 83),
('831', 'Huyện Châu Thành', 'Huyện', 83),
('832', 'Huyện Chợ Lách', 'Huyện', 83),
('833', 'Huyện Mỏ Cày Nam', 'Huyện', 83),
('834', 'Huyện Giồng Trôm', 'Huyện', 83),
('835', 'Huyện Bình Đại', 'Huyện', 83),
('836', 'Huyện Ba Tri', 'Huyện', 83),
('837', 'Huyện Thạnh Phú', 'Huyện', 83),
('838', 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
('842', 'Thành phố Trà Vinh', 'Thành phố', 84),
('844', 'Huyện Càng Long', 'Huyện', 84),
('845', 'Huyện Cầu Kè', 'Huyện', 84),
('846', 'Huyện Tiểu Cần', 'Huyện', 84),
('847', 'Huyện Châu Thành', 'Huyện', 84),
('848', 'Huyện Cầu Ngang', 'Huyện', 84),
('849', 'Huyện Trà Cú', 'Huyện', 84),
('850', 'Huyện Duyên Hải', 'Huyện', 84),
('851', 'Thị xã Duyên Hải', 'Thị xã', 84),
('855', 'Thành phố Vĩnh Long', 'Thành phố', 86),
('857', 'Huyện Long Hồ', 'Huyện', 86),
('858', 'Huyện Mang Thít', 'Huyện', 86),
('859', 'Huyện  Vũng Liêm', 'Huyện', 86),
('860', 'Huyện Tam Bình', 'Huyện', 86),
('861', 'Thị xã Bình Minh', 'Thị xã', 86),
('862', 'Huyện Trà Ôn', 'Huyện', 86),
('863', 'Huyện Bình Tân', 'Huyện', 86),
('866', 'Thành phố Cao Lãnh', 'Thành phố', 87),
('867', 'Thành phố Sa Đéc', 'Thành phố', 87),
('868', 'Thị xã Hồng Ngự', 'Thị xã', 87),
('869', 'Huyện Tân Hồng', 'Huyện', 87),
('870', 'Huyện Hồng Ngự', 'Huyện', 87),
('871', 'Huyện Tam Nông', 'Huyện', 87),
('872', 'Huyện Tháp Mười', 'Huyện', 87),
('873', 'Huyện Cao Lãnh', 'Huyện', 87),
('874', 'Huyện Thanh Bình', 'Huyện', 87),
('875', 'Huyện Lấp Vò', 'Huyện', 87),
('876', 'Huyện Lai Vung', 'Huyện', 87),
('877', 'Huyện Châu Thành', 'Huyện', 87),
('883', 'Thành phố Long Xuyên', 'Thành phố', 89),
('884', 'Thành phố Châu Đốc', 'Thành phố', 89),
('886', 'Huyện An Phú', 'Huyện', 89),
('887', 'Thị xã Tân Châu', 'Thị xã', 89),
('888', 'Huyện Phú Tân', 'Huyện', 89),
('889', 'Huyện Châu Phú', 'Huyện', 89),
('890', 'Huyện Tịnh Biên', 'Huyện', 89),
('891', 'Huyện Tri Tôn', 'Huyện', 89),
('892', 'Huyện Châu Thành', 'Huyện', 89),
('893', 'Huyện Chợ Mới', 'Huyện', 89),
('894', 'Huyện Thoại Sơn', 'Huyện', 89),
('899', 'Thành phố Rạch Giá', 'Thành phố', 91),
('900', 'Thị xã Hà Tiên', 'Thị xã', 91),
('902', 'Huyện Kiên Lương', 'Huyện', 91),
('903', 'Huyện Hòn Đất', 'Huyện', 91),
('904', 'Huyện Tân Hiệp', 'Huyện', 91),
('905', 'Huyện Châu Thành', 'Huyện', 91),
('906', 'Huyện Giồng Riềng', 'Huyện', 91),
('907', 'Huyện Gò Quao', 'Huyện', 91),
('908', 'Huyện An Biên', 'Huyện', 91),
('909', 'Huyện An Minh', 'Huyện', 91),
('910', 'Huyện Vĩnh Thuận', 'Huyện', 91),
('911', 'Huyện Phú Quốc', 'Huyện', 91),
('912', 'Huyện Kiên Hải', 'Huyện', 91),
('913', 'Huyện U Minh Thượng', 'Huyện', 91),
('914', 'Huyện Giang Thành', 'Huyện', 91),
('916', 'Quận Ninh Kiều', 'Quận', 92),
('917', 'Quận Ô Môn', 'Quận', 92),
('918', 'Quận Bình Thuỷ', 'Quận', 92),
('919', 'Quận Cái Răng', 'Quận', 92),
('923', 'Quận Thốt Nốt', 'Quận', 92),
('924', 'Huyện Vĩnh Thạnh', 'Huyện', 92),
('925', 'Huyện Cờ Đỏ', 'Huyện', 92),
('926', 'Huyện Phong Điền', 'Huyện', 92),
('927', 'Huyện Thới Lai', 'Huyện', 92),
('930', 'Thành phố Vị Thanh', 'Thành phố', 93),
('931', 'Thị xã Ngã Bảy', 'Thị xã', 93),
('932', 'Huyện Châu Thành A', 'Huyện', 93),
('933', 'Huyện Châu Thành', 'Huyện', 93),
('934', 'Huyện Phụng Hiệp', 'Huyện', 93),
('935', 'Huyện Vị Thuỷ', 'Huyện', 93),
('936', 'Huyện Long Mỹ', 'Huyện', 93),
('937', 'Thị xã Long Mỹ', 'Thị xã', 93),
('941', 'Thành phố Sóc Trăng', 'Thành phố', 94),
('942', 'Huyện Châu Thành', 'Huyện', 94),
('943', 'Huyện Kế Sách', 'Huyện', 94),
('944', 'Huyện Mỹ Tú', 'Huyện', 94),
('945', 'Huyện Cù Lao Dung', 'Huyện', 94),
('946', 'Huyện Long Phú', 'Huyện', 94),
('947', 'Huyện Mỹ Xuyên', 'Huyện', 94),
('948', 'Thị xã Ngã Năm', 'Thị xã', 94),
('949', 'Huyện Thạnh Trị', 'Huyện', 94),
('950', 'Thị xã Vĩnh Châu', 'Thị xã', 94),
('951', 'Huyện Trần Đề', 'Huyện', 94),
('954', 'Thành phố Bạc Liêu', 'Thành phố', 95),
('956', 'Huyện Hồng Dân', 'Huyện', 95),
('957', 'Huyện Phước Long', 'Huyện', 95),
('958', 'Huyện Vĩnh Lợi', 'Huyện', 95),
('959', 'Thị xã Giá Rai', 'Thị xã', 95),
('960', 'Huyện Đông Hải', 'Huyện', 95),
('961', 'Huyện Hoà Bình', 'Huyện', 95),
('964', 'Thành phố Cà Mau', 'Thành phố', 96),
('966', 'Huyện U Minh', 'Huyện', 96),
('967', 'Huyện Thới Bình', 'Huyện', 96),
('968', 'Huyện Trần Văn Thời', 'Huyện', 96),
('969', 'Huyện Cái Nước', 'Huyện', 96),
('970', 'Huyện Đầm Dơi', 'Huyện', 96),
('971', 'Huyện Năm Căn', 'Huyện', 96),
('972', 'Huyện Phú Tân', 'Huyện', 96),
('973', 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `created_at`, `updated_at`) VALUES
(14, 'ghtk chi nhánh 61', 'hai duong province', '7321234', 'abc@mail.com', NULL, NULL),
(15, 'ghtk chi nhánh 47', 'ha noi province', '7321234', 'abc@mail.com', NULL, NULL),
(16, 'be chi nhanh 12', 'ha noi', '7321234', 'abc@mail.com', NULL, NULL),
(17, 'be chi nhanh 12', 'ha noi', '7321234', 'abc@mail.com', NULL, NULL),
(18, 'Giao hang tiet kiem', 'hai duong province', '7321234', 'abc@mail.com', NULL, NULL),
(19, 'ghtk', 'phu tho', '01345', 'chien@mail.com', NULL, NULL),
(20, 'ghtk chi nhánh 47', 'ha noi province', '7321234', 'abc@mail.com', NULL, NULL),
(21, 'Giao hang tiet kiem', 'hai duong province', '7321234', 'abc@mail.com', NULL, NULL),
(22, 'Giao hang tiet kiem', 'hai duong province', '7321234', 'abc@mail.com', NULL, NULL),
(23, 'gojek', 'town', '19032281', 'gojek@mail.com', NULL, NULL),
(24, 'ghtk chi nhánh 61', 'ha noi province', '7321234', 'abc@mail.com', NULL, NULL),
(25, 'gojek', 'ha noi', '7321234', 'abc@mail.com', NULL, NULL),
(26, 'ghtk chi nhánh 61', 'hai duong province', '7321234', 'abc@mail.com', NULL, NULL),
(27, 'Giao hang tiet kiem', 'hai duong province', '7321234', 'abc@mail.com', NULL, NULL),
(28, 'ghtk chi nhánh 47', 'hai duong province', '7321234', 'abc@mail.com', NULL, NULL),
(29, 'be chi nhanh 12', 'ha noi', '7321234', 'abc@mail.com', NULL, NULL),
(30, 'be chi nhanh 12', 'ha noi', '7321234', 'abc@mail.com', NULL, NULL),
(31, 'be chi nhanh 12', 'hai duong province', '7321234', 'abc@mail.com', NULL, NULL),
(32, 'ladaza', 'hanoi', '38005', 'abc@mail.com', NULL, NULL),
(33, 'tiki now', 'hai duong province', '7321234', 'abc@mail.com', NULL, NULL),
(34, 'ghtk chi nhánh 61', 'hai duong province', '7321234', 'abc@mail.com', NULL, NULL),
(35, 'tiki now', 'hai duong province', '7321234', 'abc@mail.com', NULL, NULL),
(36, 'tiki now', 'hai duong province', '7321234', 'abc@mail.com', NULL, NULL),
(37, 'be chi nhanh 12', 'ha noi', '7321234', 'abc@mail.com', NULL, NULL),
(38, 'Giao hang nhanh', 'kang son', '233434423', 'ghn@mail.com', NULL, NULL),
(39, 'be chi nhanh 12', 'ha noi', '7321234', 'abc@mail.com', NULL, NULL),
(40, 'giao hang nhanh', 'hà tĩnh', '0963933201', 'ghn@mail.com', NULL, NULL),
(41, 'now', 'ukraina', '65432', 'now@mail.com', NULL, NULL),
(42, 'ghn', 'ha nam', '23231', 'ghn@mail.com', NULL, NULL),
(43, 'Shopee Express', 'Hanoi', '234567654', 'shopee_exp@mail.com', NULL, NULL),
(44, 'Quỳnh', 'quang ninh', '23232323', 'quynh@mail.com', NULL, NULL),
(45, 'Shopee Exp', 'hà nam', '09999', 'abc@mail.com', NULL, NULL),
(46, 'tikinow', 'hà nam', '554455', 'tiki@mail.com', NULL, NULL),
(47, 'giao hàng nhanh', '159 nguyễn khuyến, quận phú mỹ tỉnh phú hưng', '061 558 0710', 'giaohangnhanh@mail.com', NULL, NULL),
(48, 'giao hàng nhanh', '159 nguyễn khuyến, quận phú mỹ tỉnh phú hưng', '0615580710', 'giaohangnhanh@mail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tinhthanhpho`
--

CREATE TABLE `tbl_tinhthanhpho` (
  `matp` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name_city` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tbl_tinhthanhpho`
--

INSERT INTO `tbl_tinhthanhpho` (`matp`, `name_city`, `type`) VALUES
('01', 'Thành phố Hà Nội', 'Thành phố Trung ương'),
('02', 'Tỉnh Hà Giang', 'Tỉnh'),
('04', 'Tỉnh Cao Bằng', 'Tỉnh'),
('06', 'Tỉnh Bắc Kạn', 'Tỉnh'),
('08', 'Tỉnh Tuyên Quang', 'Tỉnh'),
('10', 'Tỉnh Lào Cai', 'Tỉnh'),
('11', 'Tỉnh Điện Biên', 'Tỉnh'),
('12', 'Tỉnh Lai Châu', 'Tỉnh'),
('14', 'Tỉnh Sơn La', 'Tỉnh'),
('15', 'Tỉnh Yên Bái', 'Tỉnh'),
('17', 'Tỉnh Hoà Bình', 'Tỉnh'),
('19', 'Tỉnh Thái Nguyên', 'Tỉnh'),
('20', 'Tỉnh Lạng Sơn', 'Tỉnh'),
('22', 'Tỉnh Quảng Ninh', 'Tỉnh'),
('24', 'Tỉnh Bắc Giang', 'Tỉnh'),
('25', 'Tỉnh Phú Thọ', 'Tỉnh'),
('26', 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
('27', 'Tỉnh Bắc Ninh', 'Tỉnh'),
('30', 'Tỉnh Hải Dương', 'Tỉnh'),
('31', 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
('33', 'Tỉnh Hưng Yên', 'Tỉnh'),
('34', 'Tỉnh Thái Bình', 'Tỉnh'),
('35', 'Tỉnh Hà Nam', 'Tỉnh'),
('36', 'Tỉnh Nam Định', 'Tỉnh'),
('37', 'Tỉnh Ninh Bình', 'Tỉnh'),
('38', 'Tỉnh Thanh Hóa', 'Tỉnh'),
('40', 'Tỉnh Nghệ An', 'Tỉnh'),
('42', 'Tỉnh Hà Tĩnh', 'Tỉnh'),
('44', 'Tỉnh Quảng Bình', 'Tỉnh'),
('45', 'Tỉnh Quảng Trị', 'Tỉnh'),
('46', 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
('48', 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
('49', 'Tỉnh Quảng Nam', 'Tỉnh'),
('51', 'Tỉnh Quảng Ngãi', 'Tỉnh'),
('52', 'Tỉnh Bình Định', 'Tỉnh'),
('54', 'Tỉnh Phú Yên', 'Tỉnh'),
('56', 'Tỉnh Khánh Hòa', 'Tỉnh'),
('58', 'Tỉnh Ninh Thuận', 'Tỉnh'),
('60', 'Tỉnh Bình Thuận', 'Tỉnh'),
('62', 'Tỉnh Kon Tum', 'Tỉnh'),
('64', 'Tỉnh Gia Lai', 'Tỉnh'),
('66', 'Tỉnh Đắk Lắk', 'Tỉnh'),
('67', 'Tỉnh Đắk Nông', 'Tỉnh'),
('68', 'Tỉnh Lâm Đồng', 'Tỉnh'),
('70', 'Tỉnh Bình Phước', 'Tỉnh'),
('72', 'Tỉnh Tây Ninh', 'Tỉnh'),
('74', 'Tỉnh Bình Dương', 'Tỉnh'),
('75', 'Tỉnh Đồng Nai', 'Tỉnh'),
('77', 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
('79', 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
('80', 'Tỉnh Long An', 'Tỉnh'),
('82', 'Tỉnh Tiền Giang', 'Tỉnh'),
('83', 'Tỉnh Bến Tre', 'Tỉnh'),
('84', 'Tỉnh Trà Vinh', 'Tỉnh'),
('86', 'Tỉnh Vĩnh Long', 'Tỉnh'),
('87', 'Tỉnh Đồng Tháp', 'Tỉnh'),
('89', 'Tỉnh An Giang', 'Tỉnh'),
('91', 'Tỉnh Kiên Giang', 'Tỉnh'),
('92', 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
('93', 'Tỉnh Hậu Giang', 'Tỉnh'),
('94', 'Tỉnh Sóc Trăng', 'Tỉnh'),
('95', 'Tỉnh Bạc Liêu', 'Tỉnh'),
('96', 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand_product`
--
ALTER TABLE `tbl_brand_product`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_post`
--
ALTER TABLE `tbl_category_post`
  ADD PRIMARY KEY (`cate_post_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_fee`
--
ALTER TABLE `tbl_fee`
  ADD PRIMARY KEY (`fee_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_quanhuyen`
--
ALTER TABLE `tbl_quanhuyen`
  ADD PRIMARY KEY (`maqh`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `tbl_tinhthanhpho`
--
ALTER TABLE `tbl_tinhthanhpho`
  ADD PRIMARY KEY (`matp`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand_product`
--
ALTER TABLE `tbl_brand_product`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_category_post`
--
ALTER TABLE `tbl_category_post`
  MODIFY `cate_post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `tbl_fee`
--
ALTER TABLE `tbl_fee`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
