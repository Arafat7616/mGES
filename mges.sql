-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 08, 2022 at 01:52 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mges`
--

-- --------------------------------------------------------

--
-- Table structure for table `activated_candidates`
--

CREATE TABLE `activated_candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED NOT NULL,
  `present_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welfare_center_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adr_services`
--

CREATE TABLE `adr_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `candidate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adr_services`
--

INSERT INTO `adr_services` (`id`, `candidate_id`, `company_id`, `wsc_id`, `candidate_name`, `company_name`, `service_type`, `comments`, `service_status`, `created_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 11, 8, 6, 'Genevieve Mayer PhD', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '14', NULL, '2022-03-08 12:52:22', NULL),
(2, 12, 8, 6, 'Yessenia Dibbert', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '19', NULL, '2022-03-08 12:52:22', NULL),
(3, 12, 8, 6, 'Emery Abbott', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '13', NULL, '2022-03-08 12:52:22', NULL),
(4, 16, 8, 6, 'Prof. Floyd Hegmann DVM', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '17', NULL, '2022-03-08 12:52:22', NULL),
(5, 13, 8, 6, 'Cielo Welch', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '12', NULL, '2022-03-08 12:52:22', NULL),
(6, 16, 8, 6, 'Dr. Jeanie Pfeffer', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '18', NULL, '2022-03-08 12:52:22', NULL),
(7, 17, 8, 6, 'Dejon Murray', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '16', NULL, '2022-03-08 12:52:22', NULL),
(8, 11, 8, 6, 'Ulices Dibbert', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '17', NULL, '2022-03-08 12:52:22', NULL),
(9, 18, 8, 6, 'Dr. Lazaro Olson', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '17', NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `amnesty_services`
--

CREATE TABLE `amnesty_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amnesty_application` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` double(8,2) DEFAULT NULL,
  `delivery_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amnesty_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amnesty_services`
--

INSERT INTO `amnesty_services` (`id`, `candidate_id`, `company_id`, `wsc_id`, `service_type`, `cpr`, `amnesty_application`, `comments`, `service_status`, `delivery_status`, `delivery_charge`, `fees`, `delivery_to`, `amnesty_pdf`, `delivery_type`, `created_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 13, 8, 6, 'Demo service 11', '332235', NULL, 'Demo Comments', 'Paid', 'Open', '11', 14.00, 'Banani Dhaka', NULL, 'Door delivery', '19', NULL, '2022-03-08 12:52:22', NULL),
(2, 19, 8, 6, 'Demo service 12', '466579', NULL, 'Demo Comments', 'Paid', 'Open', '12', 18.00, 'Banani Dhaka', NULL, 'Door delivery', '16', NULL, '2022-03-08 12:52:22', NULL),
(3, 14, 8, 6, 'Demo service 13', '428692', NULL, 'Demo Comments', 'Paid', 'Open', '11', 12.00, 'Banani Dhaka', NULL, 'Door delivery', '13', NULL, '2022-03-08 12:52:22', NULL),
(4, 18, 8, 6, 'Demo service 14', '230659', NULL, 'Demo Comments', 'Paid', 'Open', '12', 15.00, 'Banani Dhaka', NULL, 'Door delivery', '13', NULL, '2022-03-08 12:52:22', NULL),
(5, 18, 8, 6, 'Demo service 15', '200323', NULL, 'Demo Comments', 'Paid', 'Open', '12', 16.00, 'Banani Dhaka', NULL, 'Door delivery', '11', NULL, '2022-03-08 12:52:22', NULL),
(6, 17, 8, 6, 'Demo service 16', '239005', NULL, 'Demo Comments', 'Paid', 'Open', '14', 16.00, 'Banani Dhaka', NULL, 'Door delivery', '14', NULL, '2022-03-08 12:52:22', NULL),
(7, 11, 8, 6, 'Demo service 17', '171734', NULL, 'Demo Comments', 'Paid', 'Open', '19', 13.00, 'Banani Dhaka', NULL, 'Door delivery', '16', NULL, '2022-03-08 12:52:22', NULL),
(8, 18, 8, 6, 'Demo service 18', '188837', NULL, 'Demo Comments', 'Paid', 'Open', '15', 12.00, 'Banani Dhaka', NULL, 'Door delivery', '16', NULL, '2022-03-08 12:52:22', NULL),
(9, 13, 8, 6, 'Demo service 19', '257004', NULL, 'Demo Comments', 'Paid', 'Open', '16', 13.00, 'Banani Dhaka', NULL, 'Door delivery', '15', NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applied_jobs`
--

CREATE TABLE `applied_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_post_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `applier_id` bigint(20) UNSIGNED NOT NULL,
  `selected_medical_id` bigint(20) UNSIGNED DEFAULT NULL,
  `selected_training_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_vacancy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applied_vacancy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applier_agency_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_vacancy` int(11) DEFAULT NULL,
  `approved_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_id` int(11) DEFAULT NULL,
  `approved_remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applied_jobs`
--

INSERT INTO `applied_jobs` (`id`, `job_post_id`, `company_id`, `applier_id`, `selected_medical_id`, `selected_training_id`, `job_vacancy`, `applied_vacancy`, `remarks`, `applier_agency_name`, `datetime`, `status`, `approved_by`, `approved_vacancy`, `approved_date`, `approved_company_name`, `approved_id`, `approved_remarks`, `created_at`, `updated_at`) VALUES
(1, 11, 6, 3, 7, 5, '47', '45', NULL, 'nj9uzepn6q', '2022-03-08 18:52:20', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 12, 6, 3, 1, 1, '37', '35', NULL, 'd36rdKlhXJ', '2022-03-08 18:52:20', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 13, 6, 3, 7, 7, '47', '45', NULL, 'pZpLOdq1Z2', '2022-03-08 18:52:20', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 14, 6, 3, 6, 8, '29', '27', NULL, '7cDVF7BvWq', '2022-03-08 18:52:20', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 15, 6, 3, 3, 7, '25', '23', NULL, '9XcI3EqXup', '2022-03-08 18:52:20', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 16, 6, 3, 4, 6, '46', '44', NULL, 'VKefBJMrQO', '2022-03-08 18:52:20', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 17, 6, 3, 3, 7, '24', '22', NULL, '2udt9Gdfw6', '2022-03-08 18:52:20', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 18, 6, 3, 4, 4, '30', '28', NULL, 'ayXkUIDjcg', '2022-03-08 18:52:20', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 19, 6, 3, 1, 6, '23', '21', NULL, '4lIs731B4k', '2022-03-08 18:52:20', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 20, 6, 3, 6, 10, '38', '36', NULL, 'rO7Gyk1Guv', '2022-03-08 18:52:20', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 21, 6, 3, 5, 2, '41', '39', 'SoJnK4TsOf', 'ieHJ2cB85g', '2022-03-08 18:52:20', 'Approved', 'Bangladesh High Commission ', 37, '2022-03-08 18:52:20', 'VthQTeKTF7', 7, 'zNef1i5A1H', NULL, NULL),
(12, 22, 6, 3, 8, 6, '40', '38', '09WdDtOdSu', 'u4q5G45fxr', '2022-03-08 18:52:20', 'Approved', 'Bangladesh High Commission ', 36, '2022-03-08 18:52:20', 'fJXQIblp6d', 7, 'vT9kuCBdyK', NULL, NULL),
(13, 23, 6, 3, 9, 1, '46', '44', 'gdmQnerhGy', 'EqMalAZ4yh', '2022-03-08 18:52:20', 'Approved', 'Bangladesh High Commission ', 42, '2022-03-08 18:52:20', 'pWOljiB51r', 7, 'mQBZolRSPS', NULL, NULL),
(14, 24, 6, 3, 8, 5, '44', '42', 'IzwDXqPiwI', 'VBGeZbbmOh', '2022-03-08 18:52:20', 'Approved', 'Bangladesh High Commission ', 40, '2022-03-08 18:52:20', 'evXfYivK9w', 7, 'dDpPVU7lwF', NULL, NULL),
(15, 25, 6, 3, 1, 2, '37', '35', 'A9AJnPeydS', 'lZa25Lc02O', '2022-03-08 18:52:20', 'Approved', 'Bangladesh High Commission ', 33, '2022-03-08 18:52:20', 'NY0aqh59KE', 7, 'yFR9ulYdzR', NULL, NULL),
(16, 26, 6, 3, 8, 9, '35', '33', 'OMQL2s2V2M', 'rWZyIJvstu', '2022-03-08 18:52:20', 'Approved', 'Bangladesh High Commission ', 31, '2022-03-08 18:52:20', 'Qxs5pvbtCT', 7, '9jQ1N0atOa', NULL, NULL),
(17, 27, 6, 3, 6, 2, '37', '35', '7AmBitZaGT', 'EPm2111Aaw', '2022-03-08 18:52:20', 'Approved', 'Bangladesh High Commission ', 33, '2022-03-08 18:52:20', 'eqJrceFDFj', 7, 'w1QmsyHBjR', NULL, NULL),
(18, 28, 6, 3, 10, 1, '47', '45', 'U1PzRWqUs7', 'bJxUc0gGLW', '2022-03-08 18:52:20', 'Approved', 'Bangladesh High Commission ', 43, '2022-03-08 18:52:20', 'VFRy60NdvU', 7, '5H4UyQaClG', NULL, NULL),
(19, 29, 6, 3, 2, 6, '25', '23', 'YsIOxLn4AE', 'QhiQEoBMVy', '2022-03-08 18:52:20', 'Approved', 'Bangladesh High Commission ', 21, '2022-03-08 18:52:20', 'vBukPJvWFR', 7, 'Fkyh6VszzW', NULL, NULL),
(20, 30, 6, 3, 8, 5, '45', '43', 'FUcdBI8jeO', 'SZfeIoVN6X', '2022-03-08 18:52:20', 'Approved', 'Bangladesh High Commission ', 41, '2022-03-08 18:52:20', '0hc17VDDUh', 7, '4KrLS48e9o', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attestation_certificates`
--

CREATE TABLE `attestation_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED NOT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `delivery_charge` double(8,2) DEFAULT NULL,
  `delivery_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attestation_certificates`
--

INSERT INTO `attestation_certificates` (`id`, `candidate_id`, `company_id`, `wsc_id`, `service_type`, `comments`, `service_status`, `fees`, `delivery_charge`, `delivery_type`, `delivery_to`, `document`, `legal_status`, `created_id`, `delivery_status`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 13, 8, 6, 'Demo service 11', 'Demo Comments', 'Approved', 123, 1455.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 15, '17', NULL, '2022-03-08 12:52:22', NULL),
(2, 17, 8, 6, 'Demo service 12', 'Demo Comments', 'Approved', 200, 1379.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 18, '12', NULL, '2022-03-08 12:52:22', NULL),
(3, 15, 8, 6, 'Demo service 13', 'Demo Comments', 'Approved', 122, 1375.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 15, '16', NULL, '2022-03-08 12:52:22', NULL),
(4, 18, 8, 6, 'Demo service 14', 'Demo Comments', 'Approved', 134, 1870.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 18, '12', NULL, '2022-03-08 12:52:22', NULL),
(5, 12, 8, 6, 'Demo service 15', 'Demo Comments', 'Approved', 168, 1595.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 19, '14', NULL, '2022-03-08 12:52:22', NULL),
(6, 18, 8, 6, 'Demo service 16', 'Demo Comments', 'Approved', 137, 1060.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 19, '14', NULL, '2022-03-08 12:52:22', NULL),
(7, 12, 8, 6, 'Demo service 17', 'Demo Comments', 'Approved', 104, 1144.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 18, '16', NULL, '2022-03-08 12:52:22', NULL),
(8, 14, 8, 6, 'Demo service 18', 'Demo Comments', 'Approved', 149, 1622.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 18, '16', NULL, '2022-03-08 12:52:22', NULL),
(9, 17, 8, 6, 'Demo service 19', 'Demo Comments', 'Approved', 140, 1971.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 11, '13', NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `awareness_events`
--

CREATE TABLE `awareness_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_category_id` int(11) DEFAULT NULL,
  `event_agenda` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conducted_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `event_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_r_a_interests`
--

CREATE TABLE `b_r_a_interests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bra_id` int(11) DEFAULT NULL,
  `job_post_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `b_r_a_interests`
--

INSERT INTO `b_r_a_interests` (`id`, `bra_id`, `job_post_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 28, 31, 1, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(2, 35, 31, 1, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(3, 28, 31, 1, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(4, 29, 31, 1, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(5, 30, 31, 1, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(6, 31, 31, 1, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(7, 32, 31, 1, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(8, 33, 31, 1, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(9, 34, 31, 1, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(10, 36, 31, 1, '2022-03-08 12:52:22', '2022-03-08 12:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `job_category_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pre_medical_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pre_training_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pre_biomatric_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pre_medical_status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = Pending , 1 = Passed , 2 = Failed ',
  `pre_training_status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = Pending , 1 = Passed , 2 = Failed ',
  `pre_biomatric_status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = Pending , 1 = Passed , 2 = Failed ',
  `ready_to_travel` int(11) NOT NULL DEFAULT 0,
  `selected_osc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `present_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_medical_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_traning_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_medical_report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_training_report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_medical_comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_training_comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approval_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_assigned` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Active',
  `result_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New' COMMENT 'New',
  `permission_status` int(11) NOT NULL DEFAULT 0 COMMENT '1 = single stop center passed, 2 = calling visa approved',
  `sending_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_letter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employer_comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offered_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `role_id`, `job_category_id`, `job_id`, `company_id`, `pre_medical_id`, `pre_training_id`, `pre_biomatric_id`, `pre_medical_status`, `pre_training_status`, `pre_biomatric_status`, `ready_to_travel`, `selected_osc_id`, `present_address`, `permanent_address`, `candidate_name`, `father_name`, `mother_name`, `nationality`, `candidate_dob`, `candidate_gender`, `passport_number`, `phone_number`, `candidate_email`, `candidate_password`, `country`, `pre_medical_certificate`, `pre_traning_certificate`, `pre_medical_report`, `pre_training_report`, `created_by`, `updated_by`, `pre_medical_comments`, `pre_training_comments`, `approval_status`, `payment_assigned`, `status`, `result_status`, `permission_status`, `sending_status`, `offer_letter`, `employer_comments`, `offered_status`, `created_id`, `updated_id`, `created_at`, `updated_at`) VALUES
(1, 15, 9, 8, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Telly Sporer', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'hYFw8s8hipHAgj1LsN', '01856230550', 'candidate0@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, 3, NULL, '2022-03-08 12:52:20', NULL),
(2, 15, 1, 8, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Mckenna Haley', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'xg4LprTuDhmdUopxZB', '01856230551', 'candidate1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, 3, NULL, '2022-03-08 12:52:20', NULL),
(3, 15, 3, 9, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Bonita Larkin', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'P4NWWUCYNejmc2eqz1', '01856230552', 'candidate2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, 3, NULL, '2022-03-08 12:52:20', NULL),
(4, 15, 4, 4, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Kip Murray', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'CGL6rqdFEqcOK6yCMe', '01856230553', 'candidate3@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, 3, NULL, '2022-03-08 12:52:20', NULL),
(5, 15, 8, 9, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Joannie Kerluke II', NULL, NULL, 'bangladesh', '2021-30-07', 'male', '4AMEyB4HTUdPHLaqHN', '01856230554', 'candidate4@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, 3, NULL, '2022-03-08 12:52:20', NULL),
(6, 15, 4, 7, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Lennie Carroll', NULL, NULL, 'bangladesh', '2021-30-07', 'male', '5nVVkrVRkXSJdsOKNr', '01856230555', 'candidate5@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, 3, NULL, '2022-03-08 12:52:20', NULL),
(7, 15, 7, 8, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Aisha Ortiz', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'Mk95sXVUZxThqpBDVJ', '01856230556', 'candidate6@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, 3, NULL, '2022-03-08 12:52:20', NULL),
(8, 15, 10, 4, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. Mohammed Yost PhD', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'VPwsSsvEnSB1FLRqM5', '01856230557', 'candidate7@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, 3, NULL, '2022-03-08 12:52:20', NULL),
(9, 15, 10, 1, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Kacie Sauer', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'drf3EqWByHkf0yOaxw', '01856230558', 'candidate8@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, 3, NULL, '2022-03-08 12:52:20', NULL),
(10, 15, 4, 7, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Kian Stoltenberg', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'vNYVQg3RHpgIkcJptK', '01856230559', 'candidate9@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, 3, NULL, '2022-03-08 12:52:20', NULL),
(11, 15, 12, 21, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Micaela Veum IV', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'mm0BujmG7wSYfeO4R2', '01850030511', 'candidate11@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, 3, NULL, '2022-03-08 12:52:20', NULL),
(12, 15, 12, 21, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Ara McDermott III', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'xANJJhREHVbT9y1Xkd', '01850030512', 'candidate12@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, 3, NULL, '2022-03-08 12:52:20', NULL),
(13, 15, 12, 21, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Mrs. Marion King', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'GCSKf27RvJbAsgX7fK', '01850030513', 'candidate13@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, 3, NULL, '2022-03-08 12:52:20', NULL),
(14, 15, 12, 21, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Jakayla Kozey', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'jWTVmiollW9z9dMvF0', '01850030514', 'candidate14@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, 3, NULL, '2022-03-08 12:52:20', NULL),
(15, 15, 12, 21, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Adele Metz', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'odyaJn4dgetbuRYlyG', '01850030515', 'candidate15@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, 3, NULL, '2022-03-08 12:52:20', NULL),
(16, 15, 12, 21, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. Efrain Oberbrunner', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'TSPvS9Wfw0z7AKMCSe', '01850030516', 'candidate16@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, 3, NULL, '2022-03-08 12:52:20', NULL),
(17, 15, 12, 21, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Zoila Rolfson Sr.', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'IYbRzfl4ny38qI1tia', '01850030517', 'candidate17@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, 3, NULL, '2022-03-08 12:52:20', NULL),
(18, 15, 12, 21, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Theresa Block II', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'whw271RNvocUy2MuJq', '01850030518', 'candidate18@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, 3, NULL, '2022-03-08 12:52:20', NULL),
(19, 15, 12, 21, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'bahrain', 'Milford Roberts', NULL, NULL, 'bangladesh', '2021-30-07', 'male', 'Q6s0Kdfsv7RHGVtwNg', '01850030519', 'candidate19@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, 3, NULL, '2022-03-08 12:52:20', NULL),
(20, 15, 1, 24, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kristopher Hickle V', NULL, NULL, 'bangladesh', '1986-08-05 23:51:38', 'male', 'mqMYZpjzjjN73VpGj7', '+1 (320) 482-6262', 'klocko.mallory@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(21, 15, 10, 18, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Simone Larson', NULL, NULL, 'bangladesh', '1994-06-21 15:24:33', 'male', 'C16WgLUeTU066qOH7a', '+14146173978', 'ycartwright@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(22, 15, 4, 21, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Hollie Wolf', NULL, NULL, 'bangladesh', '1998-01-19 18:33:18', 'female', 'vdtsUKwZSJAqisbRZX', '848.468.6896', 'sigrid.halvorson@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(23, 15, 1, 5, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Chloe Aufderhar', NULL, NULL, 'bangladesh', '1990-10-28 09:27:02', 'male', 'KxdeX8IXNPW8UVT11G', '+1.458.925.7437', 'jacey29@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(24, 15, 1, 20, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Danial Mann', NULL, NULL, 'bangladesh', '2000-01-01 08:02:03', 'female', '5aI4d3S6WgXY9Phq2F', '469.694.8901', 'hand.ursula@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(25, 15, 3, 9, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Candice Bashirian', NULL, NULL, 'bangladesh', '1991-06-09 05:50:30', 'male', 'c8BYTc75ejVTQdVDhf', '541-603-2427', 'isabella41@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(26, 15, 1, 7, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Enos Marquardt IV', NULL, NULL, 'bangladesh', '1987-05-18 09:56:32', 'female', 'YzT0VzAal9sPP6LRE9', '+1.936.544.0444', 'zbecker@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(27, 15, 5, 2, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gunnar Schultz', NULL, NULL, 'bangladesh', '1986-11-28 06:09:27', 'male', '7GqHImQwElPrFask8g', '+1-585-340-3158', 'federico.christiansen@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(28, 15, 11, 10, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Matilde Kuhn', NULL, NULL, 'bangladesh', '1985-04-02 08:04:22', 'female', 'Cg33UGPv7WGdiVfSh5', '539.671.9622', 'dietrich.ansley@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(29, 15, 5, 12, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jerrod Metz', NULL, NULL, 'bangladesh', '1985-03-29 19:15:40', 'female', 'awlQ7DpgSdBvWGAkmZ', '320-326-2536', 'angelica10@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(30, 15, 6, 12, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Neha Haley V', NULL, NULL, 'bangladesh', '1983-12-17 09:14:41', 'male', 'r52RVMQdYAwLGyfyyv', '386.670.2770', 'lind.lucinda@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(31, 15, 7, 15, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Virginia Douglas', NULL, NULL, 'bangladesh', '1996-03-30 02:31:07', 'male', 'fUMNzih3dNtGfwLFlB', '+1-239-332-3898', 'lmurray@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(32, 15, 10, 20, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eleazar Buckridge', NULL, NULL, 'bangladesh', '1991-08-19 14:51:24', 'male', '1k3f1CSZqIEBGl03S1', '615.378.4043', 'oleta.corkery@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(33, 15, 7, 4, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Abigayle Heathcote', NULL, NULL, 'bangladesh', '1999-01-31 05:57:42', 'female', '7odKO0AQ6PNOlfUy0X', '+1-520-546-9030', 'nstehr@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(34, 15, 12, 3, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Stuart Heathcote I', NULL, NULL, 'bangladesh', '1989-11-13 10:46:24', 'female', '2c681QrjPutMJ0yUo7', '458.273.4449', 'vswaniawski@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(35, 15, 7, 11, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bertrand Williamson', NULL, NULL, 'bangladesh', '1982-04-05 09:15:09', 'female', 'rbdb6hcfNo5gPqcOV4', '+19784850524', 'tfunk@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(36, 15, 9, 8, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jettie Sauer', NULL, NULL, 'bangladesh', '1995-10-02 23:53:47', 'female', 'DkQoVIjgAsDW5Q4nYR', '+1-786-934-6888', 'mcglynn.haskell@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(37, 15, 8, 24, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Enos Dietrich Sr.', NULL, NULL, 'bangladesh', '1995-04-17 07:04:34', 'male', 'VZGFm2Mo45Wa1AKFR7', '+17084494695', 'callie44@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(38, 15, 9, 13, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Alexane Abshire III', NULL, NULL, 'bangladesh', '1995-07-14 15:52:21', 'male', 'S7bHyryQJiXJnVXl0d', '458.259.6149', 'koepp.willa@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(39, 15, 2, 17, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Adelbert Stiedemann I', NULL, NULL, 'bangladesh', '1996-10-18 10:56:43', 'female', 'pdSNEilGGxw1Q0zW7s', '1-503-390-7934', 'cblock@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(40, 15, 6, 8, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Michele Nitzsche', NULL, NULL, 'bangladesh', '1990-04-25 21:48:50', 'female', 'bKCeAHHx980vfuyDsU', '308-378-9622', 'zsatterfield@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(41, 15, 8, 25, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. April Abshire PhD', NULL, NULL, 'bangladesh', '1986-05-17 18:40:51', 'female', '6Ylb9QKuXzDiI1Qu5f', '+1-240-401-1428', 'sporer.cayla@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(42, 15, 9, 23, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Sigmund Lowe', NULL, NULL, 'bangladesh', '1990-05-08 16:31:02', 'female', '6ssJuivQueLGdHQCl6', '+13526837632', 'vivian.pollich@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(43, 15, 12, 15, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prudence Mayer', NULL, NULL, 'bangladesh', '1987-09-26 06:06:20', 'female', 'r9gOoFXwRGkrJ2YU96', '443.280.1573', 'emmanuelle.hermann@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(44, 15, 7, 3, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tommie Wiza', NULL, NULL, 'bangladesh', '2000-02-25 06:42:31', 'female', 'LNb6MHk75DQSPzA3wQ', '+1 (646) 474-2249', 'ifisher@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(45, 15, 7, 1, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aditya Schamberger', NULL, NULL, 'bangladesh', '1982-10-05 02:27:05', 'female', 'F1F4XSvv54UJGZzTiT', '505-582-3581', 'hermiston.darren@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(46, 15, 2, 9, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Monroe Ledner', NULL, NULL, 'bangladesh', '1989-08-02 14:15:12', 'male', 'ZpMQkbv3BZzkNtM2Cq', '1-678-472-3440', 'eloisa45@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(47, 15, 3, 16, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Warren Rowe', NULL, NULL, 'bangladesh', '1991-07-15 19:46:59', 'female', 'HO8XSJhUwWmCsNtAiw', '+1-971-599-7394', 'pagac.casey@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(48, 15, 3, 24, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bonita Prohaska', NULL, NULL, 'bangladesh', '2000-01-30 22:37:56', 'male', 'WAgkH90A4swtgwWtwm', '620-524-7512', 'champlin.clovis@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(49, 15, 13, 7, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Osbaldo Lemke PhD', NULL, NULL, 'bangladesh', '1986-09-17 01:06:20', 'male', 'Db8XSwVdrQBTMdcqLN', '1-832-448-5995', 'lang.pietro@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(50, 15, 9, 21, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Oceane Yundt', NULL, NULL, 'bangladesh', '1988-02-23 18:38:49', 'female', 'vGbmRfPMQ1N8NPYDJy', '+1.650.331.9565', 'schoen.nat@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(51, 15, 5, 1, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kelley Goyette', NULL, NULL, 'bangladesh', '1983-11-27 18:22:54', 'female', 'AxLNj7ucu2LnKLhrJt', '952.573.9769', 'nlubowitz@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(52, 15, 13, 17, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Chesley Langworth DDS', NULL, NULL, 'bangladesh', '1993-06-24 12:28:25', 'male', 'e4nJ2yxW9c8P0gk4oh', '+1-620-824-9645', 'xreichert@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(53, 15, 3, 7, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bridie Boyle', NULL, NULL, 'bangladesh', '2001-01-02 11:52:03', 'male', 'LjomL4uAc6DorPpuv2', '341.627.9957', 'hyatt.sabina@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(54, 15, 12, 25, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hilario Lebsack', NULL, NULL, 'bangladesh', '1996-08-26 00:04:12', 'male', 'TPrktyGas8RiPMvWAJ', '281.603.8161', 'huel.milo@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(55, 15, 4, 19, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Colleen Dicki', NULL, NULL, 'bangladesh', '1984-05-30 02:37:27', 'male', 'crrxdVZVPoeEOV1Y9y', '(848) 991-6917', 'rosalinda50@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(56, 15, 3, 18, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ignacio Hand MD', NULL, NULL, 'bangladesh', '1984-12-05 07:06:58', 'male', '2vGCTRmMXeNQUGCvg1', '1-530-638-5769', 'grayce.skiles@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(57, 15, 9, 2, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alvera Sawayn I', NULL, NULL, 'bangladesh', '1984-05-19 14:14:45', 'male', 'Gzz06cr4YJs219bekW', '+1-636-420-1550', 'edna08@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(58, 15, 1, 22, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Adrain Kassulke', NULL, NULL, 'bangladesh', '1991-09-28 19:44:46', 'female', 'BRHizxjIDGGoczK6Jc', '213-705-0610', 'nikki74@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(59, 15, 6, 12, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Angus Hyatt', NULL, NULL, 'bangladesh', '1991-03-27 18:48:06', 'female', 'KKRofzHFySdlnH0pjq', '1-551-712-1315', 'sipes.elena@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(60, 15, 3, 12, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cornell Glover', NULL, NULL, 'bangladesh', '1988-11-22 13:34:55', 'male', 'JviobwHV9GrDxa0fyi', '805-839-1501', 'leannon.caesar@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(61, 15, 13, 11, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Keegan Stanton V', NULL, NULL, 'bangladesh', '1999-03-27 16:37:08', 'female', 'ke3dPDgUMQP3bdFVfW', '+1-352-643-9336', 'gward@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(62, 15, 11, 13, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Noelia Gleason', NULL, NULL, 'bangladesh', '1995-11-27 14:40:15', 'male', 'TYlGXQPWo6YWzpnQvT', '414.768.1131', 'mustafa.heathcote@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(63, 15, 13, 14, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Matt Leffler', NULL, NULL, 'bangladesh', '1988-05-12 20:25:23', 'female', '5LYrPl12BVqRLCniA5', '+1.828.473.0459', 'simonis.rhiannon@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(64, 15, 4, 17, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Joanny Beatty', NULL, NULL, 'bangladesh', '2000-08-20 06:15:23', 'male', 'GA2ERGwVRHTxNHtbHX', '661-646-6164', 'rocky45@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(65, 15, 1, 1, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Shawna Fay IV', NULL, NULL, 'bangladesh', '1998-10-26 05:33:53', 'female', 'R9poMoJYtJTFpBiO9Y', '1-820-650-3038', 'ezequiel.robel@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(66, 15, 10, 25, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Harmon Pagac DVM', NULL, NULL, 'bangladesh', '1987-09-12 23:59:30', 'male', 'S2dlYeeZRqWfufaDpc', '820.265.3775', 'lsauer@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(67, 15, 13, 21, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tamia Lind MD', NULL, NULL, 'bangladesh', '1993-10-17 15:24:33', 'male', 'Y1rYBRd53bb7daZd62', '848.917.8924', 'ddouglas@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(68, 15, 4, 18, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dejah Bashirian IV', NULL, NULL, 'bangladesh', '2001-08-13 10:16:51', 'female', 'KAz6MsCioQEwchfoj8', '248.666.9786', 'idell23@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(69, 15, 9, 3, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Caroline Windler II', NULL, NULL, 'bangladesh', '1984-11-30 22:01:23', 'female', 's7wU3Mc5NjeacafP8l', '+1.559.521.2093', 'pgottlieb@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(70, 15, 9, 10, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jeremie Larson', NULL, NULL, 'bangladesh', '1987-01-20 19:30:27', 'female', 'cqcJhM9UWc4m1X60qG', '1-304-573-2582', 'dkonopelski@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(71, 15, 6, 18, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Calista Maggio', NULL, NULL, 'bangladesh', '2001-07-03 21:27:02', 'female', '8lIz75HpBdWkw3M4FK', '+1 (207) 514-3582', 'simonis.jamison@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(72, 15, 2, 8, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bernhard Tromp DDS', NULL, NULL, 'bangladesh', '1991-03-18 14:46:01', 'female', 'IV0xI5OCEwnZiiGG4y', '1-628-940-1392', 'halvorson.flossie@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(73, 15, 8, 21, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Loma Considine', NULL, NULL, 'bangladesh', '1988-11-07 08:11:57', 'female', 'Uy2A0xvBwC4O4vjydx', '+1.346.727.0985', 'rolfson.jennyfer@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(74, 15, 10, 24, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Demario Johnson', NULL, NULL, 'bangladesh', '1999-11-29 09:36:20', 'male', 'NzyfKwRXPvs0kldhNG', '828-351-7253', 'ledner.maude@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(75, 15, 9, 19, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Carmelo Boyle', NULL, NULL, 'bangladesh', '1993-12-13 17:39:03', 'female', 'OFoHDDRqYGUHvUqZzo', '+1 (812) 993-4901', 'lenna41@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(76, 15, 12, 8, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jackeline Bogisich', NULL, NULL, 'bangladesh', '1987-12-20 07:44:36', 'female', 'vjQGhwZbUvbEfgzC11', '+1 (762) 339-6554', 'imoore@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(77, 15, 5, 1, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Darrick Purdy', NULL, NULL, 'bangladesh', '1997-11-08 10:43:33', 'female', 'wKSmSvVD3hRHDTx0B0', '+1 (425) 436-5556', 'pete76@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(78, 15, 6, 14, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kaleigh Littel', NULL, NULL, 'bangladesh', '1992-10-20 07:36:31', 'female', 'o7HtxtVtwifZl0biRa', '910.395.2244', 'dayton.ernser@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(79, 15, 1, 25, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lilyan Upton', NULL, NULL, 'bangladesh', '1993-07-10 05:46:41', 'female', 'ZyUJPkKuerq55A4xfM', '(406) 731-8147', 'brown.pinkie@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(80, 15, 5, 25, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Kylie Koch PhD', NULL, NULL, 'bangladesh', '1982-12-03 23:16:38', 'female', 'avxRdHtcL5ELysAKeg', '+1.947.838.5963', 'davis.viva@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(81, 15, 7, 12, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Scarlett Kuhlman', NULL, NULL, 'bangladesh', '2001-07-08 22:20:22', 'female', 'eMvNSWt4sh7fNNYpOu', '1-774-430-6419', 'sawayn.arnold@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(82, 15, 10, 22, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sophia Abshire DVM', NULL, NULL, 'bangladesh', '1988-08-01 09:47:03', 'male', 'fiRJflQpW1N1QJp3sh', '+1-629-779-9623', 'erobel@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(83, 15, 13, 2, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Providenci White', NULL, NULL, 'bangladesh', '1986-11-02 14:41:24', 'male', 'Fqd0nj7XTQtfF7YHNP', '+15397252338', 'gottlieb.keith@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(84, 15, 3, 10, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Raymundo Grant', NULL, NULL, 'bangladesh', '2001-06-25 15:39:49', 'female', 'ZjwVNGm4V6hhZVoq40', '1-346-283-5234', 'jacobs.joe@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(85, 15, 8, 23, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Elijah Lockman', NULL, NULL, 'bangladesh', '1994-04-26 08:24:45', 'male', '3LBhoYeWjEkg6WW74o', '772.990.4393', 'wglover@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(86, 15, 3, 17, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Emory Greenfelder', NULL, NULL, 'bangladesh', '1997-04-12 17:56:56', 'female', 'LmUcgRVyUzID29hFLU', '407-724-9311', 'briana01@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(87, 15, 9, 23, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nedra Raynor', NULL, NULL, 'bangladesh', '1982-12-06 18:32:00', 'female', 'ZW4Y8VKjVpd5KPYBms', '986-976-8666', 'jullrich@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(88, 15, 2, 23, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aurelia Treutel', NULL, NULL, 'bangladesh', '1984-05-16 21:43:38', 'female', '0zuZU4gblEDKpH6Hkj', '731-426-5162', 'concepcion51@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(89, 15, 4, 24, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elmira Nienow', NULL, NULL, 'bangladesh', '1982-12-24 22:57:09', 'female', 'NXv4Oc1JsjrL0HlHyh', '636.631.4411', 'meghan77@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(90, 15, 2, 18, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'William Dietrich', NULL, NULL, 'bangladesh', '1982-07-03 05:41:25', 'female', 'ohbLhxvu9U9u0fh0OZ', '213.773.3751', 'ndickinson@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(91, 15, 11, 6, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Trent Grady', NULL, NULL, 'bangladesh', '2001-01-29 00:30:57', 'male', 'ssFg89I42BlUZLJ3PZ', '432.459.3693', 'brent53@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(92, 15, 5, 16, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Olen Kuhlman III', NULL, NULL, 'bangladesh', '1984-08-19 13:48:24', 'female', 'HfM0CgLvxdh9mz9b9g', '+1-281-969-6399', 'amelia67@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(93, 15, 8, 18, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Garnett Bartell', NULL, NULL, 'bangladesh', '1999-10-13 14:52:17', 'male', 'HSqxzcx1x8wm9CZXQF', '+1-386-787-2268', 'reilly.walker@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(94, 15, 1, 4, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Felicita Kihn', NULL, NULL, 'bangladesh', '1984-05-08 03:33:49', 'female', 'BJs0BgmwvvY3hbDekV', '714-641-7881', 'freeman.yundt@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(95, 15, 8, 10, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jayson Ritchie', NULL, NULL, 'bangladesh', '1984-10-23 05:49:11', 'female', 'VjNxB8M8P4wQSkUa3N', '+1-480-655-1640', 'rmuller@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(96, 15, 12, 23, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Wiley Grady Sr.', NULL, NULL, 'bangladesh', '1997-08-15 12:19:07', 'female', '0WjgFZcP166t46DbFu', '+19366889065', 'davion78@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(97, 15, 12, 2, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rahul Okuneva', NULL, NULL, 'bangladesh', '1986-02-04 14:57:33', 'male', 'dler9XW1JLTI36f8PL', '1-337-489-6618', 'elinor.west@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(98, 15, 3, 1, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Romaine Kulas', NULL, NULL, 'bangladesh', '1992-06-15 23:46:51', 'male', '7mHoiUDCmqwRDELJPB', '219-968-0634', 'elton10@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(99, 15, 12, 15, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Manuel Jerde MD', NULL, NULL, 'bangladesh', '1992-02-27 17:36:11', 'female', 'EllYBTaLht54oDR55B', '951-456-7588', 'rahul.shanahan@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(100, 15, 3, 17, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lionel Runolfsdottir', NULL, NULL, 'bangladesh', '1994-01-25 13:41:32', 'female', 'iNAAQWPwMd4WXkq6cj', '202-524-2642', 'ivory66@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(101, 15, 8, 15, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cordell Lockman DVM', NULL, NULL, 'bangladesh', '1984-01-23 14:06:58', 'male', 'As9Jbuki3UIdTHTwFp', '+1-812-855-9804', 'claire.gutkowski@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(102, 15, 7, 22, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Laurie Abernathy', NULL, NULL, 'bangladesh', '1995-01-25 03:05:21', 'male', '3jSjqMKCmULSVAI4yQ', '(606) 751-3791', 'rosalinda78@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(103, 15, 10, 15, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Esther Wintheiser', NULL, NULL, 'bangladesh', '2002-01-26 06:23:31', 'female', 'RAvEQjuxYt1CfbIusP', '(614) 463-2217', 'weldon79@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(104, 15, 1, 21, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Carlotta Morar III', NULL, NULL, 'bangladesh', '1984-11-06 07:53:01', 'female', 'CmaRYxkN9yqqmUFkmp', '+19093595843', 'kari.carter@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(105, 15, 7, 4, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lonny Ernser', NULL, NULL, 'bangladesh', '1989-09-22 21:51:03', 'female', '40o9sQYKEFH307jzKU', '+1-657-603-1277', 'marquardt.reba@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(106, 15, 7, 5, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Abagail Kemmer V', NULL, NULL, 'bangladesh', '1985-07-08 17:20:32', 'male', 'ROFjrIuUEIW4jHgDHr', '+15515746314', 'mswaniawski@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(107, 15, 3, 21, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Morgan Kuphal', NULL, NULL, 'bangladesh', '1989-05-29 07:43:49', 'male', 'OT4jf28a0tqtjrp3gs', '234-865-8409', 'ejast@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(108, 15, 12, 7, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Haven Becker', NULL, NULL, 'bangladesh', '1993-02-04 16:14:08', 'female', 'quPPIIFR5fBEQ20G6z', '+1 (304) 947-9962', 'mozell52@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(109, 15, 5, 3, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Braden Schinner', NULL, NULL, 'bangladesh', '1996-09-11 09:22:44', 'female', '94041WfjJrtKCWkPK9', '+13367616593', 'johns.vicente@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(110, 15, 4, 10, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kali Satterfield I', NULL, NULL, 'bangladesh', '1984-07-14 13:43:58', 'female', 'WfYFuWxA03IPJKQmBj', '+1-380-840-6235', 'magdalen83@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(111, 15, 7, 17, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jerry Mante', NULL, NULL, 'bangladesh', '1991-06-18 09:44:03', 'female', 'drYhqt351mIXU8flvk', '251-733-8908', 'owalsh@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(112, 15, 12, 9, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Muhammad Schaefer', NULL, NULL, 'bangladesh', '1983-04-01 21:20:01', 'female', 'sz2TcVIa9s3GdLYxUg', '+1 (445) 931-5793', 'lolita48@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(113, 15, 3, 4, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gaston O\'Conner', NULL, NULL, 'bangladesh', '1985-05-07 22:30:51', 'female', '0mAskPnfl7OpVrVxbW', '1-214-960-5761', 'yoshiko.conn@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(114, 15, 3, 7, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Jailyn Stamm Sr.', NULL, NULL, 'bangladesh', '1986-03-13 07:21:29', 'male', 'V1KkQtsl44Nx6DWH07', '+1-234-859-9018', 'ibrahim21@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(115, 15, 13, 22, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mittie Luettgen', NULL, NULL, 'bangladesh', '2000-01-13 13:25:24', 'male', 'z6hqltobPW8EMDtZk4', '847.283.3698', 'xlebsack@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(116, 15, 4, 9, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nelda Dietrich DDS', NULL, NULL, 'bangladesh', '1998-02-23 05:01:12', 'female', 'Vd1RG3L2sJSjxjNUUF', '(518) 445-7209', 'madalyn48@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(117, 15, 13, 19, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Calista Powlowski', NULL, NULL, 'bangladesh', '1994-03-13 13:57:19', 'male', 'Uj1NhgGM4lAYmBsgCc', '+1-848-777-8317', 'flatley.madelynn@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(118, 15, 6, 23, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Sadye Stamm V', NULL, NULL, 'bangladesh', '1988-10-25 14:50:11', 'female', 'MQVg98uvt6yEejNFNT', '+1-541-708-6747', 'juston.hickle@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(119, 15, 2, 2, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jovanny Wisozk', NULL, NULL, 'bangladesh', '1982-09-15 01:37:32', 'male', '3JbjlnCTYdHBRW8brq', '+1-629-476-0352', 'kuhic.miller@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(120, 15, 4, 3, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mohammed Witting', NULL, NULL, 'bangladesh', '1984-02-12 18:23:45', 'male', 'wodvxOSRz67IsnvUzq', '1-458-896-9793', 'abbott.linda@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(121, 15, 6, 12, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Anna Thiel', NULL, NULL, 'bangladesh', '1989-12-01 00:45:20', 'male', 'aPmNMxXSMjw5D7BbtC', '+1-314-274-7898', 'hdenesik@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(122, 15, 3, 22, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ada Hoppe', NULL, NULL, 'bangladesh', '1991-12-12 11:30:08', 'female', 'j2UDbOBk0qneB8NhXl', '+1-551-281-1481', 'lola00@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20');
INSERT INTO `candidates` (`id`, `role_id`, `job_category_id`, `job_id`, `company_id`, `pre_medical_id`, `pre_training_id`, `pre_biomatric_id`, `pre_medical_status`, `pre_training_status`, `pre_biomatric_status`, `ready_to_travel`, `selected_osc_id`, `present_address`, `permanent_address`, `candidate_name`, `father_name`, `mother_name`, `nationality`, `candidate_dob`, `candidate_gender`, `passport_number`, `phone_number`, `candidate_email`, `candidate_password`, `country`, `pre_medical_certificate`, `pre_traning_certificate`, `pre_medical_report`, `pre_training_report`, `created_by`, `updated_by`, `pre_medical_comments`, `pre_training_comments`, `approval_status`, `payment_assigned`, `status`, `result_status`, `permission_status`, `sending_status`, `offer_letter`, `employer_comments`, `offered_status`, `created_id`, `updated_id`, `created_at`, `updated_at`) VALUES
(123, 15, 11, 6, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jolie Kuvalis', NULL, NULL, 'bangladesh', '1994-07-27 12:42:20', 'female', '0BklOgMn2f4hDAo4S7', '781-573-9076', 'zion.pollich@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(124, 15, 13, 17, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Caleigh Cremin', NULL, NULL, 'bangladesh', '1993-11-07 14:10:20', 'male', '4H56b6LKG59cN8tvHE', '364.796.5165', 'waldo.schiller@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(125, 15, 10, 18, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elta Cole II', NULL, NULL, 'bangladesh', '1998-01-15 04:31:43', 'male', 'JkTSVBh9vpXQheGIQh', '435-610-6337', 'predovic.joy@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(126, 15, 4, 12, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Marlene Raynor IV', NULL, NULL, 'bangladesh', '1999-07-10 19:06:54', 'male', '58eGvW6hAgMARv0hdp', '+1 (640) 604-8122', 'frami.lysanne@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(127, 15, 11, 20, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marina Hilpert', NULL, NULL, 'bangladesh', '1989-01-02 19:42:47', 'male', '6L4jxUUoZLNifmPIk4', '443.644.1032', 'zboncak.elaina@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(128, 15, 2, 11, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Chester Heaney', NULL, NULL, 'bangladesh', '1995-09-09 12:26:34', 'female', 'Hpnz6UU30K8tZeZAey', '+1 (276) 203-1599', 'heaven.stracke@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(129, 15, 7, 15, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Loy McGlynn', NULL, NULL, 'bangladesh', '1983-05-11 01:25:54', 'male', 'w5G1HntjnCQO90fWOl', '+1 (667) 817-7576', 'fadel.precious@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(130, 15, 11, 8, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Clyde Lowe', NULL, NULL, 'bangladesh', '1984-08-14 16:48:49', 'male', 'l5t4W7unc3GwzSUbfu', '+1 (731) 337-9818', 'sylvan.reichert@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(131, 15, 2, 20, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gage Dickens DDS', NULL, NULL, 'bangladesh', '1983-05-01 14:27:15', 'male', 'FCMTZTnZAk1bnePabQ', '+12098932993', 'onie.baumbach@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(132, 15, 2, 8, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dion Treutel Sr.', NULL, NULL, 'bangladesh', '1998-05-25 11:25:53', 'male', 'CDKByCCCPOLlKnHQog', '+1-219-545-1862', 'chester93@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(133, 15, 13, 17, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Maude Brakus', NULL, NULL, 'bangladesh', '1992-12-08 05:18:39', 'male', 'y12NF6cfH1Sc1KhyLD', '478.542.8416', 'abatz@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(134, 15, 13, 25, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alysha Krajcik', NULL, NULL, 'bangladesh', '1994-06-06 06:31:42', 'female', 'JnXcmFqpoQf1LmaMxl', '+1.276.935.6236', 'leif21@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(135, 15, 12, 17, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lesley Baumbach III', NULL, NULL, 'bangladesh', '1998-02-26 10:35:14', 'male', '9hnNJbSynJQNVamP31', '319-737-2301', 'shaun09@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(136, 15, 11, 11, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Pinkie Fadel', NULL, NULL, 'bangladesh', '1990-08-02 05:53:34', 'female', '9kweAtgBHPatoYmtIl', '747-815-4541', 'borer.noemy@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(137, 15, 8, 12, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Alexandra Stanton DDS', NULL, NULL, 'bangladesh', '1990-04-22 01:56:04', 'male', 'dWFAhp1AO0JxgHfnl2', '484.901.8923', 'israel44@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(138, 15, 10, 16, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Athena Bednar', NULL, NULL, 'bangladesh', '2000-11-03 20:41:15', 'male', 'Ed1bd1vHgnYBQEoGkY', '+1-909-656-6538', 'ondricka.alphonso@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(139, 15, 1, 21, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cali Pouros', NULL, NULL, 'bangladesh', '1995-04-09 02:09:39', 'female', 'r0j0nAg3mI2QUiUenB', '(414) 810-4417', 'ferne85@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(140, 15, 8, 18, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Peggie Walter DVM', NULL, NULL, 'bangladesh', '1995-09-15 04:16:35', 'male', '9kJpTFQUqWKrbgxgLR', '(901) 439-9978', 'roberta.streich@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(141, 15, 2, 24, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Karelle Fay', NULL, NULL, 'bangladesh', '1984-04-26 02:53:20', 'male', 'n23mmisgqGrXz7g6Du', '1-213-590-8081', 'ida89@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(142, 15, 2, 2, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Ursula Yost PhD', NULL, NULL, 'bangladesh', '1988-06-26 00:52:23', 'female', 'JB5YkJC9N2Ju0NczDU', '925.735.3077', 'virgie.brown@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(143, 15, 7, 18, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rylan Ullrich', NULL, NULL, 'bangladesh', '1982-07-23 02:46:37', 'male', 'Vju650vObby72I4Tsq', '857.349.4990', 'mkilback@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(144, 15, 5, 11, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eulalia Tillman', NULL, NULL, 'bangladesh', '1993-04-15 17:09:50', 'male', 'i9lYqqPHBhiZ4XIttQ', '304-498-3012', 'cruickshank.katharina@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(145, 15, 4, 8, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Odie Bashirian', NULL, NULL, 'bangladesh', '1990-08-06 18:39:01', 'male', 'fapOIEBGUtzgnqmW13', '1-252-383-3464', 'bertha61@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(146, 15, 1, 20, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Therese Schultz III', NULL, NULL, 'bangladesh', '1998-05-25 02:24:12', 'female', 'I3MC7LiHUNAzdBaRqq', '+1-708-219-5817', 'qheathcote@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(147, 15, 6, 21, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Georgianna Ortiz', NULL, NULL, 'bangladesh', '2000-02-26 10:02:33', 'male', 'cE4QzcvR2QWxK8y5c3', '1-231-422-0796', 'raoul44@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(148, 15, 9, 18, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Viola Thiel', NULL, NULL, 'bangladesh', '1986-10-14 15:50:42', 'female', 'ZJ6To70MhGdwRjq3KJ', '+1 (719) 921-4303', 'hill.kaylee@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(149, 15, 3, 21, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Arlie Ferry III', NULL, NULL, 'bangladesh', '1995-11-22 22:31:27', 'female', 'kIFdkPYiMlsIIKEAD3', '708-616-0813', 'dorris.prohaska@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(150, 15, 11, 24, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Amiya Kuhic Sr.', NULL, NULL, 'bangladesh', '2002-02-19 03:02:32', 'male', '3uN6KEwR6dyepe3Hwx', '772.952.4351', 'unique.kessler@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(151, 15, 13, 8, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ethan Treutel', NULL, NULL, 'bangladesh', '1983-06-01 06:00:06', 'female', 'UuAx9P65pDJwcsv1w2', '512-470-5358', 'hkeebler@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(152, 15, 7, 21, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Odell Schumm DDS', NULL, NULL, 'bangladesh', '1995-08-22 12:43:04', 'male', 'UMJbPWLzkZnk3GONdU', '435.808.5515', 'srussel@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:21'),
(153, 15, 5, 24, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jacey Cremin', NULL, NULL, 'bangladesh', '1990-08-14 21:10:38', 'female', '1L3tnv6L0isS8kElWW', '(254) 380-2450', 'quigley.nestor@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(154, 15, 7, 6, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Penelope Schmeler', NULL, NULL, 'bangladesh', '1992-05-08 17:40:16', 'male', 'w9uKjStEEnwSK5era1', '+1-769-882-3451', 'kurtis.hilpert@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(155, 15, 7, 25, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Alfonso Fadel', NULL, NULL, 'bangladesh', '1984-09-18 10:07:52', 'male', 'B7pwMZ0jTdgDOBYKY1', '+1-520-419-0473', 'labbott@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(156, 15, 3, 24, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cleo VonRueden', NULL, NULL, 'bangladesh', '1998-10-15 20:45:26', 'male', 'etEQsQu0WooBsrNtwA', '(681) 448-7412', 'ohilpert@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(157, 15, 2, 13, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Genoveva Krajcik', NULL, NULL, 'bangladesh', '1995-02-25 09:12:01', 'male', 'zYQVQNXwUvExrp062Q', '803.621.5316', 'julien12@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(158, 15, 2, 3, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Adalberto Reinger V', NULL, NULL, 'bangladesh', '1987-11-19 07:51:31', 'male', 'OI3JgcCNF3qjP6TqzJ', '+1.972.582.1526', 'vlittle@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(159, 15, 7, 9, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Janessa Schaefer', NULL, NULL, 'bangladesh', '1996-12-21 05:59:33', 'male', '8skbh36dVNLHp2RHxB', '(301) 899-9162', 'buddy.hane@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(160, 15, 12, 4, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Karina Steuber III', NULL, NULL, 'bangladesh', '1998-11-28 19:17:24', 'female', '07CYMnxADYBUmLaO6T', '713-240-3708', 'ines.schuster@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(161, 15, 2, 8, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Charlotte Walter', NULL, NULL, 'bangladesh', '1989-12-08 15:51:24', 'female', '2CErjojNy1brdBOI2A', '+19856662282', 'serdman@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(162, 15, 7, 11, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Olaf Nicolas DVM', NULL, NULL, 'bangladesh', '1992-09-10 21:26:53', 'male', 'FLpXWwoDYs0thz8UHA', '1-985-793-3692', 'frederick87@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(163, 15, 1, 11, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Enid Kertzmann', NULL, NULL, 'bangladesh', '1985-02-16 14:49:14', 'female', 'nTFNeZcFJeqoPDVqJ1', '(930) 602-3078', 'nschultz@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(164, 15, 6, 13, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tatum Strosin', NULL, NULL, 'bangladesh', '2001-07-26 20:30:38', 'male', 'TKeiPFsn2yQ5RpI3rS', '502-597-9058', 'jayce54@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(165, 15, 10, 5, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tiara Buckridge V', NULL, NULL, 'bangladesh', '1998-10-18 19:56:05', 'male', 'xHQGDCIatUWbfQa6uo', '1-785-872-4517', 'fmraz@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(166, 15, 11, 25, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Leanna Mante V', NULL, NULL, 'bangladesh', '1983-10-04 01:45:47', 'female', 'tyS3qSGrxWeYlzzJf1', '(804) 367-2499', 'conner.fahey@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(167, 15, 2, 5, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Conrad Collier', NULL, NULL, 'bangladesh', '1990-10-29 15:54:07', 'female', 'ltGUbQpREw3XnvqLBH', '+1 (248) 768-4454', 'reichel.johnny@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(168, 15, 13, 2, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Carson Champlin', NULL, NULL, 'bangladesh', '1993-04-21 19:26:12', 'male', 'HC3TCcvufvPNcIbSq5', '678-879-8168', 'gladys.steuber@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(169, 15, 8, 8, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Virgie Gutkowski I', NULL, NULL, 'bangladesh', '1991-12-16 22:37:50', 'female', 'dR9g1IX3fAVOfkkq74', '(276) 348-6974', 'aniya75@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(170, 15, 3, 23, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Jimmy King', NULL, NULL, 'bangladesh', '1985-10-13 08:28:41', 'female', 'uiFrHguuxC6j4ggw7w', '+1-737-480-2110', 'lamar98@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(171, 15, 2, 6, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sandy Kuphal', NULL, NULL, 'bangladesh', '1992-08-31 15:58:54', 'male', 'faTCC9cjmDLkpXkbX3', '408.505.8102', 'rosalee10@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(172, 15, 6, 20, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nelle Cremin', NULL, NULL, 'bangladesh', '2000-08-23 06:30:09', 'female', 'ENk2DdyGdEyxvT0maW', '218-265-4195', 'emmanuelle66@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(173, 15, 2, 11, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Lucio Dare PhD', NULL, NULL, 'bangladesh', '1988-06-25 13:29:24', 'male', '3RxPNXbFS7Xx4AHiJa', '+1.215.850.9601', 'adolf13@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(174, 15, 5, 6, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Pat Gottlieb', NULL, NULL, 'bangladesh', '1999-04-27 14:13:39', 'male', '3AIY2p4yZ3zmc0DXyF', '630-489-6496', 'wvandervort@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(175, 15, 6, 7, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dessie O\'Keefe', NULL, NULL, 'bangladesh', '1999-08-02 00:43:24', 'female', 'glm0uNslhVtAv0tClQ', '+16162574482', 'ford.gerhold@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(176, 15, 5, 2, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nestor King', NULL, NULL, 'bangladesh', '1993-07-05 02:34:08', 'male', 'lLMSWGlP8JKrhyQhfa', '+1.832.613.2205', 'nikolaus.landen@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(177, 15, 13, 12, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nickolas Conroy I', NULL, NULL, 'bangladesh', '1999-04-01 19:03:03', 'male', 'WgH87hGPoYRcSZXCz4', '629-861-9400', 'glenda.kulas@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(178, 15, 11, 14, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Guido Kuhlman', NULL, NULL, 'bangladesh', '1985-06-30 04:35:50', 'female', 'tJMGuLMHSd7G7lyhIJ', '+16787076249', 'tobin89@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(179, 15, 5, 14, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gretchen Wilderman Sr.', NULL, NULL, 'bangladesh', '1996-06-20 04:15:44', 'male', 'fvju9tMARBTnSVCuVe', '+12797304955', 'fiona23@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(180, 15, 7, 25, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Julien Bednar', NULL, NULL, 'bangladesh', '1989-09-03 05:54:42', 'female', 'c4n1cOFvNrIErqpLyh', '+1-724-805-8473', 'keshawn.thiel@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(181, 15, 1, 6, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Nora Block DDS', NULL, NULL, 'bangladesh', '1998-06-29 05:37:16', 'male', 'N7FIMrYrWQlvJedgzm', '+1-484-841-9628', 'ularson@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(182, 15, 1, 24, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Brennon Kozey', NULL, NULL, 'bangladesh', '1984-05-19 19:33:31', 'male', 'vRJdXbDgPi3FhS3Iud', '(458) 667-8806', 'ojaskolski@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(183, 15, 13, 5, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nakia Kuhn', NULL, NULL, 'bangladesh', '1986-06-06 11:29:48', 'female', 'Dct06mLEEsDO8Xm98k', '+1 (361) 430-8307', 'elva88@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(184, 15, 11, 7, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Zelda Kemmer', NULL, NULL, 'bangladesh', '1992-07-18 14:51:12', 'female', 'RWncRZsVfzN4fJquwp', '320-493-6162', 'carmela46@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(185, 15, 9, 14, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tyreek Marvin', NULL, NULL, 'bangladesh', '1986-07-12 02:53:01', 'female', 'FtAOHU5HWsBDbhDn8J', '760.206.3979', 'wilfred29@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(186, 15, 4, 18, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Madisen Lind DDS', NULL, NULL, 'bangladesh', '1995-07-27 22:36:46', 'male', '8i0QI4e71o7N8sVYlq', '+1.864.209.8638', 'geraldine22@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(187, 15, 4, 19, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Deshaun Bartoletti', NULL, NULL, 'bangladesh', '1998-07-03 22:16:36', 'female', 'yhCVudEMKyUsoBIkXe', '+1-231-666-3615', 'catherine32@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(188, 15, 2, 18, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Devante Schowalter', NULL, NULL, 'bangladesh', '1997-12-27 00:53:44', 'female', 'Ik11stpKUNs2t7Xd5S', '+1.551.543.7880', 'rheathcote@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(189, 15, 1, 8, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elisabeth O\'Kon', NULL, NULL, 'bangladesh', '1998-07-02 05:18:38', 'male', '9xq7X1HBCRbutCtVr2', '+1.332.383.0682', 'ryan.jacklyn@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(190, 15, 6, 2, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Darron Zieme', NULL, NULL, 'bangladesh', '1988-09-26 11:58:48', 'male', 'XuW9kfnowoNPAK2Ghc', '863.753.4225', 'hmetz@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(191, 15, 8, 18, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Burnice Hand', NULL, NULL, 'bangladesh', '1985-01-02 08:52:44', 'male', 'cbwrzfLoPrcAFUOMRD', '(269) 902-8409', 'brant.stroman@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(192, 15, 12, 17, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cydney Rice Jr.', NULL, NULL, 'bangladesh', '1992-05-31 21:23:28', 'male', 'fKuX5CuhPWVj433AsZ', '+16573129482', 'yasmin96@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(193, 15, 1, 3, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Xander D\'Amore', NULL, NULL, 'bangladesh', '2000-10-11 10:32:02', 'female', 'QqyVGqBdqaXAJKIi01', '+1 (660) 424-2210', 'devonte.gottlieb@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(194, 15, 2, 14, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Stanford Dooley IV', NULL, NULL, 'bangladesh', '1992-04-25 03:54:23', 'female', 'dJHupDJz2WhSrqNqq5', '+1-321-614-6843', 'thand@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(195, 15, 6, 15, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Vicenta Kassulke', NULL, NULL, 'bangladesh', '1988-05-07 17:10:44', 'female', 'aAsv7HXkbohq0v1Jve', '+1-669-682-5462', 'jklein@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(196, 15, 9, 25, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Reed Hill', NULL, NULL, 'bangladesh', '1997-01-08 11:01:46', 'female', 'SEKXtaJZHXBb7VdAAp', '979-402-1423', 'alfreda.hill@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(197, 15, 6, 7, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Jerrell Hansen DVM', NULL, NULL, 'bangladesh', '1987-12-19 05:21:35', 'female', 'erN80RP0FBBqI6lA3E', '+1-346-494-6720', 'hobart25@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(198, 15, 9, 1, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marcelina Zemlak', NULL, NULL, 'bangladesh', '1983-08-15 17:15:48', 'male', 'Ii3uQpt5tZNkgpOu2e', '+1.623.940.3893', 'fisher.brayan@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(199, 15, 2, 9, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Meagan Nikolaus Sr.', NULL, NULL, 'bangladesh', '1998-02-14 06:21:07', 'female', 'ZNaQSxBIZiTfIofSM0', '+1.424.396.7512', 'ankunding.hector@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(200, 15, 2, 1, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Missouri Mueller', NULL, NULL, 'bangladesh', '1992-08-10 05:22:56', 'male', 'NI3xABpCt55bCwKy8h', '+1-248-525-8023', 'feeney.jammie@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(201, 15, 9, 17, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Markus Will', NULL, NULL, 'bangladesh', '1992-08-11 23:27:52', 'male', 'fZoPbjUNSOpxB3gvlL', '530-669-5562', 'weber.tianna@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(202, 15, 7, 18, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mina Flatley DVM', NULL, NULL, 'bangladesh', '1986-09-06 03:03:11', 'male', 'vJ0jUAM4eFwsrxSz9q', '1-443-483-3747', 'modesto18@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(203, 15, 1, 6, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kelly Boehm', NULL, NULL, 'bangladesh', '1994-03-29 01:08:06', 'male', 'BpWKD24PQy0zKmhwTq', '562-341-5000', 'pkunde@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(204, 15, 8, 6, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Arnold Boehm II', NULL, NULL, 'bangladesh', '1984-06-02 01:15:17', 'male', 'b9AJGqWVDCumMO8Lph', '1-442-837-4250', 'zjacobs@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(205, 15, 10, 14, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aileen Zboncak MD', NULL, NULL, 'bangladesh', '1992-06-28 07:11:09', 'male', 'MGAhsNft3HjUwXgJ1G', '385-759-6252', 'imetz@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(206, 15, 6, 18, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Emely Willms II', NULL, NULL, 'bangladesh', '1993-11-14 03:11:47', 'male', 'GSvNwGwyizbnEcwwxy', '1-209-465-6296', 'rupert.hyatt@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(207, 15, 3, 9, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Terrill Braun', NULL, NULL, 'bangladesh', '1990-01-20 19:54:37', 'female', 'hxmwv4fADUBEPvMiJd', '+1 (520) 807-2120', 'mason82@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(208, 15, 2, 11, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Randi Wisoky III', NULL, NULL, 'bangladesh', '1993-08-17 00:42:33', 'female', 'bXO8x6qLsy6or6fFT6', '239.980.6579', 'moises44@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(209, 15, 1, 17, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Loyal Ledner', NULL, NULL, 'bangladesh', '1987-01-19 02:31:03', 'female', 'Nmnnfis4YMmNeKB0g4', '561-947-6487', 'johan.huels@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(210, 15, 7, 18, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jillian Wuckert IV', NULL, NULL, 'bangladesh', '1990-03-22 06:18:25', 'female', 'p6rdRel87ZWD39LZwL', '+1-732-736-2975', 'mkuhic@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(211, 15, 2, 17, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Johnson Douglas PhD', NULL, NULL, 'bangladesh', '1986-01-16 23:56:32', 'male', '9oh2K0uabyPPxZBEHd', '1-641-268-8422', 'ansley64@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(212, 15, 13, 24, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jorge Christiansen', NULL, NULL, 'bangladesh', '1991-10-30 09:53:05', 'female', 'PTHLWnp6Zm8G81CKJ1', '680.572.9583', 'sierra.schaden@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(213, 15, 11, 6, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Stan Walter', NULL, NULL, 'bangladesh', '1995-12-19 10:23:07', 'male', '0WBUixT3vCzUHj1XSZ', '+1-281-620-5726', 'skylar.emmerich@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(214, 15, 7, 5, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kianna Herman', NULL, NULL, 'bangladesh', '1997-07-06 23:53:34', 'male', 'vXGYzzLaN3ORqOw9Ez', '1-260-470-2969', 'strosin.tristin@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(215, 15, 4, 7, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Abe Glover V', NULL, NULL, 'bangladesh', '1999-07-29 09:11:07', 'male', 'PEE4EAsKlY8fdXhC5a', '1-603-737-3517', 'udurgan@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(216, 15, 1, 19, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Shaun Lindgren', NULL, NULL, 'bangladesh', '1989-09-01 09:50:25', 'male', 'RTO3pBaS7PPTqLaFjU', '540.338.9143', 'ywatsica@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(217, 15, 13, 23, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Jadon Crona', NULL, NULL, 'bangladesh', '1994-04-08 20:11:38', 'female', '8WD4w72TYaubtCgMn6', '+1 (251) 818-9102', 'libby26@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(218, 15, 12, 7, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nichole Roob', NULL, NULL, 'bangladesh', '2001-07-20 08:40:38', 'female', 'KCucdpsD6CGCN9qbXM', '+1.657.701.4853', 'general.will@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(219, 15, 5, 2, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Maritza Lindgren', NULL, NULL, 'bangladesh', '1996-10-24 22:50:35', 'female', 'DXmyqvD4k5QYKhNYez', '+14247515204', 'eweimann@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(220, 15, 3, 18, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Tatyana Paucek PhD', NULL, NULL, 'bangladesh', '1983-02-21 03:10:32', 'female', 'SepNYywrqJKUA9hCKl', '951.901.7003', 'adelia67@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(221, 15, 6, 22, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dillan Kuphal', NULL, NULL, 'bangladesh', '1985-04-16 20:41:18', 'female', 'OheDJg5agiQERGWjOh', '(979) 916-9831', 'shields.cora@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(222, 15, 11, 24, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aubree Dicki Jr.', NULL, NULL, 'bangladesh', '1989-07-01 09:26:26', 'female', 'dqku8i9UHmSpcRPRXd', '+1 (248) 204-8309', 'rodrick.anderson@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(223, 15, 3, 18, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Palma Lockman Jr.', NULL, NULL, 'bangladesh', '1985-07-21 20:35:12', 'female', 'MZ14CCk1nl6vKELBLv', '401.478.9221', 'pdurgan@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(224, 15, 7, 9, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Zella Fadel Jr.', NULL, NULL, 'bangladesh', '1999-11-05 15:17:27', 'female', 'rO99hoO42vtzCn94z2', '+1.901.724.0386', 'kihn.gideon@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(225, 15, 6, 19, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Reina Mosciski MD', NULL, NULL, 'bangladesh', '1991-05-11 00:10:08', 'male', 'E7VKaqgSyi0SsOt5U6', '1-760-467-8754', 'bhoppe@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(226, 15, 2, 14, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Joseph Brown', NULL, NULL, 'bangladesh', '1998-02-26 13:44:58', 'female', 'YDgvyKf47BEdbSMBsY', '+1-380-613-7609', 'dryan@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(227, 15, 6, 12, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Minerva Lindgren', NULL, NULL, 'bangladesh', '1985-11-29 12:38:04', 'male', 'es93Y39PIJBrn6VGFr', '(765) 971-7893', 'xdenesik@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(228, 15, 2, 12, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kristofer Lakin', NULL, NULL, 'bangladesh', '1996-01-01 18:37:48', 'female', 'O3O0RY132VrL2WKUj1', '(954) 371-2747', 'elbert.damore@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(229, 15, 10, 19, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alena Schoen', NULL, NULL, 'bangladesh', '1988-09-25 10:27:31', 'female', 'yqtM3uEl0va37FIEr0', '740-682-5103', 'orville.hyatt@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(230, 15, 5, 8, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mable Metz', NULL, NULL, 'bangladesh', '1993-05-31 02:05:24', 'male', 'N3JcyNuJ5BK8iHNM4e', '628-287-6954', 'frederik75@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(231, 15, 13, 19, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Destiney Oberbrunner', NULL, NULL, 'bangladesh', '1987-04-22 19:03:53', 'female', 'CtAQHKH5iuN379isqT', '+14704408239', 'kohler.jaqueline@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(232, 15, 6, 3, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alexa Mueller IV', NULL, NULL, 'bangladesh', '1993-12-10 17:16:47', 'female', 'EDPbx2ONY5DxcwGGQC', '+1.443.932.2976', 'lenora.wisoky@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(233, 15, 4, 24, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Zachery Heathcote V', NULL, NULL, 'bangladesh', '2001-02-05 08:12:09', 'female', 'CWRIO4uWYZkDPN3mu0', '+1-828-401-9014', 'monserrate22@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(234, 15, 4, 20, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Evalyn Emard', NULL, NULL, 'bangladesh', '1997-04-10 09:18:23', 'male', 'H94SSFukacWuPs40qd', '323-440-1674', 'macejkovic.marilyne@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(235, 15, 13, 11, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Izabella Hahn V', NULL, NULL, 'bangladesh', '1994-02-23 07:48:27', 'female', '9r1D4uRE7bGwWos32I', '1-830-683-7481', 'yost.antone@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(236, 15, 6, 25, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Osbaldo Batz V', NULL, NULL, 'bangladesh', '1996-08-29 17:43:03', 'female', 'RUqnQUi3rnSATryCpL', '+1 (907) 466-2570', 'orlo.vonrueden@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(237, 15, 10, 10, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Adrain Doyle', NULL, NULL, 'bangladesh', '1999-06-22 23:33:19', 'female', 'fcHYqAQRdJku7fgbGR', '+18645690777', 'elouise47@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(238, 15, 3, 23, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Ivory Conn II', NULL, NULL, 'bangladesh', '1988-04-13 10:09:27', 'male', 'oNe9bx3kMtzWdqeT0V', '769-816-2231', 'xhoeger@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(239, 15, 8, 7, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Hettie Grimes V', NULL, NULL, 'bangladesh', '1987-12-11 16:20:17', 'female', '8TzoVa8cmgTgNBbLNE', '+1.530.922.2841', 'archibald07@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(240, 15, 9, 23, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Trycia Balistreri MD', NULL, NULL, 'bangladesh', '2000-07-22 12:46:56', 'male', 'SkwJEX44VHxNF6VadP', '+1-341-436-1228', 'tillman.dixie@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(241, 15, 12, 14, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Rosalia Beier Sr.', NULL, NULL, 'bangladesh', '1982-11-27 12:30:05', 'female', 'AO64Da3063Eyd5sc67', '(272) 657-8949', 'kessler.hunter@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(242, 15, 1, 16, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Chester Gulgowski', NULL, NULL, 'bangladesh', '1998-03-09 17:06:14', 'male', 'WB9gqQUjzWwTDFwoXf', '+1.743.578.6396', 'gia28@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21');
INSERT INTO `candidates` (`id`, `role_id`, `job_category_id`, `job_id`, `company_id`, `pre_medical_id`, `pre_training_id`, `pre_biomatric_id`, `pre_medical_status`, `pre_training_status`, `pre_biomatric_status`, `ready_to_travel`, `selected_osc_id`, `present_address`, `permanent_address`, `candidate_name`, `father_name`, `mother_name`, `nationality`, `candidate_dob`, `candidate_gender`, `passport_number`, `phone_number`, `candidate_email`, `candidate_password`, `country`, `pre_medical_certificate`, `pre_traning_certificate`, `pre_medical_report`, `pre_training_report`, `created_by`, `updated_by`, `pre_medical_comments`, `pre_training_comments`, `approval_status`, `payment_assigned`, `status`, `result_status`, `permission_status`, `sending_status`, `offer_letter`, `employer_comments`, `offered_status`, `created_id`, `updated_id`, `created_at`, `updated_at`) VALUES
(243, 15, 7, 16, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Edyth Quitzon', NULL, NULL, 'bangladesh', '1997-03-05 16:19:37', 'female', 'EK12YLJlarx0nvCxOa', '(361) 888-0410', 'clark.stracke@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(244, 15, 12, 25, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jovani Roob', NULL, NULL, 'bangladesh', '1998-05-20 08:53:54', 'female', 'WcLhi7to5e3iNmrxtJ', '1-901-862-2961', 'kirlin.reyes@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(245, 15, 5, 23, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Veda Williamson Jr.', NULL, NULL, 'bangladesh', '1994-07-23 15:06:07', 'male', 'qUvHYZNsRzZXuRmdE9', '(432) 469-9052', 'bartell.daphnee@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(246, 15, 3, 21, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Laury Lakin', NULL, NULL, 'bangladesh', '2002-02-01 03:24:17', 'male', '7KJhsGD5nhGM47Vsag', '+1-743-748-5873', 'johnson.gulgowski@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(247, 15, 1, 5, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ophelia Stark', NULL, NULL, 'bangladesh', '1989-09-13 04:21:05', 'female', 'ZKfRO790SOBo5bv1zz', '351.598.2452', 'harber.miguel@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(248, 15, 11, 19, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Frederick Bernhard', NULL, NULL, 'bangladesh', '2000-10-27 18:55:02', 'female', 'A8S8FU9So71cvqFlBI', '+1-986-828-4727', 'murray.queenie@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(249, 15, 2, 19, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Verlie Jaskolski', NULL, NULL, 'bangladesh', '1996-11-06 22:40:51', 'male', 'TLvYmmWvg7RUUvpLTa', '463.988.2002', 'beer.ivah@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(250, 15, 3, 2, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Maribel Metz', NULL, NULL, 'bangladesh', '1997-10-22 03:00:06', 'female', 'MRWYLXzUJb2STlwI67', '214-669-7493', 'mireya28@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(251, 15, 7, 23, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Millie Graham', NULL, NULL, 'bangladesh', '1989-09-28 19:25:26', 'male', 'xzeDUZu89eGUaSqjPw', '507-987-6474', 'prosacco.osvaldo@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(252, 15, 11, 16, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Sonya Conn', NULL, NULL, 'bangladesh', '1997-10-28 14:35:28', 'male', 'KbPg8lOeCnznNLpR5m', '1-949-278-3162', 'williamson.ally@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(253, 15, 1, 2, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Diego Nikolaus', NULL, NULL, 'bangladesh', '1990-04-07 16:49:19', 'male', 'yMIgB8oR4QcFQmU7o2', '(540) 640-2772', 'claire37@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(254, 15, 5, 23, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kaden Kessler', NULL, NULL, 'bangladesh', '1990-03-27 15:01:20', 'male', 'eGHO4RMiMZXDJaA3B6', '+1.252.755.4080', 'uhauck@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(255, 15, 12, 20, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Laura Cartwright', NULL, NULL, 'bangladesh', '1983-10-11 06:56:22', 'female', 'Q7TzW1JM5UDcfqjE4l', '1-564-569-2907', 'king.weston@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(256, 15, 7, 20, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jevon Mann', NULL, NULL, 'bangladesh', '1992-05-07 20:20:21', 'male', 'GzsjphoDasHHVqCpHP', '832-338-5777', 'tking@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(257, 15, 11, 20, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eryn Huels', NULL, NULL, 'bangladesh', '1986-01-11 02:51:16', 'male', 'Z1iZCQnyICr3N8tqKf', '641.840.4458', 'vconnelly@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(258, 15, 8, 14, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Leonel Buckridge DDS', NULL, NULL, 'bangladesh', '1986-08-01 18:14:01', 'female', 'cF4jk9bbT5CqyQ6hH6', '432.841.4209', 'strosin.macie@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(259, 15, 12, 8, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Darion Schamberger', NULL, NULL, 'bangladesh', '1993-03-06 18:12:24', 'male', 'h92pJx1TXb6zNE6662', '+1-810-352-2311', 'uwiegand@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(260, 15, 6, 17, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bertha Schowalter', NULL, NULL, 'bangladesh', '1995-11-03 23:01:01', 'male', 'BvkMQdx2D0XoISntU8', '+1 (315) 951-6555', 'alessandra98@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(261, 15, 1, 16, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Arnold Gislason', NULL, NULL, 'bangladesh', '1998-07-14 10:42:18', 'female', 'BTW2LWootOc0YnW5cS', '+1.641.488.0791', 'lowe.gerry@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(262, 15, 7, 17, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hector Davis', NULL, NULL, 'bangladesh', '1992-01-14 20:50:03', 'female', 't3MZ5SDZeEl0oYmVAF', '(336) 398-0236', 'leanne.deckow@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(263, 15, 2, 5, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Anibal Stiedemann', NULL, NULL, 'bangladesh', '1991-08-03 04:13:22', 'female', 'K3FowE50fgrfO6d3eZ', '213-627-1837', 'cremin.zechariah@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(264, 15, 11, 12, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Soledad Moore', NULL, NULL, 'bangladesh', '1992-10-24 16:57:00', 'male', 's7z1zi23mYZdfInwCy', '1-469-272-2138', 'geraldine32@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(265, 15, 4, 11, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Austin Botsford', NULL, NULL, 'bangladesh', '1989-08-15 16:36:55', 'male', '6C4a3vnLOcJMHS9kdG', '+1-952-617-8853', 'mathias.kreiger@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(266, 15, 12, 3, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Reginald McLaughlin', NULL, NULL, 'bangladesh', '1982-10-26 12:52:04', 'male', 'f6pcKIfKtYYF0t78XU', '+1-858-788-6067', 'libby77@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(267, 15, 9, 15, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Neil Mills', NULL, NULL, 'bangladesh', '1988-06-27 03:08:54', 'male', 'IYcyc3g7aqr2NzaH8I', '(904) 271-6869', 'ohuels@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(268, 15, 12, 22, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Christina Huels', NULL, NULL, 'bangladesh', '1999-09-14 17:04:22', 'male', 'E4OxLF3KrBrqjiPlaN', '443.646.9629', 'dallas.kling@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(269, 15, 6, 8, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Dena Romaguera II', NULL, NULL, 'bangladesh', '1991-05-29 12:32:08', 'male', 'SXSfViRcs2R1INCWdW', '+1-854-483-1141', 'macejkovic.benedict@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(270, 15, 1, 4, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Irwin VonRueden', NULL, NULL, 'bangladesh', '1984-09-25 09:06:27', 'male', '9Y7pEOkf4ivPc73HvI', '786.565.8011', 'jaylin.zieme@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(271, 15, 13, 7, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rod Lindgren', NULL, NULL, 'bangladesh', '1987-04-13 03:03:57', 'male', 'h00DCGHEhu03VFdnqv', '979.558.1756', 'bschneider@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(272, 15, 13, 6, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Narciso Lehner', NULL, NULL, 'bangladesh', '1987-11-27 09:44:26', 'female', 'VIylGvwDYlXjxndWF3', '1-651-737-0344', 'dosinski@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(273, 15, 10, 17, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Orland Cormier DVM', NULL, NULL, 'bangladesh', '1988-05-02 03:32:15', 'female', '0XeH15t8d5WH5jkyHw', '+1.631.996.9807', 'nichole74@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(274, 15, 4, 25, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bryana Bayer', NULL, NULL, 'bangladesh', '1991-02-08 22:17:04', 'male', 'VhVhj4GfwqjHIFUdOv', '1-864-320-5501', 'demond.dare@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(275, 15, 6, 15, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sierra Champlin', NULL, NULL, 'bangladesh', '1996-11-30 14:27:44', 'male', 'GKipHHreL1MVn0oepn', '412.328.4230', 'wolff.doris@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(276, 15, 11, 23, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Madyson Wisozk', NULL, NULL, 'bangladesh', '1995-07-10 12:47:27', 'male', 'CLrJKaAVyMNWj8ifWf', '+1-260-442-9855', 'winston23@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(277, 15, 8, 24, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gretchen Walker', NULL, NULL, 'bangladesh', '2000-01-29 22:39:07', 'male', 'dsjiQ3f27neOCAW0c2', '+1-862-726-4929', 'mcollier@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(278, 15, 5, 20, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Trevor Quigley', NULL, NULL, 'bangladesh', '1998-04-04 05:35:09', 'male', '79TcvcXdBQowZ5QX8I', '940.725.9204', 'dorris.gusikowski@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(279, 15, 10, 1, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Agnes Emard', NULL, NULL, 'bangladesh', '1983-10-10 13:23:17', 'male', 'HlIVQSNIyIzUjTemCs', '1-610-727-1260', 'sschimmel@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(280, 15, 10, 16, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Summer Parker', NULL, NULL, 'bangladesh', '1996-10-03 19:35:30', 'female', 'nqJUe8ezSVnKLk8ZUw', '+14249436923', 'andy26@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(281, 15, 4, 15, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Carrie Lemke', NULL, NULL, 'bangladesh', '1985-03-28 16:15:05', 'female', 'KrXVULq3w5IP7qc3QF', '1-908-463-9071', 'hayes.melany@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(282, 15, 11, 21, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Laila Bradtke', NULL, NULL, 'bangladesh', '1989-08-19 20:24:04', 'female', 'dM00DGmDL0dAMiI54r', '+1-678-255-5410', 'kuhlman.ryleigh@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(283, 15, 10, 1, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Izabella Ondricka', NULL, NULL, 'bangladesh', '1997-07-17 00:23:56', 'female', 'OnDJFT1igLpPkS8CI4', '(224) 835-1664', 'heaney.charley@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(284, 15, 1, 2, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Braden Lesch', NULL, NULL, 'bangladesh', '1989-07-31 04:43:20', 'male', 'jZCxlilaDlqHkdOI84', '+1.321.751.2033', 'rowe.aliya@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(285, 15, 2, 1, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lily Hammes', NULL, NULL, 'bangladesh', '1982-08-21 18:05:30', 'female', 'uA41lNfIB25UUXXVNk', '434-262-1559', 'bernice.schulist@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(286, 15, 6, 13, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Magdalena Jones', NULL, NULL, 'bangladesh', '2001-08-21 06:15:58', 'female', '1O5EHIsi2IOWSZvK24', '+1.330.698.3990', 'clyde.pouros@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(287, 15, 6, 9, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Vladimir Ratke', NULL, NULL, 'bangladesh', '1991-09-15 21:50:34', 'male', 'r63lJa9DsMgH8HzxJc', '(361) 826-4239', 'zachary.brown@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(288, 15, 8, 6, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sanford Jacobson', NULL, NULL, 'bangladesh', '1982-08-14 23:17:58', 'female', '9EK2kGUvNKke1Uht3x', '551.721.1337', 'afeest@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(289, 15, 6, 4, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Buford Fadel', NULL, NULL, 'bangladesh', '1999-07-15 05:36:51', 'female', 'WLjWu9u6t5jU5mwE7P', '+1-332-443-7737', 'felicia.upton@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(290, 15, 5, 25, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kari Greenholt IV', NULL, NULL, 'bangladesh', '1989-04-06 13:37:47', 'male', 'GOazQKoe5iTwzQ0Jsj', '+1 (970) 737-1079', 'paul.raynor@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(291, 15, 5, 17, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Marjolaine Legros', NULL, NULL, 'bangladesh', '1993-04-05 18:42:17', 'male', 'yQk5hAi82HZBcpHgbQ', '641.460.6311', 'bkulas@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(292, 15, 7, 4, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Joey Stracke', NULL, NULL, 'bangladesh', '1984-11-07 02:48:42', 'male', '2jjrGwc2TZv25BGPdS', '+1 (518) 730-3077', 'gina95@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(293, 15, 6, 18, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tamara Collier', NULL, NULL, 'bangladesh', '1984-08-14 23:20:14', 'male', 'gXRGsWuSRHRBpKR0jf', '(341) 740-0956', 'florine.dicki@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(294, 15, 10, 12, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Parker Sanford', NULL, NULL, 'bangladesh', '1984-03-13 22:51:35', 'male', 'uOhhTFf8QYR0lZZN7z', '1-929-384-0119', 'flatley.baron@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(295, 15, 6, 16, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dion Cronin', NULL, NULL, 'bangladesh', '1996-01-30 16:54:10', 'male', 'i6Xm4Yul3JAG4HQmcC', '+1.480.377.9173', 'anibal67@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(296, 15, 5, 25, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Briana Runolfsson', NULL, NULL, 'bangladesh', '1996-08-28 22:55:19', 'male', 'RrrVi9zFmeqwS2eZGM', '360.953.9634', 'kolby.kuvalis@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(297, 15, 11, 2, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Anahi Gerhold', NULL, NULL, 'bangladesh', '1992-02-13 02:31:19', 'male', '1U3w4XqrYmUswfU4gW', '+1-620-840-4225', 'tgleichner@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(298, 15, 8, 9, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ellsworth Yundt', NULL, NULL, 'bangladesh', '2001-03-22 17:36:56', 'male', 'NLM8WqCppmExZyOCNC', '+1.515.517.9920', 'bogan.khalil@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(299, 15, 10, 22, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Caroline Weissnat', NULL, NULL, 'bangladesh', '1990-10-09 23:48:07', 'female', 'aTu33df8W1cC7sojHj', '1-520-400-7662', 'hilario73@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(300, 15, 3, 15, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Caleb Morar', NULL, NULL, 'bangladesh', '2000-10-06 22:24:06', 'female', 'nLgOyyi8R0MZR7iLaT', '(725) 939-4074', 'kkilback@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(301, 15, 10, 19, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Monroe Bode', NULL, NULL, 'bangladesh', '1982-10-04 10:26:56', 'female', 'bGYEF1c6Nuy911X3vU', '(850) 316-7234', 'gregoria.swift@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(302, 15, 8, 23, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hailie Howell', NULL, NULL, 'bangladesh', '1994-07-27 17:10:42', 'female', 'qelOabiCzsl2g0gSbB', '1-631-544-4470', 'heaney.monserrate@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(303, 15, 1, 23, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Scottie Marquardt', NULL, NULL, 'bangladesh', '1989-12-21 04:16:00', 'female', '3x2vGiOonl9LsYeTD0', '+1 (364) 735-6452', 'upton.lela@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(304, 15, 6, 17, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Sonia D\'Amore PhD', NULL, NULL, 'bangladesh', '1999-09-05 05:12:08', 'male', 'jvMvRbzIALLKTz2UMv', '+1-857-407-6357', 'turner.maybelle@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(305, 15, 8, 20, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lenora Bode', NULL, NULL, 'bangladesh', '1995-01-07 05:52:59', 'male', 'V6IsLyWyyAkgvgnKxt', '(631) 391-0833', 'hane.marjorie@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(306, 15, 8, 21, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ramon Spinka', NULL, NULL, 'bangladesh', '1998-01-15 13:05:17', 'male', 'oedfmHBfVHk8oW0Ubp', '1-253-992-3437', 'vito69@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(307, 15, 7, 9, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Oliver Adams', NULL, NULL, 'bangladesh', '1992-04-08 06:13:40', 'male', 'yjYQ6LZd2nG9WlyJDj', '929.987.9461', 'camden.okon@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(308, 15, 13, 13, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Luigi Berge I', NULL, NULL, 'bangladesh', '1982-09-06 04:52:06', 'male', '8nqrGI4SlN0xx3RqI9', '618.440.5708', 'richmond04@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(309, 15, 5, 17, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Velma Dibbert', NULL, NULL, 'bangladesh', '1984-10-06 02:52:10', 'female', 'jC5NPcjJXTPKmoBLqV', '+12404607723', 'jovan89@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(310, 15, 9, 25, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Leilani Marvin', NULL, NULL, 'bangladesh', '2000-08-31 02:32:17', 'female', 'KxQe3BxQvsijpIsou6', '(808) 666-8980', 'hattie81@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(311, 15, 7, 24, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Braeden Kuvalis', NULL, NULL, 'bangladesh', '1988-10-20 13:56:21', 'male', 'KeERTSfUdEpA4IU8bY', '1-313-347-6304', 'vergie.bogisich@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(312, 15, 9, 14, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nathan Streich', NULL, NULL, 'bangladesh', '1983-02-08 20:14:12', 'male', 'U4DNK6lPaUuVhn8I0p', '+1 (907) 957-1956', 'hoberbrunner@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(313, 15, 10, 21, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Estell Schultz', NULL, NULL, 'bangladesh', '1993-12-24 05:02:00', 'female', 'JnyaGvUKeA0NQhdToI', '445-668-3365', 'mia.jacobi@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(314, 15, 10, 24, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kiana Erdman', NULL, NULL, 'bangladesh', '1984-11-22 16:04:58', 'male', 'B22Dbkt022IsXxI5LL', '(614) 618-4090', 'schaefer.vella@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(315, 15, 11, 25, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Leslie Botsford DDS', NULL, NULL, 'bangladesh', '1989-09-28 22:08:17', 'male', 'fk3DsymqrnNqG56mW1', '629-489-8454', 'clementine.zemlak@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(316, 15, 12, 9, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nathanial Keeling', NULL, NULL, 'bangladesh', '1993-05-18 12:24:01', 'male', 'uVIgmXQOdo0ybP5chf', '(914) 254-9374', 'cristina34@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(317, 15, 12, 5, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Yazmin Schaden', NULL, NULL, 'bangladesh', '1999-04-08 17:37:41', 'female', 'D9u9KUvwVKZC68NMev', '865-408-8167', 'hirthe.clarabelle@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(318, 15, 13, 19, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Johathan Feil', NULL, NULL, 'bangladesh', '1982-11-30 09:21:19', 'female', 'J7F1SM60Wm7bu9Oj5j', '(360) 776-9871', 'dlang@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(319, 15, 10, 8, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Emerson Treutel', NULL, NULL, 'bangladesh', '1988-11-23 02:53:35', 'male', 'rTm8xIgnVTADJ2DFzt', '+17439102041', 'tking@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(320, 15, 2, 20, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Alexa Bogan', NULL, NULL, 'bangladesh', '1995-01-22 09:22:37', 'female', '9uTMSvUGRcGz7vILHe', '669.947.4039', 'larson.bertram@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(321, 15, 10, 6, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Maximillian O\'Connell', NULL, NULL, 'bangladesh', '1983-06-17 09:08:22', 'female', 'zzuGPfMOyDgpGTCTBh', '1-779-590-1196', 'herzog.lulu@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(322, 15, 10, 24, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tania Klein', NULL, NULL, 'bangladesh', '1994-11-18 12:41:05', 'male', '96EbPxT2PxNJtx0rVM', '1-805-241-3425', 'imayer@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(323, 15, 11, 19, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Merle Miller DVM', NULL, NULL, 'bangladesh', '1991-07-31 22:17:22', 'female', 'vyyuKUYK9yFJ2uBb74', '903-816-1048', 'uriel.sipes@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(324, 15, 10, 5, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Triston Brekke', NULL, NULL, 'bangladesh', '1996-05-14 23:55:22', 'female', 'YWTmxNuSNFL9fkT7r6', '+1.772.639.9130', 'dolly.schowalter@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(325, 15, 2, 7, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Terry Maggio', NULL, NULL, 'bangladesh', '1990-08-03 00:20:01', 'male', 'TaOceNnTQohBVDd8wW', '+1-904-741-9275', 'brad77@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(326, 15, 5, 14, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Winnifred Christiansen', NULL, NULL, 'bangladesh', '1983-10-08 19:53:50', 'male', 'kaEGNusG7BFI2EL6YZ', '+1-779-430-8231', 'cara38@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(327, 15, 6, 19, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gregorio Steuber', NULL, NULL, 'bangladesh', '1990-07-31 21:33:35', 'male', 'EZWXF6NVBgpUSJao6J', '+1 (678) 440-6355', 'wcarroll@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(328, 15, 11, 20, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Billy Wiegand I', NULL, NULL, 'bangladesh', '1999-04-05 18:14:27', 'female', 'tM2YA36GvFOUBFwexZ', '534-212-9316', 'idibbert@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(329, 15, 12, 3, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Deanna Jakubowski', NULL, NULL, 'bangladesh', '1993-09-24 14:06:52', 'female', 'X2rP67dzwkEGwfDx5a', '234-551-0797', 'dortha37@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(330, 15, 4, 8, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alphonso Bernhard', NULL, NULL, 'bangladesh', '2001-05-17 07:06:46', 'male', 'gpHUvasMJVkvGlWbjA', '1-559-759-1907', 'johann.mohr@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(331, 15, 4, 24, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Monica Wolf III', NULL, NULL, 'bangladesh', '1988-08-29 10:33:23', 'female', 'Ffxqwj9Q4GeyaXAF8s', '(925) 691-4811', 'vbeahan@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(332, 15, 13, 22, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elaina Considine III', NULL, NULL, 'bangladesh', '1992-03-15 10:20:49', 'male', 'VAH8LVni6CyPE0sMxQ', '+1-986-503-0054', 'huels.randi@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(333, 15, 6, 3, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Archibald Turcotte', NULL, NULL, 'bangladesh', '1985-01-13 13:36:29', 'female', 'MbvoRPY56U4ldifFUq', '641.881.8570', 'junius.treutel@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(334, 15, 9, 11, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Antonette Nader Jr.', NULL, NULL, 'bangladesh', '1991-02-17 02:41:15', 'female', 'Bb3Crad9ZNajjTVjb5', '(260) 333-2627', 'ali.schaefer@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(335, 15, 5, 5, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Omari Lebsack II', NULL, NULL, 'bangladesh', '1984-05-01 12:06:21', 'male', 'kq1W4y1QpxHRRpJ29u', '(757) 402-0907', 'ulices52@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(336, 15, 7, 9, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Viola Baumbach IV', NULL, NULL, 'bangladesh', '1995-04-06 10:16:24', 'female', 'n9BI3hzy1egWMrw6BV', '+13616867010', 'vsmitham@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(337, 15, 8, 16, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Flavio Keebler V', NULL, NULL, 'bangladesh', '1994-09-26 06:53:56', 'male', '9YXuZQUL7m1DqjVsz4', '803.984.3185', 'danny.mclaughlin@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(338, 15, 4, 14, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Harmon Prohaska', NULL, NULL, 'bangladesh', '2000-12-12 01:22:14', 'female', 'sWfzm6f6JCNREypmRD', '+1 (651) 471-3050', 'gbradtke@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(339, 15, 2, 25, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Catharine Rath II', NULL, NULL, 'bangladesh', '1984-05-26 03:02:25', 'female', '4lkPwKGfgSj77mbvG7', '+1-276-241-3671', 'brannon01@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(340, 15, 6, 10, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Desmond Mante', NULL, NULL, 'bangladesh', '1991-12-27 13:26:53', 'female', 'phZBNMEywoCpGvoPBT', '520-591-7170', 'merl.hettinger@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(341, 15, 1, 25, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tessie Mayer', NULL, NULL, 'bangladesh', '1982-09-18 02:19:34', 'female', 'lVHuFTuPfcbmBCrAzI', '(332) 950-4518', 'marisa.rogahn@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(342, 15, 12, 4, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Imani Ratke', NULL, NULL, 'bangladesh', '1998-03-09 02:12:08', 'female', 'y9MbXhXIXcnsHpTXSk', '+1-806-794-9726', 'lockman.maymie@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(343, 15, 9, 2, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hobart Wiza', NULL, NULL, 'bangladesh', '1990-11-07 03:14:51', 'female', 'bGoRc2uOuX7HrO8Gku', '(364) 266-2570', 'zkuhn@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(344, 15, 12, 4, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Willa Lindgren', NULL, NULL, 'bangladesh', '2001-05-11 12:12:00', 'male', 'X2JDVW9v8kM88mEXal', '402-844-0208', 'melba.kuhic@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(345, 15, 5, 1, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Emory Russel', NULL, NULL, 'bangladesh', '1999-12-11 03:23:34', 'male', 'laCZHCuZVoS3zOMv4l', '956-908-9691', 'yadams@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(346, 15, 13, 4, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cecil Balistreri', NULL, NULL, 'bangladesh', '1987-07-01 13:52:14', 'female', 'dnQgBJoMgoqlatElh9', '+1-713-652-8569', 'santina80@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(347, 15, 6, 12, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Maegan Satterfield', NULL, NULL, 'bangladesh', '1988-10-21 02:25:33', 'female', 'KdMjBPMWIAfB5KSAXX', '+1 (520) 242-6819', 'vmckenzie@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(348, 15, 6, 24, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Raheem Kutch', NULL, NULL, 'bangladesh', '1991-07-06 05:10:42', 'male', 'e8umnxJhbNGHxA53da', '443.946.4228', 'phyllis.quigley@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(349, 15, 12, 10, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Clemens DuBuque I', NULL, NULL, 'bangladesh', '1992-10-04 13:50:25', 'male', '9d53tP0vAHubzx3GM6', '(458) 470-0573', 'barrows.lacey@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(350, 15, 9, 23, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Darrell O\'Reilly', NULL, NULL, 'bangladesh', '1992-03-25 10:36:42', 'male', '8rwqxQ0eYJ5pxwkbW7', '+1-585-428-1499', 'creola84@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(351, 15, 5, 8, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Herbert Franecki DDS', NULL, NULL, 'bangladesh', '2001-10-28 08:53:29', 'female', '9haAGagZzV3GStIlZB', '(419) 892-6543', 'ayla87@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(352, 15, 13, 19, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Rafaela Brekke MD', NULL, NULL, 'bangladesh', '1988-03-03 03:42:44', 'male', 'bSpOMPyjDMm7eIKyxc', '409-239-2115', 'iconnelly@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(353, 15, 6, 9, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mark Tillman II', NULL, NULL, 'bangladesh', '1993-03-26 13:43:24', 'female', '5sJGJRXYcRvDBLCF7P', '+16815338140', 'loraine04@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(354, 15, 2, 13, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Camren Veum I', NULL, NULL, 'bangladesh', '1985-09-21 19:11:17', 'female', 'nzZ8nnMw8X65egvc17', '341.624.4156', 'mconnelly@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(355, 15, 3, 20, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Fernando Little PhD', NULL, NULL, 'bangladesh', '1986-06-20 08:53:04', 'male', '6VSAii3OISQNIlhTt5', '(347) 927-7924', 'vhammes@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(356, 15, 7, 5, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bette Turner', NULL, NULL, 'bangladesh', '1983-09-02 12:54:48', 'female', 'xENbScrqHtD24F2qQI', '681.231.9503', 'goyette.robyn@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(357, 15, 5, 11, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Odie Medhurst', NULL, NULL, 'bangladesh', '1999-01-23 16:19:15', 'female', 'nNXFNdDZnrkQkF0dcH', '231.917.5810', 'jed10@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(358, 15, 2, 1, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Verla Heidenreich', NULL, NULL, 'bangladesh', '1991-08-10 03:34:36', 'female', 'QaKSG3Ny7ih6N8znTX', '+1-651-567-8855', 'vhuels@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(359, 15, 1, 18, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Wilhelm Klein', NULL, NULL, 'bangladesh', '2001-06-08 04:18:12', 'male', 'yBlwaD1bJmALYvinU9', '458.437.6957', 'fcasper@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(360, 15, 10, 3, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aileen Powlowski', NULL, NULL, 'bangladesh', '1986-09-22 21:04:24', 'female', 'BhsW5LwDZ3RLU5goc9', '424-819-2022', 'keeling.martine@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(361, 15, 3, 12, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Brandt Muller', NULL, NULL, 'bangladesh', '1998-09-21 00:40:36', 'female', 'KYGG3kxRmPMSUkxiU9', '+1-629-608-8680', 'ymarvin@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(362, 15, 12, 9, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Ursula Bednar MD', NULL, NULL, 'bangladesh', '1999-02-08 09:37:43', 'male', 'ItT8xC9ch56C814gSy', '1-337-485-4979', 'nienow.silas@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21');
INSERT INTO `candidates` (`id`, `role_id`, `job_category_id`, `job_id`, `company_id`, `pre_medical_id`, `pre_training_id`, `pre_biomatric_id`, `pre_medical_status`, `pre_training_status`, `pre_biomatric_status`, `ready_to_travel`, `selected_osc_id`, `present_address`, `permanent_address`, `candidate_name`, `father_name`, `mother_name`, `nationality`, `candidate_dob`, `candidate_gender`, `passport_number`, `phone_number`, `candidate_email`, `candidate_password`, `country`, `pre_medical_certificate`, `pre_traning_certificate`, `pre_medical_report`, `pre_training_report`, `created_by`, `updated_by`, `pre_medical_comments`, `pre_training_comments`, `approval_status`, `payment_assigned`, `status`, `result_status`, `permission_status`, `sending_status`, `offer_letter`, `employer_comments`, `offered_status`, `created_id`, `updated_id`, `created_at`, `updated_at`) VALUES
(363, 15, 9, 10, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mortimer Thompson', NULL, NULL, 'bangladesh', '1999-04-22 21:10:11', 'male', 'qEfAJPD55cGtjLGuHH', '1-364-803-7918', 'goodwin.jeremie@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(364, 15, 1, 20, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Quinn Feeney MD', NULL, NULL, 'bangladesh', '1987-04-04 18:14:07', 'male', 'qBWuCgRu2B6wpKVXxy', '+1-901-233-0467', 'vandervort.roxane@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(365, 15, 10, 4, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Unique Medhurst', NULL, NULL, 'bangladesh', '2000-05-27 02:20:19', 'female', 'WLt2NHAUaT0QYitMpM', '283-641-5564', 'rhoda.corwin@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(366, 15, 10, 15, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lavon Hauck DVM', NULL, NULL, 'bangladesh', '1985-07-02 04:43:02', 'female', '9DtECiyfopqHjA2jqz', '+18656848428', 'malachi.jenkins@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(367, 15, 2, 25, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Neil Hegmann', NULL, NULL, 'bangladesh', '1997-12-03 23:41:16', 'male', 'zF1P2Hl16LybNGPRYg', '1-925-500-2813', 'fmertz@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(368, 15, 6, 14, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Patience Gerlach II', NULL, NULL, 'bangladesh', '1989-10-11 08:46:56', 'female', 'KV5xkdNjARcWCONwGz', '281.220.6545', 'fahey.obie@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(369, 15, 3, 7, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Berry Beer', NULL, NULL, 'bangladesh', '1985-12-07 18:35:50', 'male', 'Ic2nfAZ0VDc2juzUNP', '1-678-669-7817', 'reilly.conrad@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(370, 15, 5, 6, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gloria Harvey', NULL, NULL, 'bangladesh', '1988-08-04 11:41:50', 'male', '8vWmZVdiTSWyWtalkq', '(623) 754-7117', 'unique61@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(371, 15, 4, 11, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tillman Block', NULL, NULL, 'bangladesh', '1995-06-22 04:48:03', 'male', 'WOIV2sk9Qc33PNrI7M', '+1.352.416.1328', 'berge.dell@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(372, 15, 1, 10, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Russel Corkery', NULL, NULL, 'bangladesh', '1998-11-10 07:43:50', 'female', 'AVFHi5taHqV4pEUWLm', '+1-213-446-8036', 'eondricka@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(373, 15, 3, 12, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Arvel Morar', NULL, NULL, 'bangladesh', '1996-10-08 09:57:39', 'female', 'mBkHwv8og2GQJijQE5', '+1.704.352.6516', 'barton.gerry@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(374, 15, 8, 23, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Garth Hills', NULL, NULL, 'bangladesh', '2001-01-05 18:31:01', 'female', 'eiUjv47QloWuaJd9HB', '+1 (641) 250-2589', 'yfriesen@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(375, 15, 4, 22, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kristopher Altenwerth MD', NULL, NULL, 'bangladesh', '1996-03-08 15:06:04', 'male', 'ID87gc19lq9rq72DiL', '445-933-0234', 'ernestine00@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(376, 15, 12, 18, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Brittany Wunsch Jr.', NULL, NULL, 'bangladesh', '1993-12-26 08:27:52', 'female', 'XqHeXaYBg30bZFLTYe', '+1 (225) 905-8034', 'collin74@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(377, 15, 5, 2, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tiffany Denesik', NULL, NULL, 'bangladesh', '1995-12-08 19:15:28', 'female', 'WmB54MfYxFrP0oEFSW', '(402) 713-3906', 'schiller.orie@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(378, 15, 1, 22, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dedric Gorczany', NULL, NULL, 'bangladesh', '1985-10-18 02:13:29', 'female', 'JG3MIaKHGzojFGR7zs', '434-295-1293', 'madeline96@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(379, 15, 10, 24, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ansley Block', NULL, NULL, 'bangladesh', '1989-05-23 04:52:35', 'male', 'pl2djehFbkmnENL9m5', '+1-570-598-0550', 'langworth.joana@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(380, 15, 7, 11, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Ari Fay PhD', NULL, NULL, 'bangladesh', '1992-06-11 16:45:44', 'male', 'IvNrOrbTWTwkdiQDTn', '551.670.2151', 'wyman.ike@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(381, 15, 5, 8, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Maximillia Mertz', NULL, NULL, 'bangladesh', '1988-03-17 09:07:47', 'female', 'hi2RfB1wB7YMHXrAa7', '+1.228.344.4931', 'renner.maximo@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(382, 15, 7, 20, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Charlie Mayert II', NULL, NULL, 'bangladesh', '1999-04-20 08:49:58', 'female', 'f6zw7pSRyeJ95gjXbQ', '+1-331-928-9035', 'milan54@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(383, 15, 1, 22, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Stacy Bins DDS', NULL, NULL, 'bangladesh', '2000-01-05 16:58:41', 'male', 'c8aN0llg6dqGMwbmZy', '530-344-2623', 'stamm.finn@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(384, 15, 7, 22, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jackeline Crona', NULL, NULL, 'bangladesh', '1983-09-08 11:07:04', 'male', 'XTIKcriHjdEztIX2Yg', '949-799-7508', 'quigley.rickie@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(385, 15, 11, 24, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marietta DuBuque', NULL, NULL, 'bangladesh', '1995-03-08 22:53:17', 'male', 'dX6zDPNpOjK2j5kn3C', '304.817.3564', 'libby71@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(386, 15, 10, 23, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Arnulfo Stanton', NULL, NULL, 'bangladesh', '1994-08-16 15:56:21', 'male', 'oVyDmxk9R293s7YKWE', '1-724-824-4251', 'stehr.destin@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(387, 15, 2, 12, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Vladimir Tremblay', NULL, NULL, 'bangladesh', '1987-12-04 01:46:00', 'male', 'pLZR6sQquzp5RdXxFQ', '1-786-815-7506', 'rene.white@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(388, 15, 13, 2, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alfonzo Kuhic', NULL, NULL, 'bangladesh', '1991-12-23 21:37:26', 'male', 'Exfpen5iQpgzqnvxPB', '(971) 826-1596', 'ritchie.joany@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(389, 15, 11, 21, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marjorie Mosciski', NULL, NULL, 'bangladesh', '1997-11-30 04:23:51', 'female', 'cCi7F6D4AzE8NhMPME', '+1.843.852.2223', 'duncan67@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(390, 15, 3, 2, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Piper Mayer', NULL, NULL, 'bangladesh', '1987-04-08 07:06:59', 'male', 'fl2grI8PwfUMtSYc8j', '1-769-964-0674', 'aurelia18@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(391, 15, 6, 17, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Howard Haag', NULL, NULL, 'bangladesh', '1991-10-08 10:16:36', 'male', 'Xn9HJpijSmnmJrXEUs', '678-654-2525', 'rachelle.kilback@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(392, 15, 5, 22, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Skye Pfeffer PhD', NULL, NULL, 'bangladesh', '1985-07-26 10:19:34', 'female', 'TJCYOmI7560i1JB1bl', '+1-351-256-9521', 'florian09@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(393, 15, 1, 18, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elinor Tromp', NULL, NULL, 'bangladesh', '1985-11-05 10:34:37', 'female', 'sCc3ehpaHYY4gMPmqs', '1-863-610-7584', 'gislason.makenzie@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(394, 15, 9, 6, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Shanon Predovic', NULL, NULL, 'bangladesh', '1996-07-31 08:56:23', 'female', 'SQgv1CNsMrYdWUilpA', '(417) 960-9963', 'mathew.king@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(395, 15, 9, 21, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lyric Schmidt', NULL, NULL, 'bangladesh', '1990-10-15 07:01:45', 'male', 'rbucg0hcmATbDsQghd', '(817) 510-1658', 'zdoyle@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(396, 15, 8, 20, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Daren Von', NULL, NULL, 'bangladesh', '1998-06-03 07:42:40', 'female', 'dqzWTAXZRVhRMisZUc', '661-658-7095', 'nick.weimann@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(397, 15, 12, 13, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Otis Waters', NULL, NULL, 'bangladesh', '1992-07-22 06:56:05', 'female', '16JryEQsAAOO3hPGK6', '209-644-4342', 'louie81@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(398, 15, 1, 12, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Erik Trantow', NULL, NULL, 'bangladesh', '1994-09-12 05:10:26', 'female', 'PpzNVoBsrbpM7H9grK', '1-425-642-4874', 'bulah45@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(399, 15, 6, 11, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Yesenia Nikolaus', NULL, NULL, 'bangladesh', '1988-12-26 08:02:53', 'female', 'ksm0R12WMIs7wsAzC6', '(713) 484-4572', 'andreane38@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(400, 15, 12, 5, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kallie Sanford', NULL, NULL, 'bangladesh', '1983-10-19 10:31:37', 'male', '9fD7UFT0lf0euIZzec', '1-938-506-9883', 'nkeeling@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(401, 15, 6, 9, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Myra Stiedemann', NULL, NULL, 'bangladesh', '1991-04-18 07:42:07', 'female', 's7VFfEpKDvgjqsBYQU', '1-979-204-1244', 'jbradtke@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(402, 15, 11, 22, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lucinda Block V', NULL, NULL, 'bangladesh', '1985-05-11 00:24:35', 'male', 'xgQidEaP9Gqx6RKqWW', '(757) 999-8213', 'ilind@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(403, 15, 8, 14, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Maxine Lind', NULL, NULL, 'bangladesh', '1999-04-04 21:29:13', 'female', 'hEsOv6FJuQlNctldHS', '(409) 845-1259', 'amelia76@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(404, 15, 13, 5, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Addison Nitzsche', NULL, NULL, 'bangladesh', '1999-05-05 10:58:37', 'female', 'CZvlacwk5FruDKxtNQ', '+1 (509) 273-9943', 'jdurgan@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(405, 15, 2, 2, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Myrtice Kovacek', NULL, NULL, 'bangladesh', '1998-11-11 04:47:47', 'male', 'L8u5eB1Ja1VC5pSmVe', '+1.458.771.4423', 'leora.altenwerth@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(406, 15, 2, 21, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Wade Toy', NULL, NULL, 'bangladesh', '1985-04-25 15:24:24', 'male', 'VU0sAv3ZYJdHFWKJui', '+15316043474', 'francis.bauch@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(407, 15, 6, 20, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Price Bogan MD', NULL, NULL, 'bangladesh', '1984-01-05 09:59:37', 'female', 'LZgTV8P4GcIK5L1eGG', '847.940.2430', 'helen60@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(408, 15, 8, 9, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Adela Yost IV', NULL, NULL, 'bangladesh', '1996-08-06 13:03:49', 'male', 'E4fdpXcvUu9GG0Jjmk', '1-731-778-5097', 'reid.franecki@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(409, 15, 5, 14, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Emmet Reichert', NULL, NULL, 'bangladesh', '1999-03-29 18:23:11', 'male', 'mksB1zWutyEX7EC2bM', '251-478-4927', 'rashad00@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(410, 15, 3, 3, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Anastasia Morissette DDS', NULL, NULL, 'bangladesh', '1982-06-10 10:16:10', 'male', 'wzGxS9BQCZr8IBaxJa', '386.932.8092', 'ulises00@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(411, 15, 4, 4, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lue Cruickshank', NULL, NULL, 'bangladesh', '1983-10-18 15:09:12', 'male', 'w9ZzW3rc2Qi3mEdFA5', '+1-707-670-1692', 'trent.von@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(412, 15, 5, 6, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dane Pfannerstill', NULL, NULL, 'bangladesh', '1986-02-03 11:57:28', 'male', 'UQ2TTdZmuSs1FHDnbU', '+19565705023', 'fdaugherty@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(413, 15, 1, 19, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Chaya Barton', NULL, NULL, 'bangladesh', '1984-10-03 01:02:59', 'female', 'rJ6BgEZTEu4cxbmhgE', '740-204-0166', 'lawson64@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(414, 15, 12, 24, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jaycee Hagenes', NULL, NULL, 'bangladesh', '1995-06-15 08:06:13', 'female', 'yZ09s5vJYYP8TMSHBR', '+1-484-553-0506', 'jpurdy@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(415, 15, 7, 21, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cathy Lang', NULL, NULL, 'bangladesh', '1994-01-25 02:09:53', 'female', 'JYxyStm46D9dfIkKyo', '+1-234-678-4858', 'johns.juvenal@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(416, 15, 13, 17, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Brooks Brakus', NULL, NULL, 'bangladesh', '1995-07-03 06:22:38', 'male', '4YiEnNtBIjMxYll9ND', '469-689-2422', 'vcronin@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(417, 15, 12, 12, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Paige Carter', NULL, NULL, 'bangladesh', '1999-10-16 10:52:43', 'female', 'WncQ5qtgDuoUuWRUCT', '+14709450357', 'fritsch.lilyan@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(418, 15, 7, 20, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kendrick Douglas', NULL, NULL, 'bangladesh', '1995-12-07 21:57:26', 'female', '8p0AD21qHtqTBYRZ1n', '+1-575-344-7191', 'dvolkman@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(419, 15, 9, 3, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Matteo Grimes', NULL, NULL, 'bangladesh', '1995-11-25 21:17:50', 'female', 'uPc4iqH3DrcYITWLet', '971-813-0735', 'hermann.ciara@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(420, 15, 5, 7, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Eryn Bayer PhD', NULL, NULL, 'bangladesh', '1989-08-31 21:57:00', 'female', 'ONwoYMv6JKtrwgLSQq', '307.665.1734', 'qshields@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(421, 15, 4, 10, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jamir Block Sr.', NULL, NULL, 'bangladesh', '2001-03-25 19:30:15', 'female', '2YvThtiaJmTeAxeK60', '747-257-4514', 'kailee.gleichner@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(422, 15, 7, 13, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Chyna Wisoky', NULL, NULL, 'bangladesh', '1989-07-15 15:59:22', 'male', 'AVztOKYksW6Apc0cvQ', '351-352-6567', 'lind.dejuan@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(423, 15, 7, 24, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Joany Swift', NULL, NULL, 'bangladesh', '1992-11-22 09:47:41', 'female', '1sF14jSKzxJxFXKh9n', '463.844.5437', 'aniya.bruen@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(424, 15, 5, 4, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Anastasia Jast', NULL, NULL, 'bangladesh', '1999-04-20 02:00:25', 'female', 'hrKHDU136Sbnvuk65U', '830.810.0239', 'daphnee.gulgowski@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(425, 15, 8, 17, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marcia Prohaska MD', NULL, NULL, 'bangladesh', '1997-04-06 13:09:49', 'male', 'b9fOzlPEYcCmAQUkpk', '(678) 244-9300', 'herminia52@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(426, 15, 2, 4, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jesus Kuphal IV', NULL, NULL, 'bangladesh', '1990-10-07 17:31:39', 'male', 'xMbH9a9pcW8NUJBIqk', '+1.564.849.5264', 'eluettgen@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(427, 15, 10, 9, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nicole Reilly', NULL, NULL, 'bangladesh', '1991-09-07 12:41:49', 'female', 'MYO1lh6IfMYsLlcDXU', '+12349365156', 'cbernhard@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(428, 15, 1, 23, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Ransom Stiedemann III', NULL, NULL, 'bangladesh', '1998-01-12 08:26:38', 'male', 'DG1UHl3vjA5qpYEicK', '989-906-1986', 'rollin65@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(429, 15, 12, 1, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kayla Koepp', NULL, NULL, 'bangladesh', '1999-06-09 21:24:11', 'female', '5crcUGVg9GySEI3N6X', '+1 (573) 536-6121', 'olson.amalia@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(430, 15, 7, 9, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Jeanette Ratke PhD', NULL, NULL, 'bangladesh', '2001-02-08 16:20:43', 'female', 'QLB79tRprLbyZS3Lhn', '(309) 335-7107', 'astanton@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(431, 15, 6, 24, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Mabelle Batz', NULL, NULL, 'bangladesh', '1984-08-09 22:23:43', 'female', 'bfesQrALuY1y7UK3Kk', '816-535-6636', 'edison07@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(432, 15, 6, 7, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Chanel Swaniawski', NULL, NULL, 'bangladesh', '1993-01-11 19:09:09', 'male', '54P77w0Bhk8Sj5tFWe', '205.295.2367', 'swaniawski.maci@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(433, 15, 8, 21, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sigmund Ortiz', NULL, NULL, 'bangladesh', '1999-10-17 01:34:21', 'female', 'nloRJuykw4NunXW9JC', '+1.940.320.1538', 'karen.kshlerin@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(434, 15, 12, 11, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kiana Mraz IV', NULL, NULL, 'bangladesh', '1995-02-10 00:14:38', 'female', 'RGxWzjrevAsr4iqFEs', '1-442-283-7298', 'dolly41@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(435, 15, 8, 1, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Estrella Lemke', NULL, NULL, 'bangladesh', '1998-04-03 04:47:53', 'female', 'sKW3Rp8qoGSdThS6QM', '1-786-526-1815', 'pkiehn@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(436, 15, 11, 21, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Wilfrid Schaefer DDS', NULL, NULL, 'bangladesh', '1990-11-16 22:22:47', 'female', 'uffIniqMNtk3aaDrwH', '1-765-803-0551', 'voconner@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(437, 15, 7, 20, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Josephine Fritsch III', NULL, NULL, 'bangladesh', '1989-09-09 10:21:25', 'female', 'sDiD7Mc6sSjRBGtCWk', '1-425-914-2001', 'walker.carley@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(438, 15, 9, 4, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Adolphus Dibbert', NULL, NULL, 'bangladesh', '1987-08-20 01:14:18', 'male', '9sRwvXHo0YFtt5J15n', '682-950-9743', 'troy38@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(439, 15, 1, 4, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Belle Dach', NULL, NULL, 'bangladesh', '1988-09-20 22:25:28', 'male', '11EjdiO8fZL8Up2PjJ', '260.209.1410', 'shanon.brown@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(440, 15, 10, 14, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Brannon Bahringer', NULL, NULL, 'bangladesh', '1989-04-08 17:18:43', 'male', 'KTeU2ObdYJfpPdkscu', '+1-469-334-1266', 'hziemann@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(441, 15, 11, 19, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alanis Greenholt', NULL, NULL, 'bangladesh', '1990-09-28 18:21:36', 'female', 'J1SRNb3O168zIqfpOR', '1-317-658-3353', 'reynolds.caden@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(442, 15, 1, 14, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gavin Volkman', NULL, NULL, 'bangladesh', '2001-12-16 14:08:39', 'male', 'HEO5jPxpVZrYYkhK61', '+1-712-741-7834', 'luis.reinger@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(443, 15, 7, 17, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Yasmine Schaefer', NULL, NULL, 'bangladesh', '1983-06-29 06:56:21', 'male', 'b9WGF8B8VGsYKEt7Mf', '516-689-7549', 'bergnaum.juana@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(444, 15, 6, 13, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Andy Bergnaum', NULL, NULL, 'bangladesh', '1982-12-15 19:51:58', 'male', 'I8pnfYOpruDXIe4HMO', '352-638-9041', 'cleve.marvin@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(445, 15, 12, 3, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Delia Mayer', NULL, NULL, 'bangladesh', '1991-09-01 20:39:19', 'female', 'L3N5UEWY7pG1JITsyL', '+1-724-404-0786', 'deondre41@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(446, 15, 5, 16, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Araceli Hickle', NULL, NULL, 'bangladesh', '1982-08-26 22:41:37', 'male', 'HK3piDU92BMFL0Ev6F', '937.313.3045', 'kautzer.clement@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(447, 15, 9, 6, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Barrett Dibbert', NULL, NULL, 'bangladesh', '1985-10-26 05:49:47', 'male', 'TZl9dJRlWUFTh025Wc', '689-724-7578', 'velma63@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(448, 15, 11, 6, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Flavio Nikolaus', NULL, NULL, 'bangladesh', '1994-11-19 16:22:19', 'male', 'D6xCbfBsObS9B99xID', '+18587128982', 'naomie.senger@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(449, 15, 7, 17, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Gonzalo Schiller', NULL, NULL, 'bangladesh', '1996-11-10 03:39:29', 'female', 'dSyovmzVjt7OAFzUws', '715-634-1110', 'jziemann@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(450, 15, 11, 2, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ora Hilpert', NULL, NULL, 'bangladesh', '1993-08-21 02:46:54', 'female', '1fFDBGpsa84p8C6j7t', '+18507594146', 'norris55@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(451, 15, 1, 4, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Dolores Mitchell III', NULL, NULL, 'bangladesh', '1996-06-07 03:06:10', 'female', 'cCl5jaQcdcUfsSEWuJ', '+19307327814', 'dbergnaum@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(452, 15, 1, 25, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Maudie Marks', NULL, NULL, 'bangladesh', '1995-09-12 00:15:20', 'male', 'gwDqyZbofp47gzHJ8v', '760.832.9462', 'oreilly.sharon@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(453, 15, 1, 18, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Keyon Hoeger III', NULL, NULL, 'bangladesh', '1994-02-25 19:32:22', 'female', '9WtIRdjrDNTS0bu0QN', '(541) 553-6122', 'arlo.mcglynn@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(454, 15, 7, 1, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dejon Glover', NULL, NULL, 'bangladesh', '1991-04-24 08:20:51', 'male', 't4GVCJrN2KPni4jyhQ', '+19092789187', 'lang.cordia@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(455, 15, 7, 23, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Yessenia Moore Sr.', NULL, NULL, 'bangladesh', '1998-03-19 09:14:10', 'male', 'Krd8dLQ8Yn6YlAtKyn', '+1-689-303-8445', 'delbert.predovic@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(456, 15, 12, 4, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alexandria Swift', NULL, NULL, 'bangladesh', '1995-05-16 17:24:59', 'female', '0KrcpseENZlyQrAOqU', '+1-412-414-0301', 'marina.beahan@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(457, 15, 3, 9, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Stanley Hill MD', NULL, NULL, 'bangladesh', '1993-01-04 00:02:30', 'female', 'wUfIUKDDMIPdpCHla8', '+1-843-650-2697', 'alicia.bechtelar@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(458, 15, 6, 9, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marta Ryan', NULL, NULL, 'bangladesh', '2000-10-02 19:51:50', 'female', 'LS424uzat5fRfg5ptg', '+1 (351) 908-7420', 'goodwin.jeremie@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(459, 15, 5, 8, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Laura Franecki', NULL, NULL, 'bangladesh', '1986-06-11 06:23:46', 'female', 'O1aCTeYvIvf3R47Tgl', '1-260-954-4146', 'kdickinson@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(460, 15, 12, 22, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Karson Langosh', NULL, NULL, 'bangladesh', '1998-01-17 00:56:03', 'male', 'YdZPYv7oZNxifHxyj4', '1-272-584-1325', 'keeley.jakubowski@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(461, 15, 3, 7, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Imani Sipes', NULL, NULL, 'bangladesh', '1996-01-08 09:24:35', 'male', 'yuE9UNzyMaigeut8vq', '+17709012765', 'kailey18@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(462, 15, 8, 5, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jayce Schumm Sr.', NULL, NULL, 'bangladesh', '1988-04-26 05:37:34', 'male', 'Hf0jrnfi9VJsRA0oey', '432.457.7417', 'sim87@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(463, 15, 12, 4, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tamara Weimann', NULL, NULL, 'bangladesh', '1997-05-13 11:18:23', 'male', 'OOoIl3IdGoxFHUkise', '+12623978700', 'raynor.cecilia@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(464, 15, 3, 4, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Moriah Hessel', NULL, NULL, 'bangladesh', '1992-09-16 03:33:37', 'female', 'apsRmDaDjcJ7PslH6k', '+1-938-784-7230', 'huel.teresa@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(465, 15, 13, 13, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Joy Wolff IV', NULL, NULL, 'bangladesh', '1989-11-13 23:33:24', 'female', 'MMEP32aFzwO43Ui9Ao', '346-534-7764', 'langworth.isaac@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(466, 15, 13, 21, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bette Paucek DDS', NULL, NULL, 'bangladesh', '1994-09-07 07:52:29', 'female', 'fIXIEEDbNOdLwaD6i2', '1-872-232-4795', 'bashirian.kirk@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(467, 15, 2, 16, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mose Koss', NULL, NULL, 'bangladesh', '1986-05-17 09:43:25', 'female', 'BMbeKMg5d9Qvh7VX0Q', '512-913-5416', 'alex70@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(468, 15, 4, 22, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Armani Schiller', NULL, NULL, 'bangladesh', '1993-06-13 07:28:13', 'male', 'rjWRUmBW0ZdzwQ8m2K', '+18384496648', 'kelton50@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(469, 15, 3, 23, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Weldon Muller', NULL, NULL, 'bangladesh', '1994-02-27 18:35:54', 'male', 'LcZINEwmc1Q87li5e6', '(860) 843-0844', 'rippin.colby@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(470, 15, 12, 11, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jennie Sporer IV', NULL, NULL, 'bangladesh', '1998-04-24 23:00:17', 'male', 'yR4qAwUCS6tSuXF2sp', '(662) 359-9962', 'francesco59@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(471, 15, 2, 5, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Angeline McClure III', NULL, NULL, 'bangladesh', '1999-02-23 20:27:02', 'male', 'AZr1JWiiPaiuEmWBYy', '361.527.1516', 'ebahringer@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(472, 15, 5, 20, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alfredo Pollich IV', NULL, NULL, 'bangladesh', '1984-05-04 22:36:42', 'female', 'C6aHLwvzKXCV5pRseb', '+1 (830) 384-6679', 'bfeil@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(473, 15, 5, 14, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lilian Brakus', NULL, NULL, 'bangladesh', '1985-02-06 23:07:04', 'female', 'KBcZVfw3qfU5YszZhi', '+1 (346) 946-8492', 'judah.dietrich@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(474, 15, 10, 20, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rupert Mayer', NULL, NULL, 'bangladesh', '2001-01-02 13:05:49', 'male', 'zGv3ceAyxULXyVVwJy', '+1-463-555-8155', 'filiberto.herman@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(475, 15, 4, 22, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alisha Auer', NULL, NULL, 'bangladesh', '1997-02-25 03:13:36', 'female', 'EtKPHIr3XP38NRCFxx', '330.785.8750', 'lind.vidal@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(476, 15, 7, 15, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Karine Gulgowski III', NULL, NULL, 'bangladesh', '1990-11-09 08:26:13', 'female', '7qzBdKBWOPKOg2W7sG', '+1-985-280-4376', 'elisabeth.torphy@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(477, 15, 8, 6, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bailey Grimes', NULL, NULL, 'bangladesh', '1986-01-30 19:18:28', 'female', 'pBnypqQ9thZeRjAjIY', '+1-669-901-9897', 'marquardt.nichole@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(478, 15, 3, 15, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Jayme Collins I', NULL, NULL, 'bangladesh', '1983-05-16 23:52:06', 'male', 'hAeLPDpTvviUan9aYP', '423.679.9968', 'lawrence82@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(479, 15, 10, 5, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sandrine Veum', NULL, NULL, 'bangladesh', '1986-10-07 06:08:01', 'female', 'CNo2r5N1LfviNflj3m', '1-425-617-2565', 'gschinner@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(480, 15, 4, 12, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ludwig Stracke Jr.', NULL, NULL, 'bangladesh', '2001-07-28 05:07:50', 'female', 'pexGARA3qFGfIlC05a', '+1 (785) 761-3890', 'jude.effertz@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(481, 15, 5, 24, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cory Greenfelder', NULL, NULL, 'bangladesh', '1983-08-22 13:03:22', 'female', 'JNasRZFRlekS8b3ZZ6', '816.514.5058', 'marlin59@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(482, 15, 4, 3, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Foster Eichmann', NULL, NULL, 'bangladesh', '1991-03-29 08:14:45', 'male', 'Di434c7F5B2Baq37EP', '1-928-330-6334', 'chanel.schmidt@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21');
INSERT INTO `candidates` (`id`, `role_id`, `job_category_id`, `job_id`, `company_id`, `pre_medical_id`, `pre_training_id`, `pre_biomatric_id`, `pre_medical_status`, `pre_training_status`, `pre_biomatric_status`, `ready_to_travel`, `selected_osc_id`, `present_address`, `permanent_address`, `candidate_name`, `father_name`, `mother_name`, `nationality`, `candidate_dob`, `candidate_gender`, `passport_number`, `phone_number`, `candidate_email`, `candidate_password`, `country`, `pre_medical_certificate`, `pre_traning_certificate`, `pre_medical_report`, `pre_training_report`, `created_by`, `updated_by`, `pre_medical_comments`, `pre_training_comments`, `approval_status`, `payment_assigned`, `status`, `result_status`, `permission_status`, `sending_status`, `offer_letter`, `employer_comments`, `offered_status`, `created_id`, `updated_id`, `created_at`, `updated_at`) VALUES
(483, 15, 3, 23, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Adrianna Hickle', NULL, NULL, 'bangladesh', '1997-10-31 22:45:17', 'female', 'OkQd0JnOhzljGJ9YoK', '+1-469-430-7523', 'litzy14@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(484, 15, 8, 4, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Brannon Denesik', NULL, NULL, 'bangladesh', '1998-08-30 07:54:08', 'female', '1nprKdfSEbSlB9s9Qa', '+15863796550', 'kozey.isabella@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(485, 15, 7, 22, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Casper Greenholt', NULL, NULL, 'bangladesh', '1997-03-23 21:44:29', 'female', 'OvwJhggzA5rkrWGEVQ', '+1-364-613-4835', 'larue58@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(486, 15, 3, 15, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Virgie Howe IV', NULL, NULL, 'bangladesh', '2001-04-09 13:53:17', 'male', 'AYQtQB9e4h1tTdiWVh', '364-415-5991', 'kayden.strosin@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(487, 15, 8, 21, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lawrence Reinger', NULL, NULL, 'bangladesh', '1983-07-24 01:19:32', 'female', 'pCknBFdHIvCBUCnB8Z', '+1 (740) 773-3282', 'hschmitt@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(488, 15, 13, 19, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Candida Abshire', NULL, NULL, 'bangladesh', '2001-03-28 09:02:58', 'male', 'eMNOVYEsqHWG17ceZ0', '+15803746396', 'lottie.gleichner@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(489, 15, 8, 25, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hellen Weber Sr.', NULL, NULL, 'bangladesh', '1991-12-30 22:10:31', 'male', '2JSVMOuONTfphvgB8n', '1-651-493-4387', 'piper28@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(490, 15, 11, 18, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bart Russel', NULL, NULL, 'bangladesh', '1998-04-20 00:44:26', 'male', 'YAMG2SCg26mUUzR3pG', '1-915-234-1612', 'joan.bartell@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(491, 15, 3, 2, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Amya Schuster V', NULL, NULL, 'bangladesh', '1989-11-06 10:33:42', 'male', 'JiiUNVASt7W5Hm63be', '(304) 582-9467', 'jed.johns@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(492, 15, 1, 4, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Delbert Parker', NULL, NULL, 'bangladesh', '1996-12-08 02:57:29', 'female', 'a10txNfZDUUbLVosu8', '(979) 427-0886', 'hulda.bernhard@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(493, 15, 4, 9, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marianna Hills III', NULL, NULL, 'bangladesh', '1983-11-16 23:00:04', 'male', 'hnYiH5ekQAikMG2tQM', '816-392-9964', 'melyssa49@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(494, 15, 4, 6, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Landen Gusikowski Jr.', NULL, NULL, 'bangladesh', '1997-06-24 10:33:19', 'male', 'YrcxtNf3jcrLIqKPpx', '1-754-381-9163', 'vbailey@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(495, 15, 9, 21, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eldridge Kertzmann', NULL, NULL, 'bangladesh', '1994-11-26 02:32:33', 'female', '7pSGOBfJ8bNrzpBen2', '1-773-750-0127', 'judd40@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(496, 15, 12, 19, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dorothy Weber', NULL, NULL, 'bangladesh', '1987-07-22 14:57:23', 'female', 'KaGEq7eqBwyGTe4E56', '+1 (401) 293-9872', 'emmie04@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(497, 15, 12, 23, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Arvel Reynolds', NULL, NULL, 'bangladesh', '1996-11-13 15:02:01', 'female', 'g3ji9E41Muf1BNtJMW', '(520) 458-8367', 'bertrand03@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(498, 15, 2, 21, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Bette Mohr', NULL, NULL, 'bangladesh', '1989-10-05 09:13:26', 'male', 'DENa9sMFfc5KTT2HWy', '1-724-589-6442', 'cade87@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(499, 15, 4, 17, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Isobel Wunsch', NULL, NULL, 'bangladesh', '1988-06-28 05:48:06', 'male', '4X8m1Wk2LszTWUOgjl', '1-346-399-8404', 'wbeahan@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(500, 15, 5, 4, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alene Bailey PhD', NULL, NULL, 'bangladesh', '1999-08-25 12:01:09', 'male', '83656pAkiAC9oJck8t', '+1.360.928.5256', 'uwisozk@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(501, 15, 13, 20, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jackeline Oberbrunner III', NULL, NULL, 'bangladesh', '1999-09-04 04:51:19', 'male', 'Jfc0u9UIhHZVqx4D6f', '1-279-730-3058', 'towne.desmond@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(502, 15, 1, 25, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Trystan Treutel', NULL, NULL, 'bangladesh', '1988-02-27 03:38:04', 'male', 'Ja4a8dvEfZejO3x2yc', '+1-972-782-1848', 'torp.jalon@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(503, 15, 6, 19, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jerald Cartwright IV', NULL, NULL, 'bangladesh', '1995-03-25 18:02:09', 'male', 'v888SXJoCwSM1bBhZ2', '(386) 340-0983', 'travis58@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(504, 15, 12, 11, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cordia Fadel', NULL, NULL, 'bangladesh', '1999-10-25 19:03:47', 'male', 'Oyjjlz7jhI5rIDkXkU', '509-784-6837', 'georgette.mraz@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(505, 15, 12, 10, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Trevion Kassulke', NULL, NULL, 'bangladesh', '1985-01-06 20:05:07', 'female', 'CBgEBj2egIRHz1nG2E', '+1 (318) 696-6009', 'guiseppe.gleason@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(506, 15, 7, 4, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Verona Murray DDS', NULL, NULL, 'bangladesh', '2001-05-19 12:01:30', 'female', 'k6ccIwKDUuFdDBi5w7', '256.772.9250', 'ziemann.keshawn@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(507, 15, 8, 17, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Damaris Konopelski', NULL, NULL, 'bangladesh', '1989-05-04 11:41:01', 'female', 'qEvpan2itqXbw5rkaI', '+1 (425) 877-8560', 'cruickshank.demario@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(508, 15, 10, 11, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Juana Homenick', NULL, NULL, 'bangladesh', '1982-06-07 21:24:38', 'male', 'dTuvt7bED6Ytfufr6L', '1-229-766-9780', 'prince88@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(509, 15, 1, 15, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Adolphus Harber', NULL, NULL, 'bangladesh', '2001-11-14 17:27:13', 'male', 'AGVp7phC2qOXSiUM2W', '+1-267-542-2665', 'katelyn53@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(510, 15, 5, 10, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mckenna Breitenberg I', NULL, NULL, 'bangladesh', '1986-10-14 18:58:52', 'female', 'mCkQvPzMvZ6GZH4xzd', '1-469-350-9127', 'helen99@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(511, 15, 5, 13, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Wava Becker', NULL, NULL, 'bangladesh', '1999-07-26 19:04:23', 'male', 'PPTg6252xzDvM406Ou', '1-609-620-3585', 'jerde.nestor@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(512, 15, 5, 10, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lorenz Trantow', NULL, NULL, 'bangladesh', '1985-07-02 16:42:43', 'male', 'IaAKMVxe1nypZkqczV', '+1 (743) 666-2054', 'ycorwin@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(513, 15, 8, 11, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Haleigh Goldner', NULL, NULL, 'bangladesh', '1985-11-24 09:05:01', 'female', 'BnTxHgURvZCdaGiZcA', '209-449-8914', 'ymayer@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(514, 15, 5, 3, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alvera Stokes II', NULL, NULL, 'bangladesh', '1992-05-24 00:36:14', 'male', '4zLjF58QXcUrHcLmkq', '+1.408.473.5952', 'josie.hoeger@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(515, 15, 9, 23, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dante Bernier I', NULL, NULL, 'bangladesh', '1992-10-26 22:34:16', 'female', 'EQikrSRWB21Z9r62g6', '+1 (539) 910-6999', 'pthiel@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(516, 15, 12, 24, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alanna Considine DDS', NULL, NULL, 'bangladesh', '1992-11-24 23:19:09', 'female', 'Um3EgQcEh0UkNWttc6', '+1 (724) 518-9654', 'larkin.vena@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(517, 15, 10, 19, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lenora Kshlerin', NULL, NULL, 'bangladesh', '1985-07-28 20:29:18', 'male', 'uKcfx2pwWL9CfF8xzP', '+1-224-397-8373', 'krajcik.roslyn@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(518, 15, 7, 6, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Yasmin Murray', NULL, NULL, 'bangladesh', '1992-11-12 00:35:48', 'female', 'tc9kYGZrq3Cnpp4tER', '+1-786-892-3256', 'ladarius03@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(519, 15, 1, 15, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marietta Parisian', NULL, NULL, 'bangladesh', '1987-05-29 18:38:32', 'female', 'gl8P9RM9mIPX3ztA8Z', '(986) 635-5488', 'price.stanford@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(520, 15, 3, 7, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Vita Considine', NULL, NULL, 'bangladesh', '1986-02-04 01:13:03', 'female', 'E7NuApMMxB0AyfqwfJ', '763.234.2483', 'lmcdermott@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(521, 15, 8, 22, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kennith Kshlerin', NULL, NULL, 'bangladesh', '1995-06-06 08:54:55', 'male', 'oEIy1kNj4uvBX8ICui', '+17702341922', 'vincenzo.okuneva@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(522, 15, 4, 2, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alexandrine Keebler', NULL, NULL, 'bangladesh', '1987-02-02 20:57:18', 'male', 'SlhkiLzRbFxElKJfaB', '+1.970.835.9891', 'mina73@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(523, 15, 8, 20, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Giovanny Marks', NULL, NULL, 'bangladesh', '1997-11-19 06:43:14', 'male', '7e6lydxjcIv89JuHWV', '321.926.6373', 'arely13@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(524, 15, 8, 17, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Claudia Altenwerth', NULL, NULL, 'bangladesh', '1982-09-11 03:07:11', 'female', 'BcBJiUPy2xwkW6Ugvh', '+1 (575) 646-4206', 'hayes.chaz@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(525, 15, 10, 16, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Susana Upton DDS', NULL, NULL, 'bangladesh', '1989-11-27 08:04:24', 'male', 'OASHMdUXPQ3NkMWNUB', '313.683.9170', 'wunsch.terrence@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(526, 15, 8, 9, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jonathan Dicki', NULL, NULL, 'bangladesh', '2000-10-15 23:17:42', 'male', 'OBGabRz2adW2deL4hG', '+1-217-652-6411', 'nziemann@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(527, 15, 11, 13, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Damien Satterfield PhD', NULL, NULL, 'bangladesh', '1985-01-12 07:59:33', 'female', 'qlfuWk09WggcpML3CZ', '737.474.9260', 'enrique.eichmann@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(528, 15, 6, 1, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Hellen Cole V', NULL, NULL, 'bangladesh', '1994-05-26 00:04:43', 'female', 'wUIMyMpJfvcSTO9V0l', '+1.252.206.1155', 'schmitt.otis@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(529, 15, 9, 18, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Pete Walter II', NULL, NULL, 'bangladesh', '1982-07-23 16:57:58', 'female', '7kffavsFAuo0XVuojB', '+1 (979) 939-3209', 'wiegand.gwendolyn@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(530, 15, 1, 7, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eriberto Sauer', NULL, NULL, 'bangladesh', '1997-02-07 21:39:17', 'female', 'FQyagB1eyeLGNzmPea', '(314) 524-2927', 'allan.doyle@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(531, 15, 8, 16, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Colton Brown', NULL, NULL, 'bangladesh', '1991-03-30 09:51:05', 'male', 'qgaB41uF7WQJdzD8k8', '209.960.2798', 'kling.rose@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(532, 15, 11, 12, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Russel Beer', NULL, NULL, 'bangladesh', '1985-06-24 17:16:37', 'male', '2lJgfvOjUINZ0xEgrK', '680.735.6596', 'fwelch@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(533, 15, 4, 3, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alba Fay', NULL, NULL, 'bangladesh', '1991-03-22 04:26:10', 'male', '08nL0dZP8MODUSOmFk', '(817) 556-2968', 'bechtelar.burnice@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(534, 15, 11, 4, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Delphia Hand III', NULL, NULL, 'bangladesh', '2001-10-31 05:40:02', 'male', 'Lx2GSDnbFrBrfaHSvm', '512.722.9674', 'sanford.xavier@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(535, 15, 13, 4, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Buford Lueilwitz Sr.', NULL, NULL, 'bangladesh', '1995-03-25 08:07:17', 'male', 'e58oxnuce04CM0l5uK', '+1 (573) 455-7542', 'zcollier@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(536, 15, 2, 3, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Chyna Feeney', NULL, NULL, 'bangladesh', '1993-04-10 05:11:44', 'male', 'fmophvnPDFaP4vCjF4', '+1.878.232.7235', 'quinten.bashirian@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(537, 15, 7, 20, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Robin Jast MD', NULL, NULL, 'bangladesh', '1994-07-09 16:46:01', 'male', 'uFk0rtgWzohgAg2toG', '+1 (984) 871-8512', 'wunsch.enrique@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(538, 15, 5, 16, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marjolaine Boyle DDS', NULL, NULL, 'bangladesh', '2001-08-11 06:03:12', 'male', 'O8ud5SysuDW8RbVOej', '+1-380-789-4066', 'runolfsson.dallas@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(539, 15, 5, 5, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Michele Schroeder', NULL, NULL, 'bangladesh', '1997-06-05 20:24:48', 'male', 'rdWJlRD2rQ8V0yMmtI', '1-614-665-0618', 'amely96@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(540, 15, 3, 16, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alf Tromp V', NULL, NULL, 'bangladesh', '1986-11-17 05:31:00', 'male', '0JQEBRNqtzIL89JeN0', '1-769-507-7839', 'fjohnson@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(541, 15, 5, 4, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Arlie Harris', NULL, NULL, 'bangladesh', '1990-01-01 12:09:21', 'female', 'fsg2705kQIKulepCyE', '463.723.2077', 'keanu.gislason@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(542, 15, 10, 21, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cleo Schultz', NULL, NULL, 'bangladesh', '1992-08-03 10:30:07', 'male', 'PbRNCvzoERIoQauzHg', '331.859.4535', 'qjohnston@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(543, 15, 12, 16, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miller Ritchie', NULL, NULL, 'bangladesh', '1992-09-15 16:49:19', 'female', 'R9B7ZQT0xyK9GgNjnD', '347-640-4532', 'ahyatt@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(544, 15, 6, 4, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Stan Simonis', NULL, NULL, 'bangladesh', '1988-08-09 22:19:04', 'female', 'SbZTiyMqi7lmM2JSkw', '1-870-641-4530', 'ostokes@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(545, 15, 10, 23, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marlee Cummerata', NULL, NULL, 'bangladesh', '1991-06-04 09:45:39', 'male', '1SrpRkN3Hvc9ZSG3xz', '539.420.4259', 'ismael.hills@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(546, 15, 12, 3, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Millie Davis', NULL, NULL, 'bangladesh', '1988-02-25 22:23:48', 'male', 'HIXmRyhyFzEjMtAjdH', '(854) 764-7059', 'greenfelder.barrett@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(547, 15, 6, 21, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gerhard Lind', NULL, NULL, 'bangladesh', '1992-03-05 17:41:12', 'male', 'bZrNzk5JW5H1Kw8NcM', '332-717-7290', 'leffler.ivy@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(548, 15, 10, 20, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Savannah Wolff', NULL, NULL, 'bangladesh', '1988-06-29 22:10:47', 'male', 'Dgb0CguqUX2NA0cYmC', '(256) 875-8983', 'geovanny63@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(549, 15, 3, 2, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Roberto Blanda', NULL, NULL, 'bangladesh', '1995-12-28 06:13:42', 'male', 'oOkbQHBgvyNU1euUw1', '+1 (551) 658-6111', 'umiller@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(550, 15, 7, 1, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Vivianne Kemmer', NULL, NULL, 'bangladesh', '1990-02-05 03:56:28', 'male', 'iDRaonX7CEAmfwvjxs', '1-959-658-8368', 'johnathan.lindgren@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(551, 15, 10, 6, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Casey Kuhn', NULL, NULL, 'bangladesh', '1996-08-22 08:30:50', 'female', 'FDa53gL1iTXeaaZU0D', '509-741-3794', 'kuvalis.rahul@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(552, 15, 4, 12, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Emelia Von', NULL, NULL, 'bangladesh', '2002-02-21 20:55:16', 'male', 'bkAxHliRA7gkkkHMbf', '681.214.1174', 'johan.hintz@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(553, 15, 2, 15, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Adaline Smitham V', NULL, NULL, 'bangladesh', '1994-04-06 14:20:12', 'female', 'mavv8DJuYshNRoDzDB', '+1.575.866.7889', 'naomi.hudson@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(554, 15, 13, 22, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Patrick Jacobi', NULL, NULL, 'bangladesh', '1998-08-24 08:24:23', 'male', 'dwsNzqrEdDEClf8fHG', '+1.903.465.6244', 'wilfrid.kuhlman@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(555, 15, 11, 23, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Shaniya Kiehn', NULL, NULL, 'bangladesh', '1998-04-09 11:24:19', 'male', 'f2kK5LeKGAk4KzVy3R', '432-954-2142', 'wendy31@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(556, 15, 1, 1, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Lizeth Runolfsson V', NULL, NULL, 'bangladesh', '1995-06-24 03:09:21', 'female', '5oFWAJ4HAokXK6amSY', '+1-712-674-4646', 'jgoyette@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(557, 15, 12, 4, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Dixie Tillman', NULL, NULL, 'bangladesh', '1994-07-29 07:07:02', 'male', 'PgkW8V9kyMHCHzptgD', '651-876-9960', 'tremblay.ahmad@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(558, 15, 3, 19, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hector Daugherty', NULL, NULL, 'bangladesh', '1986-04-02 01:21:10', 'male', '0cUOuCOd9sqP4ml0hm', '+1-470-945-4523', 'xlakin@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(559, 15, 3, 2, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Amiya Mosciski', NULL, NULL, 'bangladesh', '1991-01-29 09:26:54', 'female', 'uC2rGKBal46eqsds0C', '850.740.4741', 'demario.barrows@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(560, 15, 13, 13, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Emelie Rohan', NULL, NULL, 'bangladesh', '1994-12-30 21:11:32', 'female', 'kOXpEznIkIXC49UY2e', '541.595.8226', 'jlittle@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(561, 15, 4, 8, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jon Klein', NULL, NULL, 'bangladesh', '1989-04-16 11:02:29', 'female', '2KcjtvA12CZL9291Me', '+1-862-589-9102', 'juvenal69@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(562, 15, 2, 10, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jake Murphy Jr.', NULL, NULL, 'bangladesh', '1991-04-18 17:25:40', 'female', 'lIVlALLRbtn0Gm7SPJ', '213.589.7034', 'mante.reva@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(563, 15, 11, 21, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Damion Deckow', NULL, NULL, 'bangladesh', '1983-02-01 23:40:09', 'female', '49Hp6Eeaq3wY7EOh0n', '+1 (619) 593-3219', 'pouros.ford@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(564, 15, 13, 6, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kobe Boyer', NULL, NULL, 'bangladesh', '1993-06-14 14:30:22', 'male', 'VymJv9AstDs0a4RvfF', '(820) 929-1521', 'keyon92@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(565, 15, 4, 21, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Gennaro Feest V', NULL, NULL, 'bangladesh', '2000-05-25 23:38:04', 'female', 'V1mT95jjmNOV9GctFC', '+1 (786) 474-8840', 'bryce.bednar@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(566, 15, 10, 2, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Milo Maggio', NULL, NULL, 'bangladesh', '1992-12-01 14:57:06', 'female', 'RC439yNRpN7MltiCmZ', '+1 (760) 414-5662', 'devyn.blanda@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(567, 15, 5, 19, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Heloise Ziemann Sr.', NULL, NULL, 'bangladesh', '2000-06-23 17:29:24', 'male', '4BFyyyxEz8xOmXsPaW', '+15313415281', 'frieda.abbott@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(568, 15, 12, 15, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bobby Hettinger', NULL, NULL, 'bangladesh', '1987-05-07 21:39:28', 'male', '9W3DGSkLiPs56Jg0RZ', '+1-662-519-8961', 'isipes@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(569, 15, 9, 3, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Otis Murazik', NULL, NULL, 'bangladesh', '2001-08-18 08:41:56', 'male', 'yjxOOUgAueKuX04mk5', '352.484.6731', 'wbotsford@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(570, 15, 5, 6, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lavada Howe DVM', NULL, NULL, 'bangladesh', '1997-06-17 23:53:46', 'male', 'RZOjEFKgLWqtqLz1MM', '+1-818-522-3790', 'trisha98@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(571, 15, 7, 6, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bret Fisher', NULL, NULL, 'bangladesh', '1998-08-23 22:58:21', 'female', '9p3wqEjo7HKpLQE3YO', '(925) 390-7241', 'haley.sarah@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(572, 15, 11, 16, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Patience Lakin MD', NULL, NULL, 'bangladesh', '1982-03-27 01:27:12', 'female', 'Eb2zLkuxQRvd3HefM0', '(559) 529-1208', 'deshawn30@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(573, 15, 8, 16, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Lillian Hermann DVM', NULL, NULL, 'bangladesh', '1988-08-05 04:32:12', 'female', 'PiqGN0Zsq9DjU7NsU6', '214.287.0808', 'thamill@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(574, 15, 3, 20, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Madaline Johnston', NULL, NULL, 'bangladesh', '1987-04-04 09:04:49', 'male', 'A8VZPIA5zG3D7F3mJs', '(586) 421-5305', 'jose.waelchi@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(575, 15, 4, 23, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sonya Rodriguez MD', NULL, NULL, 'bangladesh', '1993-12-23 21:14:21', 'male', 'GW2C71Y1kr76toGfee', '1-531-634-9093', 'abdiel61@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(576, 15, 2, 11, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Vernon Blick', NULL, NULL, 'bangladesh', '1997-11-14 06:32:11', 'male', 'upsq84UUgdvLpzXCRC', '(937) 303-7999', 'hboyer@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(577, 15, 11, 9, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Astrid Ward MD', NULL, NULL, 'bangladesh', '1995-12-16 12:00:43', 'male', 'uvgrf2MHk9tidcl9n5', '1-223-847-6876', 'hartmann.walker@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(578, 15, 12, 25, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Haskell McKenzie', NULL, NULL, 'bangladesh', '1986-06-29 01:14:21', 'female', 'trZGtUaue5Q0bxvurA', '979-337-4433', 'stephany.flatley@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(579, 15, 3, 20, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sister Kuhlman', NULL, NULL, 'bangladesh', '1990-04-30 10:22:44', 'male', 'YZQMXuSy3CY4tWmtsW', '941-752-4588', 'sroob@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(580, 15, 1, 20, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alisa Torp', NULL, NULL, 'bangladesh', '2000-11-07 17:36:25', 'female', 'LaR3OTecmxyNWebzXK', '(254) 615-8220', 'bernier.madison@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(581, 15, 9, 1, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dereck Prohaska DDS', NULL, NULL, 'bangladesh', '1997-01-24 00:49:11', 'male', 'jy9w2o2oWLSpNCk8Kj', '520.671.3514', 'toy.anne@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(582, 15, 6, 17, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nakia Miller', NULL, NULL, 'bangladesh', '1983-09-13 01:37:44', 'female', 'Fo2VgbtVJjjVjgXYYM', '(615) 413-0319', 'corwin.nelle@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(583, 15, 2, 11, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Liliane Strosin', NULL, NULL, 'bangladesh', '1995-07-08 16:12:21', 'female', '0VhPlpdO3emyktKcYn', '971-559-8712', 'lubowitz.lowell@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(584, 15, 2, 14, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tony Weber', NULL, NULL, 'bangladesh', '1991-08-03 22:10:30', 'male', 'B5dNTo7MpD7ezWfVBE', '+1-269-754-5163', 'jaycee.schiller@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(585, 15, 3, 21, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bradley Koch', NULL, NULL, 'bangladesh', '1986-01-20 06:15:49', 'male', 'Kr6QFSF7syfn2CskCo', '1-650-404-5671', 'mosciski.rogers@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(586, 15, 1, 15, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Onie Schiller', NULL, NULL, 'bangladesh', '2001-06-28 01:51:06', 'male', 'pjuSH3IwEOdPWKZG7n', '+1-786-865-6518', 'dwelch@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(587, 15, 1, 9, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mya Trantow', NULL, NULL, 'bangladesh', '1982-07-25 15:26:01', 'male', 'ZgnJI49mLmkR4R76fm', '1-718-984-9084', 'marlon.feeney@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(588, 15, 10, 8, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Neil Hessel', NULL, NULL, 'bangladesh', '1989-06-11 01:24:42', 'female', 'YkfX74mpYhUTWtP8Q4', '201.853.7854', 'lyla.streich@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(589, 15, 10, 13, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Meda Stamm V', NULL, NULL, 'bangladesh', '1994-09-23 21:04:13', 'male', 'FAVMO4uRcu9hJfQFwI', '(620) 635-2157', 'wilson.marvin@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(590, 15, 1, 13, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Vella Sauer II', NULL, NULL, 'bangladesh', '1987-02-17 09:41:14', 'male', '3kO7JEyELBg8j9YgBY', '941-682-3723', 'kessler.jarret@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(591, 15, 1, 7, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kay Lakin II', NULL, NULL, 'bangladesh', '1994-07-07 19:20:19', 'male', 'dFtD9oENGZxVXatjWf', '1-908-951-9154', 'reid.jacobson@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(592, 15, 11, 4, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kacey Corkery', NULL, NULL, 'bangladesh', '1991-02-10 17:38:31', 'female', 'U1Mhd9nm6CidtmpRPl', '520-821-2365', 'elisa66@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(593, 15, 11, 22, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Bernhard Toy IV', NULL, NULL, 'bangladesh', '1989-06-27 22:57:13', 'male', '2y4VHxDBMjCBKgeGnf', '979.575.2987', 'hilbert40@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(594, 15, 2, 20, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ron Von II', NULL, NULL, 'bangladesh', '2001-10-25 23:11:15', 'female', '0eIQzBqBQVLRLkcFoG', '1-517-918-5901', 'considine.benton@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(595, 15, 11, 23, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Edythe Crona', NULL, NULL, 'bangladesh', '1995-07-30 08:09:55', 'female', 'WGTQMcMMGcFdg31W9n', '940-804-1298', 'taryn.ernser@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(596, 15, 4, 24, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Antonina Thompson', NULL, NULL, 'bangladesh', '1983-02-11 04:13:29', 'female', '1vfyI8oIE4In17TyS8', '(815) 855-5218', 'hahn.berta@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(597, 15, 6, 14, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marianna Hammes Sr.', NULL, NULL, 'bangladesh', '1996-11-20 07:44:03', 'male', 'pnjYvdSgZePPiDQWfE', '(206) 763-3931', 'jillian80@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(598, 15, 7, 9, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Briana Heathcote Jr.', NULL, NULL, 'bangladesh', '2000-12-15 07:16:59', 'male', 'tYOWmuDWAqgPwclWzu', '(530) 267-5947', 'lorenzo.hegmann@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(599, 15, 13, 21, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Katlyn Kautzer', NULL, NULL, 'bangladesh', '1996-05-05 08:32:35', 'male', 'k3ooN0FmNhnOWhnKSr', '(207) 774-0544', 'yhowell@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(600, 15, 9, 5, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jarred Wiegand', NULL, NULL, 'bangladesh', '1993-04-16 17:02:17', 'female', 'unBIBsnFOFKrSzdnvp', '+1-445-878-8805', 'sammy.blanda@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(601, 15, 6, 10, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Francisco Runolfsson', NULL, NULL, 'bangladesh', '1992-01-24 17:14:50', 'male', 'mKXK81NUZ63QnZg633', '913-614-5892', 'kacie72@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(602, 15, 2, 19, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Emanuel Weimann', NULL, NULL, 'bangladesh', '1989-06-07 23:29:35', 'male', 'Hcfw1Wa6Px0RjKsC8C', '773.643.0062', 'ifranecki@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21');
INSERT INTO `candidates` (`id`, `role_id`, `job_category_id`, `job_id`, `company_id`, `pre_medical_id`, `pre_training_id`, `pre_biomatric_id`, `pre_medical_status`, `pre_training_status`, `pre_biomatric_status`, `ready_to_travel`, `selected_osc_id`, `present_address`, `permanent_address`, `candidate_name`, `father_name`, `mother_name`, `nationality`, `candidate_dob`, `candidate_gender`, `passport_number`, `phone_number`, `candidate_email`, `candidate_password`, `country`, `pre_medical_certificate`, `pre_traning_certificate`, `pre_medical_report`, `pre_training_report`, `created_by`, `updated_by`, `pre_medical_comments`, `pre_training_comments`, `approval_status`, `payment_assigned`, `status`, `result_status`, `permission_status`, `sending_status`, `offer_letter`, `employer_comments`, `offered_status`, `created_id`, `updated_id`, `created_at`, `updated_at`) VALUES
(603, 15, 4, 6, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alba Parisian', NULL, NULL, 'bangladesh', '1992-10-09 23:44:20', 'male', 'IE4zkf4ESCXYKVuEAQ', '760-937-3410', 'kilback.floyd@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(604, 15, 3, 14, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Saige Hoppe', NULL, NULL, 'bangladesh', '2000-11-07 23:38:30', 'male', 'rGwCtZjvl7Mbip7R9I', '361-429-0348', 'geovanny.donnelly@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(605, 15, 10, 3, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Leda Kohler', NULL, NULL, 'bangladesh', '1988-01-13 05:41:31', 'female', 'bBug6erNclpOmSNUry', '540-534-7292', 'gpfeffer@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(606, 15, 8, 6, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Devin O\'Reilly', NULL, NULL, 'bangladesh', '1984-10-11 15:58:13', 'male', 'hBznmBjJ8xWXxiWhzQ', '(820) 717-1133', 'xdeckow@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(607, 15, 3, 12, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Casandra West', NULL, NULL, 'bangladesh', '1992-03-02 11:42:35', 'female', 'cwQHAUW9TAbN2hnkN0', '669.669.4772', 'gusikowski.kristopher@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(608, 15, 11, 16, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sylvester Dickinson', NULL, NULL, 'bangladesh', '1985-06-19 23:23:03', 'male', 'SY9s2g41vTTjbbRNXz', '551.408.5166', 'hspencer@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(609, 15, 1, 17, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elvera Heathcote', NULL, NULL, 'bangladesh', '1988-08-12 15:19:21', 'female', 'CS7L954Nc036pjVqaL', '1-956-365-1085', 'arlie26@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(610, 15, 2, 8, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nakia Borer PhD', NULL, NULL, 'bangladesh', '1998-05-14 02:25:25', 'female', 'eOv1gV7BEBu8qsiZm2', '847.251.9464', 'enid.lynch@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(611, 15, 4, 7, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Salvador Hills IV', NULL, NULL, 'bangladesh', '1995-05-21 20:22:22', 'female', '2XWx8FZ7ZvhIfwjQV3', '1-470-873-7510', 'gmarvin@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(612, 15, 12, 1, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Pauline Lueilwitz', NULL, NULL, 'bangladesh', '1990-12-10 12:54:28', 'male', 'H5AT5iwCMcQ04UsqhV', '+1.551.878.0613', 'iliana.cummings@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(613, 15, 2, 14, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Zelda Reichel Jr.', NULL, NULL, 'bangladesh', '1996-04-08 14:10:26', 'male', 'd21OXLWhGiGWivXXk6', '+1 (541) 259-4395', 'melissa23@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(614, 15, 7, 2, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Garth Schulist III', NULL, NULL, 'bangladesh', '2000-07-03 21:04:49', 'female', 'cFqFFfxXUegaxx1bmK', '+1-336-697-7606', 'franco00@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(615, 15, 5, 10, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Davion Marks', NULL, NULL, 'bangladesh', '1987-11-12 18:17:31', 'male', 'MYGJeLiZ2Cx8fAcsyn', '+1.386.831.4364', 'ibrahim87@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(616, 15, 6, 9, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Garrick Kassulke', NULL, NULL, 'bangladesh', '1986-04-09 13:57:57', 'male', 'eIkRqLRWqI00lDSrMO', '1-904-636-8252', 'tillman91@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(617, 15, 9, 16, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Stewart Jaskolski', NULL, NULL, 'bangladesh', '1992-07-20 05:50:06', 'male', 'siiUAFQvr3rg8cWdaJ', '+14329910968', 'rspinka@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(618, 15, 4, 3, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Buster Parisian', NULL, NULL, 'bangladesh', '1990-07-27 04:28:53', 'female', 'DjAaBRDOLXEcxMiVIy', '(484) 509-1701', 'mbogisich@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(619, 15, 5, 14, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Yazmin Lowe', NULL, NULL, 'bangladesh', '1991-09-14 23:15:22', 'male', 'Q7B5kWIR6ICLZDsXEu', '1-279-657-8189', 'brandon.oconnell@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(620, 15, 6, 7, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Abe Purdy', NULL, NULL, 'bangladesh', '1986-07-11 08:35:40', 'male', 'DekBEyt7tbu3dOwvN9', '+1 (540) 321-4443', 'ankunding.maybell@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(621, 15, 11, 12, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Lacy Pacocha MD', NULL, NULL, 'bangladesh', '1992-04-29 19:36:47', 'male', 'HcEcELz7o3hN2SStOl', '283-549-5226', 'nhuels@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(622, 15, 11, 4, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aurelia Carroll', NULL, NULL, 'bangladesh', '1992-05-01 14:01:38', 'female', 'f1fA7fU7TYzFrjmNzP', '1-609-504-2014', 'samantha75@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(623, 15, 4, 2, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alycia Schmidt', NULL, NULL, 'bangladesh', '1998-04-26 07:35:36', 'female', 'kQA39OH0bkRr3ixkok', '1-364-567-6348', 'eframi@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(624, 15, 7, 20, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Caitlyn Harber', NULL, NULL, 'bangladesh', '1982-05-28 00:12:07', 'male', '3yzrX79DX0A2XpiH43', '951-383-3674', 'roberts.rafaela@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(625, 15, 3, 25, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Eryn Maggio', NULL, NULL, 'bangladesh', '2000-03-19 10:34:21', 'male', 'Plxpv7cnXbMtUvh0dZ', '+1 (283) 250-2380', 'kub.kenny@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(626, 15, 1, 7, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marshall Rutherford Jr.', NULL, NULL, 'bangladesh', '1998-12-30 05:57:20', 'male', 'rfmTVYE0kzzLl4lxkV', '+1-520-936-1471', 'tschuster@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(627, 15, 7, 3, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bart Brown', NULL, NULL, 'bangladesh', '1986-10-29 23:48:04', 'male', '3vqmAvrSQOtMbwHHcK', '+1-413-887-9106', 'funk.emelia@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(628, 15, 7, 18, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Madaline Parisian', NULL, NULL, 'bangladesh', '1998-10-21 18:25:20', 'male', 'MCvl94lfawQGpgsRQY', '402-524-1715', 'gottlieb.carey@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(629, 15, 13, 20, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Porter Streich', NULL, NULL, 'bangladesh', '1990-07-02 23:47:04', 'female', 'qNyXIBFKpwA0vVR6MC', '+17792916180', 'xboyle@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(630, 15, 9, 5, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Alicia Kreiger', NULL, NULL, 'bangladesh', '1991-09-20 14:15:49', 'female', 'QlvrRMMM2ekgdNSWAZ', '820-822-0322', 'kshlerin.ramon@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(631, 15, 8, 7, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Janelle Gleason', NULL, NULL, 'bangladesh', '1984-02-24 08:50:05', 'male', 'Au5gY8fZXZXciXxIge', '1-440-590-3610', 'esmeralda.franecki@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(632, 15, 10, 12, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Melyssa Kovacek I', NULL, NULL, 'bangladesh', '1997-06-03 02:02:53', 'male', 'DOCz8qcxx6YP4p108F', '318-583-4988', 'abrakus@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(633, 15, 1, 22, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nannie Corkery', NULL, NULL, 'bangladesh', '2000-12-30 08:53:34', 'female', 'H84ZojXmWJYTvaQJab', '+1-689-912-2516', 'khowell@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(634, 15, 3, 10, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Macie Okuneva', NULL, NULL, 'bangladesh', '1986-04-13 16:29:31', 'male', 'IxayE0ZAaddF0UjUlE', '+1 (352) 491-4217', 'kertzmann.chelsea@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(635, 15, 2, 10, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tillman Bruen', NULL, NULL, 'bangladesh', '1999-11-13 12:37:05', 'female', 'Ut1UDeBF4zqOl3JjDO', '680.992.6834', 'maria.beer@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(636, 15, 10, 24, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Sonya Mayer', NULL, NULL, 'bangladesh', '2001-01-20 02:38:45', 'female', 'LfNXEBLMIYWkO1rG9m', '(361) 454-6136', 'della94@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(637, 15, 13, 10, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Stan Glover', NULL, NULL, 'bangladesh', '1982-05-28 09:04:22', 'female', 'Pu63EWqHwuQgMRKVtX', '(231) 615-3881', 'mariano.howell@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(638, 15, 5, 25, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Chandler Ledner', NULL, NULL, 'bangladesh', '1990-10-07 13:10:16', 'male', 'H0FLV0uMkaXCcaOgTX', '814-274-8190', 'keely52@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(639, 15, 5, 13, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lois Lesch', NULL, NULL, 'bangladesh', '1985-06-08 17:03:52', 'female', 'Yw7kkSsTa94zThSkCh', '412.241.2927', 'everett59@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(640, 15, 12, 20, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lily Kovacek', NULL, NULL, 'bangladesh', '1997-10-16 19:57:49', 'female', 'VU20RmfTrzOAhkt4nW', '+16209866268', 'donnelly.andreanne@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(641, 15, 11, 14, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kamron Fritsch', NULL, NULL, 'bangladesh', '1990-01-01 19:26:58', 'female', 'ubO4FCSl7wVXv8vWfK', '+1 (361) 447-3209', 'virgil.cassin@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(642, 15, 9, 12, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Grayce Witting', NULL, NULL, 'bangladesh', '1991-03-14 12:42:11', 'male', 'acb9ScRrhU3fWNYU09', '520.212.5522', 'volkman.jaiden@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(643, 15, 7, 19, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Louie Stracke', NULL, NULL, 'bangladesh', '1997-05-22 16:08:21', 'male', 'OYcOXQyROnPoqX9en8', '302-405-2901', 'aliza26@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(644, 15, 12, 20, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Delphine Kilback Jr.', NULL, NULL, 'bangladesh', '1984-06-01 18:35:18', 'male', '2o5zVNa0ttk943x0Fg', '+1.947.630.0363', 'elouise.bode@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(645, 15, 1, 8, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Anissa Bayer', NULL, NULL, 'bangladesh', '1995-05-01 06:19:33', 'male', 'N2WAjG2s2a5olFdSWV', '352-925-9415', 'jedediah18@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(646, 15, 1, 3, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eleanore Kautzer III', NULL, NULL, 'bangladesh', '1990-12-21 22:04:09', 'male', 'hwbyl6J48WNLdmknfo', '+17547331336', 'sipes.andrew@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(647, 15, 7, 12, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Leonor Kihn', NULL, NULL, 'bangladesh', '1993-08-03 18:31:23', 'male', 'pRUIceoCHGPo2xd7QQ', '+1 (650) 740-3186', 'jcartwright@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(648, 15, 9, 21, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Chyna Will', NULL, NULL, 'bangladesh', '1992-10-11 16:57:20', 'female', 's0oiHYWeE8rtmtsIJg', '(979) 719-7441', 'powlowski.major@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(649, 15, 7, 19, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Carrie Corkery', NULL, NULL, 'bangladesh', '1986-09-26 03:53:04', 'male', 'W0fXJyoAXUEwuLkHNf', '(509) 797-5461', 'norris.boyle@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(650, 15, 10, 24, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Concepcion Purdy', NULL, NULL, 'bangladesh', '2000-01-17 17:36:59', 'female', 'S3oQgRObiy57szWGDi', '+1-320-260-8039', 'rheaney@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(651, 15, 3, 15, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Pierre Bogisich', NULL, NULL, 'bangladesh', '1982-05-28 12:16:45', 'male', 'ZKj1osYYLcgh5RhjRy', '1-838-542-0776', 'qemard@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(652, 15, 10, 6, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Veda Steuber', NULL, NULL, 'bangladesh', '1999-06-21 06:10:17', 'male', 'wHnrBbOJAQPn0W7lle', '+1-239-960-4637', 'dicki.tristin@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(653, 15, 7, 4, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Titus Will III', NULL, NULL, 'bangladesh', '1994-02-09 18:07:58', 'male', 'Fyq8nHeF8bKW7Xs0ZF', '+1-930-949-9426', 'mark.heller@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(654, 15, 10, 2, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cleta Simonis', NULL, NULL, 'bangladesh', '1988-01-12 00:50:13', 'female', 'HTfEVJzKWH7ZVyT2th', '+1-904-779-4214', 'upton.jaydon@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(655, 15, 4, 12, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Chyna Runolfsdottir', NULL, NULL, 'bangladesh', '1986-10-14 02:40:28', 'male', 'PuG6r2vfm8VfHx2vXX', '779.855.4972', 'asa.hauck@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(656, 15, 13, 19, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Frederik Pacocha', NULL, NULL, 'bangladesh', '1987-04-20 03:19:13', 'female', 'WvQIEbMUESgXIN7CEQ', '1-832-648-8082', 'orn.kassandra@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(657, 15, 12, 6, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Danyka Terry', NULL, NULL, 'bangladesh', '1995-04-14 02:44:13', 'female', '8UrbUxrC6b8hcz9DoQ', '+15104656121', 'tkeebler@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(658, 15, 11, 11, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mohamed Maggio', NULL, NULL, 'bangladesh', '1985-06-06 09:15:07', 'female', '8M9RBPcsL9TTaxyXFt', '+1 (818) 267-6485', 'devante47@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(659, 15, 5, 10, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Julian Dickinson', NULL, NULL, 'bangladesh', '1985-05-06 12:30:31', 'male', 'aOdw6Q1Mg1pXfp2m12', '1-724-959-8923', 'runolfsdottir.neha@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(660, 15, 10, 4, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Jay Langosh V', NULL, NULL, 'bangladesh', '1999-08-29 19:34:42', 'female', 'HutR2PPareUEYlDhUM', '+1.386.672.1623', 'manuel06@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(661, 15, 6, 25, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Zion Halvorson', NULL, NULL, 'bangladesh', '1995-02-24 05:20:50', 'male', '4L4ROJ00ugmTja2jFV', '+1-725-879-1878', 'katelin.abshire@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(662, 15, 13, 22, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Daren Conroy DDS', NULL, NULL, 'bangladesh', '1998-12-01 06:12:56', 'male', 'QOCWxXVMDcAAFstnBD', '1-534-260-7172', 'fahey.keyshawn@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(663, 15, 8, 15, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Celia Dickens', NULL, NULL, 'bangladesh', '2000-12-19 01:40:15', 'male', '4wZLCcvyxLxzCRNQk2', '(619) 440-0525', 'gregorio.aufderhar@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(664, 15, 12, 24, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Haven Koepp Sr.', NULL, NULL, 'bangladesh', '1997-04-07 06:48:06', 'female', '8CC5CEdDCj9ddHkCz7', '870-519-0517', 'considine.litzy@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(665, 15, 9, 6, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ruben Moore IV', NULL, NULL, 'bangladesh', '1998-07-27 04:51:26', 'male', 'uqYIzU0fnagvYlWPys', '(938) 756-3106', 'priscilla.okuneva@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(666, 15, 13, 2, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Amari Fadel', NULL, NULL, 'bangladesh', '1988-09-24 23:48:28', 'male', 'eMRXXXip0qAUjDrntq', '781-564-6287', 'brennan94@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(667, 15, 10, 16, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ebony Cole', NULL, NULL, 'bangladesh', '1987-03-11 05:11:56', 'male', 'ok2ZeGEXGNoPUN8XGd', '(701) 883-0924', 'delphia.flatley@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(668, 15, 6, 16, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ana Will V', NULL, NULL, 'bangladesh', '1986-11-01 15:50:28', 'female', 'kU2alF01HnusdYnYxg', '1-757-564-6793', 'norval.douglas@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(669, 15, 13, 24, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Antonio Krajcik V', NULL, NULL, 'bangladesh', '1982-08-07 00:03:03', 'female', 'Bb6X9XDs2uH3usRuvK', '774-808-5185', 'torrey05@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(670, 15, 13, 16, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Grayce Zieme V', NULL, NULL, 'bangladesh', '1985-10-06 04:52:06', 'male', 'JomHE8a70T81v3qyby', '248.988.8664', 'mariana59@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(671, 15, 12, 21, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mario Wiza', NULL, NULL, 'bangladesh', '1993-08-31 17:11:03', 'female', 'GB7Ft1NicUcukXTVwm', '+1.463.548.2318', 'dmarvin@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(672, 15, 1, 21, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jason Goldner', NULL, NULL, 'bangladesh', '1993-06-26 01:24:14', 'female', 'ScStCUxmztURyKpmu8', '+12819003739', 'yundt.alphonso@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(673, 15, 13, 14, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ashley Lebsack', NULL, NULL, 'bangladesh', '1993-04-26 04:15:53', 'male', 'mPrRx4PdYcRwYNBvzT', '(352) 458-2250', 'muller.monserrat@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(674, 15, 12, 1, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Chadd Orn Sr.', NULL, NULL, 'bangladesh', '1994-06-23 02:35:58', 'male', 'v2EQO6cKfilYGroP4N', '+19284985536', 'priscilla.stamm@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(675, 15, 10, 4, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Abbie Kling DVM', NULL, NULL, 'bangladesh', '1988-02-27 12:13:36', 'female', 'U3D8Ppk1OFoq3KV3TE', '520.718.8378', 'felipa74@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(676, 15, 12, 11, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Magdalena Lakin V', NULL, NULL, 'bangladesh', '1988-07-06 04:29:53', 'male', 'HRsQUDFVOlVImfMHHG', '214.668.8591', 'rmedhurst@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(677, 15, 2, 24, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kirstin Fay', NULL, NULL, 'bangladesh', '1993-04-26 18:16:37', 'male', 'cxVfYx69ZsYXfVK7pG', '(681) 724-1721', 'xjohnson@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(678, 15, 2, 6, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jack Haag', NULL, NULL, 'bangladesh', '1984-02-20 21:27:42', 'male', 'Q2DX9KSteW7pnm0RUB', '704-515-4874', 'stehr.juston@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(679, 15, 7, 9, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Rhiannon Hayes', NULL, NULL, 'bangladesh', '1998-03-19 02:30:30', 'male', '7sOMpgUBXvEmrMUM0p', '936.456.0327', 'iwhite@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(680, 15, 13, 5, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Muhammad Williamson', NULL, NULL, 'bangladesh', '1997-12-27 18:05:59', 'male', 'VZqVsYxVhG5Ue6gDKP', '+1-986-864-2827', 'lgulgowski@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(681, 15, 11, 10, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Joesph Stroman', NULL, NULL, 'bangladesh', '1986-07-02 10:34:43', 'male', 'd0pmQWI8OZejkHPmPw', '+1-951-692-9024', 'pbreitenberg@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(682, 15, 2, 18, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Brook Huels', NULL, NULL, 'bangladesh', '2000-07-09 09:05:57', 'female', 'IVjNFLofcFQRxhIi25', '463.718.7252', 'manuela43@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(683, 15, 12, 1, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Adan Wisozk', NULL, NULL, 'bangladesh', '1992-06-20 14:10:22', 'male', '7BY1UuI7nfsnvlP8G0', '947-483-8284', 'okeefe.shania@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(684, 15, 3, 7, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lamar Rau', NULL, NULL, 'bangladesh', '1982-10-09 22:17:55', 'male', 'NHI8JyQzMWrGIBpdSH', '1-986-648-0646', 'rico.kemmer@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(685, 15, 12, 10, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Anne Murray Sr.', NULL, NULL, 'bangladesh', '1996-01-09 20:52:17', 'female', 'ABO5UV338t9oOW9NgZ', '+16807250794', 'dion37@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(686, 15, 7, 10, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Solon Lynch DVM', NULL, NULL, 'bangladesh', '1997-08-27 12:02:46', 'male', 'wgTgkDEnPg3AUDPPUY', '1-469-362-1888', 'spurdy@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(687, 15, 12, 13, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Destinee Crist', NULL, NULL, 'bangladesh', '1993-12-16 23:32:03', 'male', 'w67p8bpZpqUwefBlU7', '+1-351-645-7380', 'diamond72@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(688, 15, 1, 7, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Anna Gorczany', NULL, NULL, 'bangladesh', '1983-08-01 09:53:47', 'male', 'ohcQZeuTJLmi0m5UJO', '551.792.8865', 'stephanie.kuhn@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(689, 15, 5, 15, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dallin Corwin', NULL, NULL, 'bangladesh', '2000-05-26 03:01:26', 'male', 'MCbEhH0kcL9AnbnzN4', '952-736-2113', 'stehr.minerva@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(690, 15, 3, 25, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Pablo Schmeler', NULL, NULL, 'bangladesh', '2001-12-29 12:07:07', 'female', 'oSFe7eFvVNONSH3lbK', '+1 (318) 815-3705', 'schmidt.joelle@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(691, 15, 3, 1, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Julien Ondricka Jr.', NULL, NULL, 'bangladesh', '1993-05-08 22:17:55', 'female', 'BnbYktvij1yeodQVCb', '+1 (424) 414-8731', 'qkub@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(692, 15, 9, 5, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Taurean Deckow', NULL, NULL, 'bangladesh', '1989-01-25 08:46:21', 'female', 'WlARwXqJO4KZfuD3aP', '+13529406368', 'iheller@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(693, 15, 6, 19, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lyric Davis', NULL, NULL, 'bangladesh', '1998-04-29 01:32:57', 'male', 'C0vB9jiTU1t4aDU3b2', '854.818.8942', 'gleason.cora@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(694, 15, 6, 17, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rebeca Mann', NULL, NULL, 'bangladesh', '1995-06-12 20:53:15', 'male', 'FsghQqlQwps3AJWKSs', '310.780.9286', 'franecki.kiara@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(695, 15, 6, 12, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Vernice Smitham', NULL, NULL, 'bangladesh', '1990-01-21 08:01:28', 'female', 'zUwBwp67EWLb98ZUYa', '(828) 283-6331', 'meaghan98@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(696, 15, 7, 11, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nelson Hudson MD', NULL, NULL, 'bangladesh', '1990-01-28 03:51:34', 'male', 'CbW9jXaiDxAMhYOmeS', '(561) 987-6347', 'myrtice.cormier@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(697, 15, 3, 24, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Consuelo Upton', NULL, NULL, 'bangladesh', '1995-04-15 20:45:01', 'male', 'j8BhaGcKNnhOkRiXfH', '405.935.7636', 'kokon@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(698, 15, 5, 7, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eladio O\'Connell II', NULL, NULL, 'bangladesh', '1995-12-19 05:28:37', 'female', 'uieO8mLedLpjKePKi8', '1-701-748-8299', 'xander43@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(699, 15, 6, 11, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Thea Nicolas', NULL, NULL, 'bangladesh', '1989-09-22 22:24:25', 'female', 'k39BryS2qsbftmx5t2', '585.273.7077', 'dicki.cruz@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(700, 15, 9, 8, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Bethany Treutel', NULL, NULL, 'bangladesh', '1992-04-27 04:45:09', 'male', 'aGJVC7s3MB9Gve5aQQ', '+1-980-218-9357', 'mdaniel@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(701, 15, 2, 3, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Domenick Batz III', NULL, NULL, 'bangladesh', '1994-01-10 01:49:39', 'female', 'AkfTMVPnWcY1Oro8BV', '1-682-541-8413', 'kendra.bernhard@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(702, 15, 13, 15, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ronaldo Schumm', NULL, NULL, 'bangladesh', '1984-12-29 18:10:06', 'female', '8dJpPPUff2QbrdhNSU', '680-930-3291', 'stark.breana@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(703, 15, 2, 13, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dayne Legros', NULL, NULL, 'bangladesh', '1988-09-04 01:03:21', 'female', 'hqXTIu3TU9kqDuGsi2', '727.940.6097', 'freynolds@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(704, 15, 12, 10, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Destinee Murazik', NULL, NULL, 'bangladesh', '2001-10-08 03:26:12', 'female', 'bvSXB9gVvwK3doCDeA', '878-446-9967', 'mason.jacobs@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(705, 15, 12, 9, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Brielle Dooley PhD', NULL, NULL, 'bangladesh', '1984-05-03 05:49:47', 'male', 'h1uDsrT2jgzpuB9lMr', '973.647.4337', 'holson@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(706, 15, 5, 19, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ruthe Price', NULL, NULL, 'bangladesh', '1993-06-02 22:32:57', 'male', 'tv4Tq65JCvQZ3m5LhV', '(760) 412-9731', 'heathcote.bria@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(707, 15, 2, 5, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rashawn Schaefer', NULL, NULL, 'bangladesh', '1987-09-28 22:18:09', 'male', 'gnGkD8pn2itC6IjNPV', '+1.318.365.2744', 'dickinson.lula@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(708, 15, 1, 2, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Johnson McCullough', NULL, NULL, 'bangladesh', '1993-05-31 14:40:49', 'female', 'PrYbvRXtPno5dev5ep', '(713) 356-9385', 'arlo81@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(709, 15, 3, 2, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Giovanna Ryan V', NULL, NULL, 'bangladesh', '1988-04-08 07:14:39', 'male', 'gv9ZrnJJGYhAbpPfMl', '+17077634078', 'lueilwitz.rex@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(710, 15, 1, 8, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miles Tremblay', NULL, NULL, 'bangladesh', '1989-08-06 07:18:48', 'female', 'C8JB2heyriVaVZloUq', '901-288-2597', 'hbechtelar@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(711, 15, 12, 19, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Minnie Eichmann', NULL, NULL, 'bangladesh', '1990-09-02 14:38:15', 'male', 'iSw0VCV2BCWur2suGN', '772-840-8806', 'christop.roob@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(712, 15, 4, 6, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alfonzo Cartwright', NULL, NULL, 'bangladesh', '1993-02-07 01:00:52', 'male', '117emhhxZnxfY6smyV', '(435) 831-7004', 'jazmyn.kuhn@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(713, 15, 1, 3, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Zoe Graham', NULL, NULL, 'bangladesh', '1998-11-28 02:30:54', 'male', '1yqYJZoCT1dIALdhkD', '+18302637988', 'mabelle.ritchie@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(714, 15, 9, 15, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Zane O\'Kon MD', NULL, NULL, 'bangladesh', '1994-08-12 06:07:15', 'female', 'CmbPcunO7BErbmklGw', '(385) 312-7812', 'ttrantow@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(715, 15, 3, 19, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Caitlyn Anderson', NULL, NULL, 'bangladesh', '1982-05-27 23:09:50', 'female', 'dwPy4urNPuzAwbPTsC', '1-941-250-6877', 'zschmidt@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(716, 15, 6, 24, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dimitri Osinski Jr.', NULL, NULL, 'bangladesh', '1995-05-07 08:09:29', 'male', 'Kkvpycy8sXEy0Iq0nM', '+1-770-553-7589', 'harvey.kadin@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(717, 15, 13, 15, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Katelynn Moen DDS', NULL, NULL, 'bangladesh', '1997-01-25 02:25:25', 'male', 'khC0bEkCDD4DY40iPK', '530.512.8098', 'rosie15@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(718, 15, 11, 6, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Grayson Kuhic', NULL, NULL, 'bangladesh', '1995-12-11 23:19:13', 'female', 'mlRtQl5Nz1l8wGKMcF', '+1.726.222.7354', 'wallace56@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(719, 15, 11, 18, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dandre Lueilwitz', NULL, NULL, 'bangladesh', '1987-02-27 03:13:09', 'female', 'RGz6gqqDJ7VqtPBvWs', '1-364-573-4628', 'elnora91@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(720, 15, 3, 24, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eladio Mohr', NULL, NULL, 'bangladesh', '1991-05-31 19:58:45', 'female', 'hzPR5tSpI16qzIGzJV', '406.747.9375', 'roselyn08@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(721, 15, 9, 17, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nicholas Raynor II', NULL, NULL, 'bangladesh', '1985-06-07 18:47:34', 'male', 'iYfrGhdwQ6snfMNwcd', '251.400.3104', 'carolyn.boyle@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(722, 15, 10, 18, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Oswaldo Abernathy', NULL, NULL, 'bangladesh', '1987-08-17 14:35:14', 'male', '3du5I0a1cmovItekyv', '+1-816-271-9703', 'chesley23@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21');
INSERT INTO `candidates` (`id`, `role_id`, `job_category_id`, `job_id`, `company_id`, `pre_medical_id`, `pre_training_id`, `pre_biomatric_id`, `pre_medical_status`, `pre_training_status`, `pre_biomatric_status`, `ready_to_travel`, `selected_osc_id`, `present_address`, `permanent_address`, `candidate_name`, `father_name`, `mother_name`, `nationality`, `candidate_dob`, `candidate_gender`, `passport_number`, `phone_number`, `candidate_email`, `candidate_password`, `country`, `pre_medical_certificate`, `pre_traning_certificate`, `pre_medical_report`, `pre_training_report`, `created_by`, `updated_by`, `pre_medical_comments`, `pre_training_comments`, `approval_status`, `payment_assigned`, `status`, `result_status`, `permission_status`, `sending_status`, `offer_letter`, `employer_comments`, `offered_status`, `created_id`, `updated_id`, `created_at`, `updated_at`) VALUES
(723, 15, 7, 15, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Danielle Durgan', NULL, NULL, 'bangladesh', '1997-01-15 21:07:20', 'female', 'RGuv2he7UrgOEwlyG1', '1-763-596-3308', 'damore.vada@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(724, 15, 7, 7, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Russ Stanton DDS', NULL, NULL, 'bangladesh', '1991-08-29 19:05:38', 'female', '5seWknBUHsnLWcZRac', '1-470-568-7411', 'morar.stefanie@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(725, 15, 10, 20, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Giovani Halvorson V', NULL, NULL, 'bangladesh', '1996-03-09 16:15:00', 'male', 'XFRoFyEn7wcu8hwni9', '+15049659180', 'moen.terrill@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(726, 15, 10, 24, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dexter Legros', NULL, NULL, 'bangladesh', '2001-06-10 17:18:33', 'male', 'whLSEwGCftkaII5lgq', '+1-714-818-0114', 'dgoyette@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(727, 15, 11, 10, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kaden Schneider', NULL, NULL, 'bangladesh', '1986-07-01 13:18:29', 'male', 'EzTdmiVkuaUzn2wH9b', '+1-361-255-5159', 'tamara20@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(728, 15, 5, 19, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Dariana Harris', NULL, NULL, 'bangladesh', '1991-01-03 10:46:34', 'female', 'Jbnevb4ciyAZs4TUCi', '+1.689.487.6080', 'roscoe70@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(729, 15, 5, 6, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Roma Mueller', NULL, NULL, 'bangladesh', '1993-07-04 14:19:05', 'female', 'eoLeewqFMywS8bLyTh', '(805) 219-2422', 'murazik.shemar@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(730, 15, 9, 2, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Meghan Buckridge', NULL, NULL, 'bangladesh', '1999-04-23 14:09:18', 'female', 'YLgXjCYB0JRyrnJAH8', '1-539-720-7771', 'douglas.jamarcus@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(731, 15, 2, 22, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Reva Adams I', NULL, NULL, 'bangladesh', '1982-07-13 04:38:21', 'male', 'q2uHehfFP9WVHU55tF', '+1 (769) 675-6455', 'lbayer@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(732, 15, 5, 18, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Malvina Turner', NULL, NULL, 'bangladesh', '1997-07-28 15:12:08', 'male', 'pZEmmCg09XmZv0xBbT', '(734) 703-4644', 'pjaskolski@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(733, 15, 13, 4, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Luisa Kling I', NULL, NULL, 'bangladesh', '1998-03-06 01:40:44', 'male', 'JDggbIm9P39pAAFWvN', '(956) 689-6870', 'leonard.fay@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(734, 15, 7, 8, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Santina Kautzer', NULL, NULL, 'bangladesh', '2000-02-05 18:30:05', 'male', 'uB0nLdddJBl7Vu6S0P', '651-335-3838', 'srath@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(735, 15, 11, 7, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kyleigh Ryan', NULL, NULL, 'bangladesh', '1994-03-04 04:57:33', 'male', 'ybylFPpYHTBcCppJXD', '458-497-2060', 'jennifer11@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(736, 15, 9, 21, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Freddie Toy', NULL, NULL, 'bangladesh', '1991-01-12 10:34:40', 'male', '0dBTDJCjoXwvlt8SUt', '726-992-5451', 'oanderson@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(737, 15, 11, 10, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Chadrick Strosin', NULL, NULL, 'bangladesh', '1996-02-12 00:10:50', 'female', 'nccNAhacekdl5v7MdI', '607.472.9130', 'zgleichner@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(738, 15, 11, 5, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Selena Fahey', NULL, NULL, 'bangladesh', '1989-04-29 04:12:05', 'male', 'ZL7i01Lcv200hZsVCL', '567-777-9086', 'yblock@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(739, 15, 13, 7, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Merlin Spinka', NULL, NULL, 'bangladesh', '1992-01-20 16:05:35', 'male', 'azkXUvGzETPRpA2vE7', '920.856.1449', 'chagenes@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(740, 15, 9, 11, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Leonel Feest', NULL, NULL, 'bangladesh', '1994-09-11 18:02:17', 'male', '9AMRUxw56oglq3CbZj', '1-351-446-3201', 'caleb96@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(741, 15, 11, 5, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gussie Torp', NULL, NULL, 'bangladesh', '1982-07-06 20:52:20', 'male', 'ZMOEgOYj8AHYdCqaV4', '+1.458.490.0966', 'nils66@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(742, 15, 9, 21, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gayle Hansen DDS', NULL, NULL, 'bangladesh', '1987-04-28 20:17:26', 'male', 'ldt18wlejNecMmNRWv', '+1-205-824-9983', 'kali49@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(743, 15, 3, 15, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Beverly Gusikowski', NULL, NULL, 'bangladesh', '1989-10-01 05:35:38', 'male', 'NTZYDwGEPf5zrEt7C7', '1-820-256-3898', 'corwin.tia@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(744, 15, 10, 4, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tabitha Lebsack', NULL, NULL, 'bangladesh', '1996-02-14 02:22:07', 'male', 'TfdhMkj7SJKXLEnpqn', '253-394-5343', 'viola95@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(745, 15, 12, 13, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Florencio Gerlach', NULL, NULL, 'bangladesh', '1997-12-31 06:41:49', 'male', 'etZCMI0Sqnv2nRDQ9O', '952-664-8488', 'tyrique50@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(746, 15, 11, 15, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hailee Graham Sr.', NULL, NULL, 'bangladesh', '1982-06-13 04:21:23', 'male', 'xUZfi3D29sK4m6d8Wo', '+1-530-936-1016', 'ngoldner@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(747, 15, 12, 18, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Geovany Breitenberg MD', NULL, NULL, 'bangladesh', '1982-11-17 17:42:01', 'male', 'EV7BTB03HWlXJ6sJEb', '(478) 861-1872', 'jakubowski.marvin@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(748, 15, 3, 10, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Laisha Nikolaus', NULL, NULL, 'bangladesh', '1991-06-28 15:13:01', 'male', 'op25gHtqb6I8699OOH', '1-541-786-7875', 'minnie.torp@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(749, 15, 7, 11, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Brianne Pagac', NULL, NULL, 'bangladesh', '2001-02-13 00:07:14', 'female', 'zLKNAyOhB8NNH7xC2v', '1-614-862-1619', 'williamson.bessie@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(750, 15, 7, 1, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cassandre Volkman', NULL, NULL, 'bangladesh', '1989-06-14 18:00:35', 'male', 'bQNZXn0qJNixi2rYQB', '+1-930-472-4204', 'hegmann.judy@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(751, 15, 2, 8, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kamille Dibbert', NULL, NULL, 'bangladesh', '1993-08-06 02:52:02', 'male', 'A0RBvGLVdGJ3evFtKW', '316.803.5024', 'maximillian82@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(752, 15, 10, 5, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Greyson Carroll', NULL, NULL, 'bangladesh', '1990-09-04 06:59:48', 'female', 'Rt8AACnZwlZnTd2cwt', '859-381-4394', 'dusty.steuber@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(753, 15, 2, 20, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Pietro Aufderhar Sr.', NULL, NULL, 'bangladesh', '1994-03-20 07:35:24', 'male', 'eNzLzYSWaxeQ1UdkEg', '(854) 702-9043', 'jamar.volkman@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(754, 15, 11, 21, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Brown Schmitt', NULL, NULL, 'bangladesh', '1983-11-30 06:28:25', 'male', 'uxeotRK4GHxNlqrYLH', '(636) 512-6071', 'otto17@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(755, 15, 13, 7, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Donato Hand', NULL, NULL, 'bangladesh', '1995-03-13 18:09:39', 'male', 'lnN9PWYT0D94GCJHnQ', '1-351-805-7116', 'tyrese36@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(756, 15, 5, 20, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aniya Swaniawski I', NULL, NULL, 'bangladesh', '1990-12-26 04:16:39', 'female', 'B4zwLQPHbzGQyqbE84', '+1.727.520.8852', 'erich.howell@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(757, 15, 5, 17, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Michele Bogan', NULL, NULL, 'bangladesh', '1994-04-21 14:08:11', 'female', '5P82HC1GeTQXKrAMKK', '1-903-721-7973', 'santiago.bogisich@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(758, 15, 12, 19, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Amy Dicki', NULL, NULL, 'bangladesh', '1996-09-08 10:21:43', 'female', 'kNh1YBCJbaGBlUAJZL', '(805) 723-6278', 'zpurdy@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(759, 15, 3, 9, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elenora Johnston', NULL, NULL, 'bangladesh', '1996-04-16 06:38:45', 'female', '7rlj52cEYsfMh2Zaln', '1-260-595-2968', 'marisol61@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(760, 15, 4, 5, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Daniela Rohan', NULL, NULL, 'bangladesh', '1987-10-03 01:17:34', 'female', '0YsOAY6OfyXuE47ivw', '1-689-376-6210', 'qmarvin@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(761, 15, 13, 21, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nathen Feeney', NULL, NULL, 'bangladesh', '1996-12-02 17:22:02', 'female', 'R0KPuB3dxzobFrScrA', '+18459824567', 'clark04@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(762, 15, 8, 4, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kenyatta Lehner DDS', NULL, NULL, 'bangladesh', '1988-07-02 18:46:33', 'male', 'tZ3Wp9t7fpK93tFBqy', '(475) 288-0461', 'esteban.hodkiewicz@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(763, 15, 6, 18, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Margarete Renner PhD', NULL, NULL, 'bangladesh', '1984-11-01 07:00:17', 'female', 'Mw71x6V4BmsZj5f4QN', '(740) 780-7485', 'waelchi.quinn@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(764, 15, 12, 6, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Brycen Bailey', NULL, NULL, 'bangladesh', '1994-09-14 11:55:50', 'male', 'MsYhlMCMpWkigjZq62', '513.782.5101', 'demarcus85@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(765, 15, 8, 6, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Roosevelt Schmitt', NULL, NULL, 'bangladesh', '1987-03-20 14:23:30', 'female', 'TB4Skjt7wL3ogIZuVq', '770.653.6370', 'heaven.christiansen@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(766, 15, 12, 10, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jordyn Harris', NULL, NULL, 'bangladesh', '1995-12-24 12:14:27', 'male', 'BsJDeYk3PeqSDgUk5H', '+1-607-879-2452', 'ehermiston@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(767, 15, 4, 12, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kole Rempel', NULL, NULL, 'bangladesh', '1988-02-11 03:44:20', 'male', 'icKJfULt2uItAqUje1', '+1 (669) 692-1734', 'zakary52@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(768, 15, 8, 20, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dereck Harris PhD', NULL, NULL, 'bangladesh', '1984-06-06 08:12:39', 'female', 'v31D8YmqBmeZYnxVVi', '785.630.3894', 'thalia96@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(769, 15, 12, 14, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Pearline Cole I', NULL, NULL, 'bangladesh', '1983-08-01 11:32:30', 'female', 'oc7KRZyPBTNJHmyrgs', '(530) 618-3598', 'alexandra.hyatt@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(770, 15, 6, 25, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jennyfer Ortiz', NULL, NULL, 'bangladesh', '1990-11-15 19:16:30', 'male', 'PcPKdpUUX6hSfSQNiZ', '+1 (786) 447-4219', 'lamar.kreiger@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(771, 15, 8, 12, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Renee Hill', NULL, NULL, 'bangladesh', '2001-02-13 21:17:42', 'male', '59dxHoOeplTMxPs7fI', '(223) 348-4306', 'hahn.janessa@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(772, 15, 8, 9, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elyssa Grady', NULL, NULL, 'bangladesh', '1989-01-19 03:39:33', 'female', 'qfQXZ2OC6sFe6qllEa', '520-780-2764', 'barrows.dusty@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(773, 15, 7, 3, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sophie Treutel Jr.', NULL, NULL, 'bangladesh', '1985-12-24 13:41:17', 'female', 'v03hKMddRtBIzbancC', '+1 (272) 482-3347', 'odessa.mosciski@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(774, 15, 12, 6, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tyler Aufderhar PhD', NULL, NULL, 'bangladesh', '1988-02-23 06:03:56', 'female', 'fyK2gZSDLFJjuFXQvO', '+1-580-475-9251', 'gaylord.kuphal@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(775, 15, 2, 7, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Boris Marks', NULL, NULL, 'bangladesh', '1983-04-07 21:11:15', 'male', '6RLJREG1nPbSzMKou8', '+1 (585) 436-1887', 'soberbrunner@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(776, 15, 12, 20, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Yvonne Wilderman', NULL, NULL, 'bangladesh', '1986-03-24 06:45:12', 'male', 'RfelAFhfOtqqatPHHg', '+1.364.433.5177', 'raphael.green@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(777, 15, 6, 8, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rose West', NULL, NULL, 'bangladesh', '1989-08-01 02:43:46', 'male', 'ztY11XdjRFxeDIYy01', '864-692-6935', 'ogreenfelder@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(778, 15, 10, 23, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Keira Gleason', NULL, NULL, 'bangladesh', '1995-12-07 04:32:08', 'male', 'HXlx3pNyZ5UN9v9NZd', '+17408770437', 'aarmstrong@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(779, 15, 13, 2, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Thea Okuneva', NULL, NULL, 'bangladesh', '1988-04-07 11:45:50', 'female', 'pSjqG1hSdwUHpYBeu6', '601.559.1615', 'uhermiston@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(780, 15, 6, 8, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Keith Rohan DVM', NULL, NULL, 'bangladesh', '1988-06-08 08:14:43', 'female', 'VDndQqVvHqwxi4rlpg', '+16028060988', 'okuneva.joelle@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(781, 15, 5, 23, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Edwardo Boehm', NULL, NULL, 'bangladesh', '1995-03-06 12:07:18', 'female', 'zwLMajtOvQLEzpQpIc', '(636) 561-4714', 'zackary.kihn@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(782, 15, 2, 19, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Amya Ullrich MD', NULL, NULL, 'bangladesh', '1999-10-01 04:35:08', 'male', 'UBUCbQJr0YdqMq63We', '+13469954035', 'qcasper@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(783, 15, 11, 8, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marcel Parisian', NULL, NULL, 'bangladesh', '1988-02-23 00:28:25', 'female', '8WPouv9ywkqU3LO4LW', '352.443.1736', 'chelsea43@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(784, 15, 3, 4, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dorian Gorczany', NULL, NULL, 'bangladesh', '1994-06-29 18:03:09', 'male', 'KFfB4ZRmzrbLe53CgU', '936-462-1193', 'bgutkowski@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(785, 15, 5, 6, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Leland Wolff', NULL, NULL, 'bangladesh', '1986-11-22 19:10:37', 'male', 'wm5PwglQalqAOYic6Q', '+16808178451', 'hzemlak@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(786, 15, 11, 3, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Khalil Bode', NULL, NULL, 'bangladesh', '1984-08-25 07:18:38', 'female', 'yb0PNibtVaTOlbFQmz', '775-573-1107', 'beth57@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(787, 15, 9, 4, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Genoveva Farrell', NULL, NULL, 'bangladesh', '1989-10-07 03:09:45', 'male', 'mPVGlf3GgtXVQEUbxT', '551.702.0038', 'rlemke@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(788, 15, 5, 4, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Princess Reichel V', NULL, NULL, 'bangladesh', '2002-02-12 22:00:47', 'male', '1rEdcTK2ITWKiXA1Nv', '+1-667-289-7935', 'jamal.maggio@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(789, 15, 3, 4, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Michael Thiel', NULL, NULL, 'bangladesh', '1987-05-10 22:47:38', 'female', 'RgxYKe98ZURdas7Z9P', '+1-920-237-3028', 'kulas.laura@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(790, 15, 4, 6, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kristin Jacobs', NULL, NULL, 'bangladesh', '2001-07-02 01:49:17', 'male', 'mgw1t66H6RS064RZU4', '256-583-1081', 'towne.anika@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(791, 15, 6, 18, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jerrold Ankunding', NULL, NULL, 'bangladesh', '1987-11-05 15:17:52', 'female', 'LvyySLueqcblGrRlV0', '+14239640287', 'windler.chadd@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(792, 15, 13, 16, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ruthe Cremin', NULL, NULL, 'bangladesh', '1991-07-24 23:33:17', 'male', 'NYYNOuA7r06B608VZX', '+1.669.480.2365', 'lrolfson@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(793, 15, 1, 20, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jaden Simonis', NULL, NULL, 'bangladesh', '1997-10-16 04:05:12', 'female', 'z00ws5BAEkBuKwgHk3', '609-746-0348', 'ahauck@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(794, 15, 1, 16, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hassie Wiza', NULL, NULL, 'bangladesh', '1992-05-22 19:22:42', 'female', 'TfBwRGH77QlSM7pvOz', '779-669-6231', 'sortiz@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(795, 15, 1, 25, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Isaac Bartell', NULL, NULL, 'bangladesh', '1994-12-31 23:21:06', 'male', 'nL4G38GzRCkQoXNK2P', '661.746.0105', 'zlittle@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(796, 15, 8, 13, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kathleen Stoltenberg', NULL, NULL, 'bangladesh', '1998-08-28 04:12:30', 'female', 'FRUzXHIhju8zUySBhM', '+1.832.870.6801', 'flatley.maximillian@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 28, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(797, 15, 5, 11, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Solon Johnston', NULL, NULL, 'bangladesh', '1987-11-30 16:10:45', 'female', 'F21pgTprqRBP1dcche', '(901) 644-3677', 'bruce14@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(798, 15, 12, 7, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Karina Paucek', NULL, NULL, 'bangladesh', '1986-06-23 10:37:41', 'female', 'Sqw5PWcRYU1JGxu4lD', '1-272-876-4311', 'kris94@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(799, 15, 6, 17, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Cordia Carter', NULL, NULL, 'bangladesh', '1983-12-01 15:08:02', 'female', 'CI1YWzh2LbZmkLtFro', '1-551-993-3884', 'ktorp@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(800, 15, 7, 6, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rogelio Quitzon', NULL, NULL, 'bangladesh', '1998-09-19 10:12:42', 'female', 'aLt1esSwMEXcnvrH6q', '463-455-1688', 'zkling@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(801, 15, 12, 9, 7, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alfredo Turcotte MD', NULL, NULL, 'bangladesh', '1994-01-01 21:53:36', 'female', 'J139Amok0gBQF64a76', '1-502-683-4699', 'ucrona@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(802, 15, 12, 23, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Destin Shields', NULL, NULL, 'bangladesh', '1990-03-29 19:10:19', 'female', 'lSKDAonpxjKpHSv8V3', '(828) 959-3839', 'jterry@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(803, 15, 13, 7, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tiana Bergnaum', NULL, NULL, 'bangladesh', '1982-08-16 14:53:05', 'female', 'O0rdAj1qiPqdw0gJ7E', '+1.601.302.6465', 'dalton99@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 31, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(804, 15, 1, 15, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Carleton Oberbrunner', NULL, NULL, 'bangladesh', '1995-01-18 19:26:40', 'male', 'C0EXw6oqFUJ0zUszrX', '+16283246304', 'earnestine.lind@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(805, 15, 3, 16, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lenny Hermann', NULL, NULL, 'bangladesh', '1995-09-15 15:30:17', 'male', 'RUoZ8FrqwyBX7PfryY', '+1-253-978-3480', 'josue.hessel@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(806, 15, 2, 13, 10, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ayden Volkman', NULL, NULL, 'bangladesh', '1999-09-05 07:43:40', 'male', 'Jpo3d4cpAId7hhZiJN', '+13167316836', 'barrett.hane@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(807, 15, 13, 1, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alia Ritchie', NULL, NULL, 'bangladesh', '1999-05-27 08:05:51', 'female', 'pkOzcYZULW7Nfh1a0Z', '+1.619.388.9824', 'madisen.carter@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(808, 15, 12, 21, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Filomena Dickens I', NULL, NULL, 'bangladesh', '1990-04-09 09:21:18', 'female', '3S0h37vHuujHPaXfiB', '617.788.9189', 'welch.nikita@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(809, 15, 7, 12, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Charity Becker', NULL, NULL, 'bangladesh', '1992-05-27 02:21:47', 'female', 'FoOyehWDJnIHjWsiH6', '985.797.0773', 'collins.kathryn@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(810, 15, 2, 5, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gay Johns', NULL, NULL, 'bangladesh', '2001-04-07 17:55:13', 'male', 'KkZjwfnayx0XNUpk0S', '+1-763-208-4304', 'gkoss@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(811, 15, 8, 13, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dawson Bradtke', NULL, NULL, 'bangladesh', '1988-06-24 23:43:05', 'male', 'z7QCXse78htSLLVKbM', '1-605-222-6226', 'henriette.wisozk@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(812, 15, 11, 5, 2, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Santino Volkman', NULL, NULL, 'bangladesh', '2001-05-19 15:56:54', 'female', 'Z8emSg53TYZvfNAWJN', '+1-347-421-1981', 'mac.marquardt@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(813, 15, 6, 22, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Brando Dickens', NULL, NULL, 'bangladesh', '1997-09-11 17:55:47', 'female', 'NWBO98HaI3eGI6TP2z', '551.975.2546', 'hoeger.lavern@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 30, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(814, 15, 5, 3, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jaleel Carter', NULL, NULL, 'bangladesh', '1997-09-16 03:04:50', 'male', 'DRJ0Uba7tvIKJ9W6bL', '+1.541.901.9443', 'bauch.devonte@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 36, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(815, 15, 5, 17, 8, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Raphaelle Gusikowski', NULL, NULL, 'bangladesh', '1994-03-18 02:58:35', 'male', 'PhGFddR6Y65a3gN1GO', '504-981-7937', 'ujast@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 29, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(816, 15, 2, 18, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elza Gerhold', NULL, NULL, 'bangladesh', '1991-08-25 16:01:59', 'female', 'lFqUNVscuah1MALg9e', '+14049161496', 'wolf.carmel@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(817, 15, 9, 2, 9, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Carmen Littel III', NULL, NULL, 'bangladesh', '1993-07-01 18:34:08', 'female', '9z0hsmnbMpa7n9079n', '(283) 469-6716', 'lilla63@example.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 0, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(818, 15, 12, 17, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Laisha Romaguera', NULL, NULL, 'bangladesh', '2000-09-28 05:46:34', 'male', 'NiTTnwTmtWX4hvngVR', '518.600.9347', 'lukas05@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 34, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(819, 15, 1, 4, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Sigurd Gerhold', NULL, NULL, 'bangladesh', '2001-04-16 10:59:47', 'male', 'SJfQLtr9EXyXEZUyqM', '575.346.5118', 'ansel58@example.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(820, 15, 2, 16, 6, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'Dhaka, bangladesh', 'Tangail, bangladesh', 'Monir Hossen', 'Shamsher Ali', 'Mina Begum', 'Bangladeshi', '1994-04-01 13:04:28', 'female', 'fSNjBohmqxk9JjdF2F', '+13376651717', 'monir@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '2', NULL, NULL, 0, 35, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(821, 15, 8, 6, 4, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'Dhaka, Bangladesh', 'Satkhira, Bangladesh', 'Mizanual Rahman Raihan', 'Karim Ullah', 'Tasnuva Begum', 'Bangladeshi', '2001-08-27 01:51:10', 'female', 'y1zBNxjk61xqYYEa3i', '+19045518776', 'raihan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '1', NULL, NULL, 1, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(822, 15, 12, 4, 3, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'Dhaka, Bangladesh', 'Joypurhat, Bangladesh', 'Apurbo Kumar Anup', 'Sonil Kumar', 'Nibha Rani', 'Bangladeshi', '1999-01-13 16:31:04', 'female', '7Y2DpK2JzVH8t7KnhA', '+1-608-486-3639', 'apurbo@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 0, 32, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(823, 15, 8, 7, 1, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'Dhaka, Bangladesh', 'Noakhali, Bangladesh', 'Arafat Hossin', 'Md. Mahsin', 'Bibi Hazra Begum', 'Bangladeshi', '1990-04-15 08:45:02', 'male', 'cRCKlYun9uPOwzpYVa', '+18789907627', 'arafat@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, '1', NULL, NULL, 1, 33, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21'),
(824, 15, 8, 24, 5, NULL, NULL, NULL, 0, 0, 0, 0, NULL, 'Dhaka, Bangladesh', 'Sirajganj, Bangladesh', 'Imdadul Haque', 'Ismail Hossain', 'Marzia Khatun', 'Bangladeshi', '1988-06-19 12:20:13', 'female', 'xVngeQuPImMp8D8D85', '+1 (985) 798-4090', 'imdadul@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, '2', NULL, NULL, 1, 37, NULL, '2022-03-08 12:52:21', '2022-03-08 12:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `change_employer_services`
--

CREATE TABLE `change_employer_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED NOT NULL,
  `cpr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_offer_letter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `delivery_charge` int(11) DEFAULT NULL,
  `delivery_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `change_employer_services`
--

INSERT INTO `change_employer_services` (`id`, `candidate_id`, `company_id`, `wsc_id`, `cpr`, `new_offer_letter`, `comments`, `service_status`, `delivery_type`, `fees`, `delivery_charge`, `delivery_to`, `delivery_status`, `document`, `created_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 15, 8, 6, '266939', NULL, 'Demo Comments', 'Open', 'Open', 11, 14, 'Banani Dhaka', 'Door delivery', NULL, 18, NULL, '2022-03-08 12:52:22', NULL),
(2, 14, 8, 6, '326951', NULL, 'Demo Comments', 'Open', 'Open', 13, 19, 'Banani Dhaka', 'Door delivery', NULL, 18, NULL, '2022-03-08 12:52:22', NULL),
(3, 13, 8, 6, '324341', NULL, 'Demo Comments', 'Open', 'Open', 17, 15, 'Banani Dhaka', 'Door delivery', NULL, 12, NULL, '2022-03-08 12:52:22', NULL),
(4, 16, 8, 6, '103207', NULL, 'Demo Comments', 'Open', 'Open', 14, 13, 'Banani Dhaka', 'Door delivery', NULL, 11, NULL, '2022-03-08 12:52:22', NULL),
(5, 17, 8, 6, '489943', NULL, 'Demo Comments', 'Open', 'Open', 19, 14, 'Banani Dhaka', 'Door delivery', NULL, 16, NULL, '2022-03-08 12:52:22', NULL),
(6, 12, 8, 6, '174394', NULL, 'Demo Comments', 'Open', 'Open', 13, 12, 'Banani Dhaka', 'Door delivery', NULL, 18, NULL, '2022-03-08 12:52:22', NULL),
(7, 19, 8, 6, '300960', NULL, 'Demo Comments', 'Open', 'Open', 17, 15, 'Banani Dhaka', 'Door delivery', NULL, 15, NULL, '2022-03-08 12:52:22', NULL),
(8, 13, 8, 6, '148815', NULL, 'Demo Comments', 'Open', 'Open', 16, 19, 'Banani Dhaka', 'Door delivery', NULL, 16, NULL, '2022-03-08 12:52:22', NULL),
(9, 16, 8, 6, '242975', NULL, 'Demo Comments', 'Open', 'Open', 17, 17, 'Banani Dhaka', 'Door delivery', NULL, 18, NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `change_visa_services`
--

CREATE TABLE `change_visa_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cpr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` double(8,2) DEFAULT NULL,
  `delivery_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` double(8,2) DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `change_visa_services`
--

INSERT INTO `change_visa_services` (`id`, `candidate_id`, `company_id`, `wsc_id`, `cpr`, `service_type`, `fees`, `delivery_type`, `delivery_charge`, `document`, `delivery_to`, `delivery_status`, `comments`, `service_status`, `created_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 11, 8, 6, '245874', 'Demo Services', 140.00, 'Door delivery', 51.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 16, NULL, '2022-03-08 12:52:22', NULL),
(2, 13, 8, 6, '332503', 'Demo Services', 288.00, 'Door delivery', 56.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 17, NULL, '2022-03-08 12:52:22', NULL),
(3, 18, 8, 6, '425315', 'Demo Services', 445.00, 'Door delivery', 58.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 15, NULL, '2022-03-08 12:52:22', NULL),
(4, 15, 8, 6, '118475', 'Demo Services', 178.00, 'Door delivery', 52.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 18, NULL, '2022-03-08 12:52:22', NULL),
(5, 18, 8, 6, '160047', 'Demo Services', 416.00, 'Door delivery', 57.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 17, NULL, '2022-03-08 12:52:22', NULL),
(6, 17, 8, 6, '426643', 'Demo Services', 139.00, 'Door delivery', 59.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 17, NULL, '2022-03-08 12:52:22', NULL),
(7, 15, 8, 6, '227576', 'Demo Services', 227.00, 'Door delivery', 56.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 19, NULL, '2022-03-08 12:52:22', NULL),
(8, 14, 8, 6, '176792', 'Demo Services', 498.00, 'Door delivery', 56.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 11, NULL, '2022-03-08 12:52:22', NULL),
(9, 14, 8, 6, '295858', 'Demo Services', 398.00, 'Door delivery', 51.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 18, NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `charity_services`
--

CREATE TABLE `charity_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `candidate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `charity_services`
--

INSERT INTO `charity_services` (`id`, `candidate_id`, `company_id`, `wsc_id`, `candidate_name`, `company_name`, `service_type`, `comments`, `service_status`, `created_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 17, 8, 6, 'Demo candidate 11', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 16, NULL, '2022-03-08 12:52:22', NULL),
(2, 11, 8, 6, 'Demo candidate 12', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 18, NULL, '2022-03-08 12:52:22', NULL),
(3, 12, 8, 6, 'Demo candidate 13', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 15, NULL, '2022-03-08 12:52:22', NULL),
(4, 16, 8, 6, 'Demo candidate 14', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 12, NULL, '2022-03-08 12:52:22', NULL),
(5, 18, 8, 6, 'Demo candidate 15', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 14, NULL, '2022-03-08 12:52:22', NULL),
(6, 19, 8, 6, 'Demo candidate 16', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 13, NULL, '2022-03-08 12:52:22', NULL),
(7, 19, 8, 6, 'Demo candidate 17', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 15, NULL, '2022-03-08 12:52:22', NULL),
(8, 19, 8, 6, 'Demo candidate 18', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 17, NULL, '2022-03-08 12:52:22', NULL),
(9, 19, 8, 6, 'Demo candidate 19', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 16, NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `user_name`, `company_name`, `company_email`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Demo Name 0', 'Demo Name 0', 'company0@gmail.com', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(2, 2, 'Demo Name 1', 'Demo Name 1', 'company1@gmail.com', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(3, 3, 'Demo Name 2', 'Demo Name 2', 'company2@gmail.com', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(4, 4, 'Demo Name 3', 'Demo Name 3', 'company3@gmail.com', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(5, 5, 'Demo Name 4', 'Demo Name 4', 'company4@gmail.com', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(6, 6, 'Demo Name 5', 'Demo Name 5', 'company5@gmail.com', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(7, 7, 'Demo Name 6', 'Demo Name 6', 'company6@gmail.com', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(8, 8, 'Demo Name 7', 'Demo Name 7', 'company7@gmail.com', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(9, 9, 'Demo Name 8', 'Demo Name 8', 'company8@gmail.com', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(10, 10, 'Demo Name 9', 'Demo Name 9', 'company9@gmail.com', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `status`, `created_at`, `updated_at`) VALUES
(2, '355', 'Albania(+355)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(3, '213', 'Algeria (+213)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(4, '684', 'American Samoa(+684)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(5, '376', 'Andorra (+376)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(6, '244', 'Angola (+244)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(7, '1264', 'Anguilla (+1264)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(8, '672', 'Antarctica(+672)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(9, '1268', 'Antigua & Barbuda (+1268)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(10, '54', 'Argentina (+54)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(11, '374', 'Armenia (+374)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(12, '297', 'Aruba (+297)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(13, '61', 'Australia (+61)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(14, '43', 'Austria (+43)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(15, '994', 'Azerbaijan (+994)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(16, '1242', 'Bahamas (+1242)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(17, '973', 'Bahrain (+973)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(18, '880', 'Bangladesh (+880)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(19, '1246', 'Barbados (+1246)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(20, '375', 'Belarus (+375)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(21, '32', 'Belgium (+32)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(22, '501', 'Belize (+501)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(23, '229', 'Benin (+229)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(24, '1441', 'Bermuda (+1441)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(25, '975', 'Bhutan (+975)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(26, '591', 'Bolivia (+591)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(27, '387', 'Bosnia Herzegovina (+387)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(28, '267', 'Botswana (+267)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(30, '55', 'Brazil (+55)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(31, '246', 'British Indian Ocean Territory(+246)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(32, '673', 'Brunei (+673)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(33, '359', 'Bulgaria (+359)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(34, '226', 'Burkina Faso (+226)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(35, '257', 'Burundi (+257)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(36, '855', 'Cambodia (+855)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(37, '237', 'Cameroon (+237)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(38, '1', 'Canada (+1)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(39, '238', 'Cape Verde Islands (+238)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(40, '1345', 'Cayman Islands (+1345)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(41, '236', 'Central African Republic (+236)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(42, '235', 'Chad(+235)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(43, '56', 'Chile (+56)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(44, '86', 'China (+86)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(47, '57', 'Colombia (+57)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(48, '269', 'Comoros (+269)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(49, '242', 'Congo (+242)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(50, '243', 'Congo The Democratic Republic Of The(+243)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(51, '682', 'Cook Islands (+682)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(52, '506', 'Costa Rica (+506)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(53, '225', 'Cote D\'Ivoire (Ivory Coast)(+225)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(54, '385', 'Croatia (+385)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(55, '53', 'Cuba (+53)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(56, '90392', 'Cyprus North (+90392)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(57, '42', 'Czech Republic (+42)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(58, '45', 'Denmark (+45)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(59, '253', 'Djibouti (+253)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(60, '1809', 'Dominica (+1809)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(62, '670', 'East Timor(+670)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(63, '593', 'Ecuador (+593)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(64, '20', 'Egypt (+20)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(65, '503', 'El Salvador (+503)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(66, '240', 'Equatorial Guinea (+240)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(67, '291', 'Eritrea (+291)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(68, '372', 'Estonia (+372)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(69, '251', 'Ethiopia (+251)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(71, '500', 'Falkland Islands (+500)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(72, '298', 'Faroe Islands (+298)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(73, '679', 'Fiji (+679)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(74, '358', 'Finland (+358)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(75, '33', 'France (+33)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(76, '594', 'French Guiana (+594)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(77, '689', 'French Polynesia (+689)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(78, '262', 'French Southern Territories(262)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(79, '241', 'Gabon (+241)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(80, '220', 'Gambia (+220)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(81, '7880', 'Georgia (+7880)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(82, '49', 'Germany (+49)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(83, '233', 'Ghana (+233)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(84, '350', 'Gibraltar (+350)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(85, '30', 'Greece (+30)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(86, '299', 'Greenland (+299)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(87, '1473', 'Grenada (+1473)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(88, '590', 'Guadeloupe (+590)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(89, '671', 'Guam (+671)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(90, '502', 'Guatemala (+502)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(91, '44', 'Guernsey and Alderney(44 1481)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(92, '224', 'Guinea (+224)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(93, '245', 'Guinea - Bissau (+245)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(94, '592', 'Guyana (+592)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(95, '509', 'Haiti (+509)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(97, '504', 'Honduras (+504)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(98, '852', 'Hong Kong (+852)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(99, '36', 'Hungary (+36)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(100, '354', 'Iceland (+354)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(101, '91', 'India (+91)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(102, '62', 'Indonesia (+62)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(103, '98', 'Iran (+98)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(104, '964', 'Iraq (+964)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(105, '353', 'Ireland (+353)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(106, '972', 'Israel (+972)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(107, '39', 'Italy (+39)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(108, '1876', 'Jamaica (+1876)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(109, '81', 'Japan (+81)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(111, '962', 'Jordan (+962)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(112, '7', 'Kazakhstan (+7)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(113, '254', 'Kenya (+254)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(114, '686', 'Kiribati (+686)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(115, '850', 'Korea North (+850)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(116, '82', 'Korea South (+82)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(117, '965', 'Kuwait (+965)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(118, '996', 'Kyrgyzstan (+996)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(119, '856', 'Laos (+856)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(120, '371', 'Latvia (+371)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(121, '961', 'Lebanon (+961)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(122, '266', 'Lesotho (+266)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(123, '231', 'Liberia (+231)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(124, '218', 'Libya (+218)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(125, '417', 'Liechtenstein (+417)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(126, '370', 'Lithuania (+370)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(127, '352', 'Luxembourg (+352)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(128, '853', 'Macao (+853)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(129, '389', 'Macedonia (+389)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(130, '261', 'Madagascar (+261)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(131, '265', 'Malawi (+265)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(132, '60', 'Malaysia (+60)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(133, '960', 'Maldives (+960)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(134, '223', 'Mali (+223)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(135, '356', 'Malta (+356)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(137, '692', 'Marshall Islands (+692)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(138, '596', 'Martinique (+596)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(139, '222', 'Mauritania (+222)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(140, '230', 'Mauritius(+230)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(142, '52', 'Mexico (+52)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(143, '691', 'Micronesia (+691)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(144, '373', 'Moldova (+373)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(145, '377', 'Monaco (+377)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(146, '976', 'Mongolia (+976)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(147, '1664', 'Montserrat (+1664)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(148, '212', 'Morocco (+212)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(149, '258', 'Mozambique (+258)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(150, '95', 'Myanmar(+95)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(151, '264', 'Namibia (+264)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(152, '674', 'Nauru (+674)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(153, '977', 'Nepal (+977)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(154, '599', 'Netherlands Antilles(+599)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(155, '31', 'Netherlands (+31)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(156, '687', 'New Caledonia (+687)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(157, '64', 'New Zealand (+64)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(158, '505', 'Nicaragua (+505)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(159, '227', 'Niger (+227)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(160, '234', 'Nigeria (+234)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(161, '683', 'Niue (+683)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(164, '47', 'Norway (+47)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(165, '968', 'Oman (+968)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(166, '92', 'Pakistan(+92)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(167, '680', 'Palau (+680)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(168, '970', 'Palestinian Territory Occupied(+970)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(169, '507', 'Panama (+507)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(170, '675', 'Papua New Guinea (+675)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(171, '595', 'Paraguay (+595)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(172, '51', 'Peru (+51)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(173, '63', 'Philippines (+63)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(175, '48', 'Poland (+48)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(176, '351', 'Portugal (+351)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(177, '1787', 'Puerto Rico (+1787)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(178, '974', 'Qatar (+974)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(180, '40', 'Romania (+40)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(182, '250', 'Rwanda (+250)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(183, '290', 'St. Helena (+290)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(184, '1869', 'St. Kitts (+1869)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(185, '1758', 'Saint Lucia(+1758)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(186, '508', 'Saint Pierre and Miquelon(+508)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(187, '1784', 'Saint Vincent And The Grenadines(+1784)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(188, '685', 'Samoa(+685)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(189, '378', 'San Marino (+378)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(190, '239', 'Sao Tome & Principe (+239)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(191, '966', 'Saudi Arabia (+966)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(192, '221', 'Senegal (+221)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(193, '381', 'Serbia(+381)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(194, '248', 'Seychelles (+248)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(195, '232', 'Sierra Leone (+232)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(196, '65', 'Singapore (+65)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(197, '421', 'Slovak Republic (+421)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(198, '386', 'Slovenia (+386)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(200, '677', 'Solomon Islands (+677)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(201, '252', 'Somalia (+252)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(202, '27', 'South Africa (+27)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(204, '211', 'South Sudan(+211)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(205, '34', 'Spain (+34)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(206, '94', 'Sri Lanka (+94)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(207, '249', 'Sudan (+249)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(208, '597', 'Suriname (+597)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(210, '268', 'Swaziland (+268)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(211, '46', 'Sweden (+46)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(212, '41', 'Switzerland (+41)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(213, '963', 'Syria(+963)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(214, '886', 'Taiwan (+886)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(216, '255', 'Tanzania(+255)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(217, '66', 'Thailand (+66)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(218, '228', 'Togo (+228)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(219, '690', 'Tokelau(+690)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(220, '676', 'Tonga (+676)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(221, '1868', 'Trinidad & Tobago (+1868)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(222, '216', 'Tunisia (+216)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(223, '90', 'Turkey (+90)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(225, '1649', 'Turks & Caicos Islands (+1649)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(226, '688', 'Tuvalu (+688)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(227, '256', 'Uganda (+256)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(228, '380', 'Ukraine (+380)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(229, '971', 'United Arab Emirates (+971)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(233, '598', 'Uruguay (+598)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(235, '678', 'Vanuatu (+678)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(236, '379', 'Vatican City (+379)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(237, '58', 'Venezuela (+58)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(238, '84', 'Vietnam (+84)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(241, '681', 'Wallis & Futuna (+681)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(243, '969', 'Yemen (North)(+969)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(244, '38', 'Yugoslavia(+38)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(245, '260', 'Zambia (+260)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(246, '263', 'Zimbabwe (+263)', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(247, '156', 'Bahraini  +973', 'active', NULL, '2021-07-10 04:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `deadbody_transfers`
--

CREATE TABLE `deadbody_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wsc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `candidate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadbody_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_expirydate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_expirydate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cause_of_death` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bangladesh_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relative_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deadbody_transfers`
--

INSERT INTO `deadbody_transfers` (`id`, `wsc_id`, `candidate_name`, `company_name`, `deadbody_name`, `relation`, `passport_copy`, `passport_number`, `passport_expirydate`, `visa_number`, `visa_expirydate`, `cause_of_death`, `bangladesh_address`, `relative_name`, `contact_number`, `comments`, `active_status`, `created_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 6, 'Demo candidate 11', 'Demo Co. name 11', 'Demo name 11', 'Brother', NULL, '1610', '2027-03-08 18:52:22', '1539', '2027-03-08 18:52:22', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '14826941', 'Demo Comments', 'Open', '19', NULL, '2022-03-08 12:52:22', NULL),
(2, 6, 'Demo candidate 12', 'Demo Co. name 12', 'Demo name 12', 'Brother', NULL, '1030', '2027-03-08 18:52:22', '1176', '2027-03-08 18:52:22', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '17033191', 'Demo Comments', 'Open', '15', NULL, '2022-03-08 12:52:22', NULL),
(3, 6, 'Demo candidate 13', 'Demo Co. name 13', 'Demo name 13', 'Brother', NULL, '1336', '2027-03-08 18:52:22', '1554', '2027-03-08 18:52:22', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '17716476', 'Demo Comments', 'Open', '18', NULL, '2022-03-08 12:52:22', NULL),
(4, 6, 'Demo candidate 14', 'Demo Co. name 14', 'Demo name 14', 'Brother', NULL, '1238', '2027-03-08 18:52:22', '1344', '2027-03-08 18:52:22', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '12615940', 'Demo Comments', 'Open', '17', NULL, '2022-03-08 12:52:22', NULL),
(5, 6, 'Demo candidate 15', 'Demo Co. name 15', 'Demo name 15', 'Brother', NULL, '1788', '2027-03-08 18:52:22', '1836', '2027-03-08 18:52:22', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '11788130', 'Demo Comments', 'Open', '19', NULL, '2022-03-08 12:52:22', NULL),
(6, 6, 'Demo candidate 16', 'Demo Co. name 16', 'Demo name 16', 'Brother', NULL, '1945', '2027-03-08 18:52:22', '1014', '2027-03-08 18:52:22', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '17660174', 'Demo Comments', 'Open', '11', NULL, '2022-03-08 12:52:22', NULL),
(7, 6, 'Demo candidate 17', 'Demo Co. name 17', 'Demo name 17', 'Brother', NULL, '1443', '2027-03-08 18:52:22', '1901', '2027-03-08 18:52:22', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '12879161', 'Demo Comments', 'Open', '17', NULL, '2022-03-08 12:52:22', NULL),
(8, 6, 'Demo candidate 18', 'Demo Co. name 18', 'Demo name 18', 'Brother', NULL, '1876', '2027-03-08 18:52:22', '1036', '2027-03-08 18:52:22', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '11802179', 'Demo Comments', 'Open', '16', NULL, '2022-03-08 12:52:22', NULL),
(9, 6, 'Demo candidate 19', 'Demo Co. name 19', 'Demo name 19', 'Brother', NULL, '1885', '2027-03-08 18:52:22', '1546', '2027-03-08 18:52:22', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '10894219', 'Demo Comments', 'Open', '17', NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_categories`
--

CREATE TABLE `event_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_categories`
--

INSERT INTO `event_categories` (`id`, `category_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'w1cdkhqBH7', 'active', NULL, NULL),
(2, 'eXFRBtRdW2', 'active', NULL, NULL),
(3, 'Z8bVIOqA1H', 'active', NULL, NULL),
(4, 'BM0We3I9ns', 'active', NULL, NULL),
(5, 'ozK7DKGWeK', 'active', NULL, NULL),
(6, '4gcC43UQwJ', 'active', NULL, NULL),
(7, 'FoABSuKB18', 'active', NULL, NULL),
(8, 'eB5PTOF6hr', 'active', NULL, NULL),
(9, '67QIVtEpZL', 'active', NULL, NULL),
(10, 'A3qM4PlWwS', 'active', NULL, NULL),
(11, 'Health and Safety', 'active', NULL, NULL),
(12, 'Drug Handling', 'active', NULL, NULL),
(13, 'Remittance', 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `extension_passport_services`
--

CREATE TABLE `extension_passport_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `candidate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extention_passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` double(8,2) DEFAULT NULL,
  `delivery_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reject_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_embassy_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extension_passport_services`
--

INSERT INTO `extension_passport_services` (`id`, `candidate_id`, `company_id`, `wsc_id`, `candidate_name`, `company_name`, `salary_type`, `cpr`, `comments`, `extention_passport`, `service_status`, `passport`, `fees`, `delivery_type`, `delivery_to`, `delivery_status`, `reject_reason`, `b_embassy_id`, `created_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 13, 6, 6, 'Demo Candidate 0', 'Demo Company 0', '48819', '39620', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-08 12:52:22', NULL),
(2, 18, 6, 6, 'Demo Candidate 1', 'Demo Company 1', '33784', '44207', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-08 12:52:22', NULL),
(3, 15, 6, 6, 'Demo Candidate 2', 'Demo Company 2', '35141', '36043', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-08 12:52:22', NULL),
(4, 18, 6, 6, 'Demo Candidate 3', 'Demo Company 3', '19013', '36883', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-08 12:52:22', NULL),
(5, 13, 6, 6, 'Demo Candidate 4', 'Demo Company 4', '15655', '24037', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-08 12:52:22', NULL),
(6, 11, 6, 6, 'Demo Candidate 5', 'Demo Company 5', '16974', '9873', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-08 12:52:22', NULL),
(7, 14, 6, 6, 'Demo Candidate 6', 'Demo Company 6', '46081', '31656', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-08 12:52:22', NULL),
(8, 13, 6, 6, 'Demo Candidate 7', 'Demo Company 7', '49724', '40173', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-08 12:52:22', NULL),
(9, 12, 6, 6, 'Demo Candidate 8', 'Demo Company 8', '32125', '25828', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-08 12:52:22', NULL),
(10, 16, 6, 6, 'Demo Candidate 9', 'Demo Company 9', '39656', '33527', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insurance_services`
--

CREATE TABLE `insurance_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_card` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_services`
--

INSERT INTO `insurance_services` (`id`, `candidate_id`, `company_id`, `wsc_id`, `service_type`, `insurance_number`, `insurance_card`, `comments`, `service_status`, `created_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 16, 8, 6, 'Demo service 11', '13281687', NULL, 'Demo Comments', 'Open', '14', NULL, '2022-03-08 12:52:22', NULL),
(2, 18, 8, 6, 'Demo service 12', '19656313', NULL, 'Demo Comments', 'Open', '14', NULL, '2022-03-08 12:52:22', NULL),
(3, 11, 8, 6, 'Demo service 13', '17623282', NULL, 'Demo Comments', 'Open', '17', NULL, '2022-03-08 12:52:22', NULL),
(4, 15, 8, 6, 'Demo service 14', '13734191', NULL, 'Demo Comments', 'Open', '18', NULL, '2022-03-08 12:52:22', NULL),
(5, 13, 8, 6, 'Demo service 15', '10220331', NULL, 'Demo Comments', 'Open', '18', NULL, '2022-03-08 12:52:22', NULL),
(6, 12, 8, 6, 'Demo service 16', '13160763', NULL, 'Demo Comments', 'Open', '18', NULL, '2022-03-08 12:52:22', NULL),
(7, 12, 8, 6, 'Demo service 17', '12174194', NULL, 'Demo Comments', 'Open', '19', NULL, '2022-03-08 12:52:22', NULL),
(8, 14, 8, 6, 'Demo service 18', '19591516', NULL, 'Demo Comments', 'Open', '12', NULL, '2022-03-08 12:52:22', NULL),
(9, 14, 8, 6, 'Demo service 19', '15577041', NULL, 'Demo Comments', 'Open', '17', NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `issuance_certificates`
--

CREATE TABLE `issuance_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` double(8,2) DEFAULT NULL,
  `delivery_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issuance_certificates`
--

INSERT INTO `issuance_certificates` (`id`, `candidate_id`, `company_id`, `wsc_id`, `service_type`, `comments`, `service_status`, `delivery_status`, `delivery_charge`, `fees`, `delivery_to`, `document`, `delivery_type`, `created_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 13, 8, 6, 'Demo service 11', 'Demo Comments', 'Approved', 'Approved', '170', 1178.00, 'Dhaka bonani', NULL, 'Door delivery', '15', NULL, '2022-03-08 12:52:22', NULL),
(2, 14, 8, 6, 'Demo service 12', 'Demo Comments', 'Approved', 'Approved', '159', 1723.00, 'Dhaka bonani', NULL, 'Door delivery', '15', NULL, '2022-03-08 12:52:22', NULL),
(3, 17, 8, 6, 'Demo service 13', 'Demo Comments', 'Approved', 'Approved', '140', 1499.00, 'Dhaka bonani', NULL, 'Door delivery', '18', NULL, '2022-03-08 12:52:22', NULL),
(4, 12, 8, 6, 'Demo service 14', 'Demo Comments', 'Approved', 'Approved', '136', 1047.00, 'Dhaka bonani', NULL, 'Door delivery', '15', NULL, '2022-03-08 12:52:22', NULL),
(5, 16, 8, 6, 'Demo service 15', 'Demo Comments', 'Approved', 'Approved', '154', 1620.00, 'Dhaka bonani', NULL, 'Door delivery', '11', NULL, '2022-03-08 12:52:22', NULL),
(6, 16, 8, 6, 'Demo service 16', 'Demo Comments', 'Approved', 'Approved', '167', 1008.00, 'Dhaka bonani', NULL, 'Door delivery', '15', NULL, '2022-03-08 12:52:22', NULL),
(7, 15, 8, 6, 'Demo service 17', 'Demo Comments', 'Approved', 'Approved', '150', 1893.00, 'Dhaka bonani', NULL, 'Door delivery', '16', NULL, '2022-03-08 12:52:22', NULL),
(8, 14, 8, 6, 'Demo service 18', 'Demo Comments', 'Approved', 'Approved', '137', 1251.00, 'Dhaka bonani', NULL, 'Door delivery', '18', NULL, '2022-03-08 12:52:22', NULL),
(9, 19, 8, 6, 'Demo service 19', 'Demo Comments', 'Approved', 'Approved', '160', 1576.00, 'Dhaka bonani', NULL, 'Door delivery', '18', NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jail_and_deportations`
--

CREATE TABLE `jail_and_deportations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `person_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person_relation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_expirydate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_expirydate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cause_of_arrest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `police_station_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrest_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jail_and_deportations`
--

INSERT INTO `jail_and_deportations` (`id`, `candidate_id`, `company_id`, `wsc_id`, `job_category_id`, `person_name`, `person_relation`, `passport_number`, `passport_expirydate`, `visa_number`, `visa_expirydate`, `cause_of_arrest`, `police_station_name`, `arrest_date`, `passport_copy`, `comments`, `created_id`, `active_status`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 11, 8, 6, 2, 'Mr. Person 11', 'Brother ', '1569', '2027-03-08 18:52:22', '1956', '2027-03-08 18:52:22', 'Couse of Arrest', 'Demo Police Station', '2022-03-03 18:52:22', NULL, 'Demo Comments', '19', 'Open', NULL, '2022-03-08 12:52:22', NULL),
(2, 12, 8, 6, 5, 'Mr. Person 12', 'Brother ', '1019', '2027-03-08 18:52:22', '1579', '2027-03-08 18:52:22', 'Couse of Arrest', 'Demo Police Station', '2022-03-03 18:52:22', NULL, 'Demo Comments', '6', 'Open', NULL, '2022-03-08 12:52:22', NULL),
(3, 13, 8, 6, 12, 'Mr. Person 13', 'Brother ', '1505', '2027-03-08 18:52:22', '1449', '2027-03-08 18:52:22', 'Couse of Arrest', 'Demo Police Station', '2022-03-03 18:52:22', NULL, 'Demo Comments', '7', 'Open', NULL, '2022-03-08 12:52:22', NULL),
(4, 14, 8, 6, 12, 'Mr. Person 14', 'Brother ', '1994', '2027-03-08 18:52:22', '1986', '2027-03-08 18:52:22', 'Couse of Arrest', 'Demo Police Station', '2022-03-03 18:52:22', NULL, 'Demo Comments', '11', 'Open', NULL, '2022-03-08 12:52:22', NULL),
(5, 15, 8, 6, 7, 'Mr. Person 15', 'Brother ', '1339', '2027-03-08 18:52:22', '1588', '2027-03-08 18:52:22', 'Couse of Arrest', 'Demo Police Station', '2022-03-03 18:52:22', NULL, 'Demo Comments', '19', 'Open', NULL, '2022-03-08 12:52:22', NULL),
(6, 16, 8, 6, 11, 'Mr. Person 16', 'Brother ', '1721', '2027-03-08 18:52:22', '1804', '2027-03-08 18:52:22', 'Couse of Arrest', 'Demo Police Station', '2022-03-03 18:52:22', NULL, 'Demo Comments', '14', 'Open', NULL, '2022-03-08 12:52:22', NULL),
(7, 17, 8, 6, 12, 'Mr. Person 17', 'Brother ', '1190', '2027-03-08 18:52:22', '1866', '2027-03-08 18:52:22', 'Couse of Arrest', 'Demo Police Station', '2022-03-03 18:52:22', NULL, 'Demo Comments', '12', 'Open', NULL, '2022-03-08 12:52:22', NULL),
(8, 18, 8, 6, 5, 'Mr. Person 18', 'Brother ', '1171', '2027-03-08 18:52:22', '1944', '2027-03-08 18:52:22', 'Couse of Arrest', 'Demo Police Station', '2022-03-03 18:52:22', NULL, 'Demo Comments', '15', 'Open', NULL, '2022-03-08 12:52:22', NULL),
(9, 19, 8, 6, 2, 'Mr. Person 19', 'Brother ', '1537', '2027-03-08 18:52:22', '1019', '2027-03-08 18:52:22', 'Couse of Arrest', 'Demo Police Station', '2022-03-03 18:52:22', NULL, 'Demo Comments', '19', 'Open', NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `category_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Plumber', 'Active', '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(2, 'Painter', 'Active', '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(3, 'Driver', 'Active', '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(4, 'Factory Worker', 'Active', '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(5, 'Labour', 'Active', '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(6, 'Car Cleaner', 'Active', '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(7, 'Welder', 'Active', '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(8, 'Shafe', 'Active', '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(9, 'Driver', 'Active', '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(10, 'Office Assistant', 'Active', '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(11, 'Computer Operator', 'Active', '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(12, 'Cleaner', 'Active', '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(13, 'Data Enterer', 'Active', '2022-03-08 12:52:20', '2022-03-08 12:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `job_distribute_in_b_r_a_s`
--

CREATE TABLE `job_distribute_in_b_r_a_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bra_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bra_interest_id` bigint(20) UNSIGNED DEFAULT NULL,
  `distributed_vacancy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memp_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_posts`
--

CREATE TABLE `job_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `employment_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age_limit` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_location` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_vacancy` int(11) DEFAULT NULL,
  `app_vacancy` int(11) DEFAULT NULL,
  `end_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demand_letter` blob DEFAULT NULL,
  `selected_wsc` int(11) DEFAULT NULL,
  `mra_id` int(11) DEFAULT NULL,
  `recruiting_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rejection_reason` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bhc_approval` int(11) NOT NULL DEFAULT 0,
  `forward_to_bhc` int(11) NOT NULL DEFAULT 0,
  `forward_to_wsc` int(11) NOT NULL DEFAULT 0,
  `wsc_send_status` int(11) NOT NULL DEFAULT 0,
  `ma_status` enum('New','Verified','Approved','Applied','Rejected','Pending','Demand') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `forward_status` enum('Forwarded','Pending') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('New','Verified','Approved','Applied','Rejected','Pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `bd_embasy_status` enum('Approved','Rejected') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_posts`
--

INSERT INTO `job_posts` (`id`, `job_category_id`, `user_id`, `company_id`, `employment_type`, `gender`, `age_limit`, `salary`, `job_location`, `job_vacancy`, `app_vacancy`, `end_date`, `demand_letter`, `selected_wsc`, `mra_id`, `recruiting_type`, `appointment_date`, `appointment_time`, `rejection_reason`, `bhc_approval`, `forward_to_bhc`, `forward_to_wsc`, `wsc_send_status`, `ma_status`, `forward_status`, `status`, `bd_embasy_status`, `created_at`, `updated_at`) VALUES
(1, 9, 21, 6, 'Full Time', 'Male only', '33', '12191', 'Dhaka Bangladesh', 953, NULL, '2022-03-08 18:52:20', 0x396c4c44544a49703959, 6, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-08 12:52:20', NULL),
(2, 8, 21, 6, 'Full Time', 'Male only', '38', '18144', 'Dhaka Bangladesh', 966, NULL, '2022-03-08 18:52:20', 0x555442754f576230476d, 8, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-08 12:52:20', NULL),
(3, 6, 22, 6, 'Full Time', 'Male only', '27', '28475', 'Dhaka Bangladesh', 827, NULL, '2022-03-08 18:52:20', 0x4741584d6571714b3551, 3, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-08 12:52:20', NULL),
(4, 9, 24, 6, 'Full Time', 'Male only', '47', '19408', 'Dhaka Bangladesh', 975, NULL, '2022-03-08 18:52:20', 0x4c6f7842496542757241, 3, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-08 12:52:20', NULL),
(5, 5, 23, 6, 'Full Time', 'Male only', '28', '39961', 'Dhaka Bangladesh', 956, NULL, '2022-03-08 18:52:20', 0x5635564a794d504d5041, 3, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-08 12:52:20', NULL),
(6, 6, 22, 6, 'Full Time', 'Male only', '34', '19051', 'Dhaka Bangladesh', 948, NULL, '2022-03-08 18:52:20', 0x576b3643393872437443, 5, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-08 12:52:20', NULL),
(7, 7, 25, 6, 'Full Time', 'Male only', '41', '6685', 'Dhaka Bangladesh', 896, NULL, '2022-03-08 18:52:20', 0x4b446a7763554a71434f, 2, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-08 12:52:20', NULL),
(8, 9, 19, 6, 'Full Time', 'Male only', '30', '32637', 'Dhaka Bangladesh', 825, NULL, '2022-03-08 18:52:20', 0x715851333537684b5242, 4, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-08 12:52:20', NULL),
(9, 7, 27, 6, 'Full Time', 'Male only', '21', '28661', 'Dhaka Bangladesh', 858, NULL, '2022-03-08 18:52:20', 0x49744345755a5747534a, 4, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-08 12:52:20', NULL),
(10, 8, 21, 6, 'Full Time', 'Male only', '21', '41162', 'Dhaka Bangladesh', 978, NULL, '2022-03-08 18:52:20', 0x68374f746b727a427138, 6, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-08 12:52:20', NULL),
(11, 9, 6, 6, '04nN3rzT8c', 'Male only', '25', '27887', '16woxPGOvK', 47, NULL, '2022-03-08 18:52:20', 0x32766a5a634739656854, 6, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-08 12:52:20', NULL),
(12, 11, 6, 6, 'MEsTSt8IWE', 'Male only', '46', '37083', 'nWQCwjFzYy', 37, NULL, '2022-03-08 18:52:20', 0x456a5978573967537947, 8, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-08 12:52:20', NULL),
(13, 5, 6, 6, '9XYm5Vp3ls', 'Male only', '22', '13867', 'yhAWHm7ds0', 47, NULL, '2022-03-08 18:52:20', 0x75665064344f4c343271, 6, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-08 12:52:20', NULL),
(14, 9, 6, 6, '17JZzAfirg', 'Male only', '29', '29489', 'HV4UbbI7G6', 29, NULL, '2022-03-08 18:52:20', 0x52554a47636866386a47, 9, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-08 12:52:20', NULL),
(15, 6, 6, 6, 'TEQJ5y8dko', 'Male only', '21', '35508', '61IwTzK3DG', 25, NULL, '2022-03-08 18:52:20', 0x3658596779763253464d, 5, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-08 12:52:20', NULL),
(16, 7, 6, 6, 'au5jeyf20X', 'Male only', '24', '47180', 'WQ5qkdDf5l', 46, NULL, '2022-03-08 18:52:20', 0x454546413064646c7549, 8, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-08 12:52:20', NULL),
(17, 6, 6, 6, 'yYFWsTcm6h', 'Male only', '31', '29280', 'gerPshgG0K', 24, NULL, '2022-03-08 18:52:20', 0x50664b72524679446b78, 3, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-08 12:52:20', NULL),
(18, 8, 6, 6, 'tSUXVXNf6Y', 'Male only', '46', '30602', 'FyBoPENSu4', 30, NULL, '2022-03-08 18:52:20', 0x61617459434559576e4d, 10, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-08 12:52:20', NULL),
(19, 11, 6, 6, 'rBnLKabcDg', 'Male only', '33', '30673', 'OdXv4P2nLl', 23, NULL, '2022-03-08 18:52:20', 0x777264774d734e764430, 6, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-08 12:52:20', NULL),
(20, 11, 6, 6, '86pWZ7BtLp', 'Male only', '36', '27744', 'ho6BXrmH1j', 38, NULL, '2022-03-08 18:52:20', 0x6c466f57413339333142, 3, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-08 12:52:20', NULL),
(21, 12, 6, 6, 'LskfBdAJQA', 'Male only', '31', '11440', 'Rj6qDKGaiG', 41, NULL, '2022-03-08 18:52:20', 0x587170705679464b4c51, 1, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-08 12:52:20', NULL),
(22, 7, 6, 6, '61EWrh67Ro', 'Male only', '42', '6057', 'RtEAx7sX91', 40, NULL, '2022-03-08 18:52:20', 0x4f494465587246674b68, 2, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-08 12:52:20', NULL),
(23, 5, 6, 6, 'xGXujUIaCe', 'Male only', '47', '14578', 'jrRpGrFkLR', 46, NULL, '2022-03-08 18:52:20', 0x50666c64596764507a4d, 5, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-08 12:52:20', NULL),
(24, 9, 6, 6, 'qfI5vMdxPL', 'Male only', '28', '49666', 'yDJQFXzIrV', 44, NULL, '2022-03-08 18:52:20', 0x41706a3249374f375734, 10, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-08 12:52:20', NULL),
(25, 7, 6, 6, 'JO1yWzwfn8', 'Male only', '41', '13932', '8RlORNgHqP', 37, NULL, '2022-03-08 18:52:20', 0x696f6c464a7a42474f4e, 7, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-08 12:52:20', NULL),
(26, 6, 6, 6, 'vHBDsrFvCT', 'Male only', '31', '38644', 'FEvsOvLLqN', 35, NULL, '2022-03-08 18:52:20', 0x305a3676444c59703056, 4, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-08 12:52:20', NULL),
(27, 6, 6, 6, '1YtlS1rTMz', 'Male only', '22', '40741', 'M44CT22pGy', 37, NULL, '2022-03-08 18:52:20', 0x52415439614a7a454a51, 1, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-08 12:52:20', NULL),
(28, 9, 6, 6, 'Zl7TSguF90', 'Male only', '47', '34284', 'ok1DVHQRJV', 47, NULL, '2022-03-08 18:52:20', 0x446e7846344d6d693469, 2, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-08 12:52:20', NULL),
(29, 10, 6, 6, 'UsxBSkzx4p', 'Male only', '29', '25775', 'UTiYmG5Xuz', 25, NULL, '2022-03-08 18:52:20', 0x564f76786374476a4557, 7, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-08 12:52:20', NULL),
(30, 8, 6, 6, '8sTc1wUKct', 'Male only', '34', '24591', 'mH8SW6qJOM', 45, NULL, '2022-03-08 18:52:20', 0x50503561386f45727751, 2, NULL, NULL, '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-08 12:52:20', NULL),
(31, 11, 8, 8, 'Full Time', 'Male only', '21', '9250', 'Kuala lampur , Malaysia', 1000, NULL, '2022-03-08 18:52:20', NULL, NULL, NULL, 'self', '2022-03-08 18:52:20', '2022-03-08 18:52:20', NULL, 0, 0, 0, 0, 'Approved', NULL, 'Approved', 'Approved', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `legal_aid_services`
--

CREATE TABLE `legal_aid_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `legal_aid_services`
--

INSERT INTO `legal_aid_services` (`id`, `candidate_id`, `company_id`, `wsc_id`, `comments`, `service_status`, `created_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 12, 8, 6, 'Demo Service', 'Open', '15', NULL, '2022-03-08 12:52:22', NULL),
(2, 13, 8, 6, 'Demo Service', 'Open', '18', NULL, '2022-03-08 12:52:22', NULL),
(3, 15, 8, 6, 'Demo Service', 'Open', '14', NULL, '2022-03-08 12:52:22', NULL),
(4, 19, 8, 6, 'Demo Service', 'Open', '18', NULL, '2022-03-08 12:52:22', NULL),
(5, 13, 8, 6, 'Demo Service', 'Open', '17', NULL, '2022-03-08 12:52:22', NULL),
(6, 17, 8, 6, 'Demo Service', 'Open', '14', NULL, '2022-03-08 12:52:22', NULL),
(7, 16, 8, 6, 'Demo Service', 'Open', '12', NULL, '2022-03-08 12:52:22', NULL),
(8, 14, 8, 6, 'Demo Service', 'Open', '13', NULL, '2022-03-08 12:52:22', NULL),
(9, 14, 8, 6, 'Demo Service', 'Open', '12', NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lost_passport_services`
--

CREATE TABLE `lost_passport_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `b_embassy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cpr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bhr_mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bangladesh_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bangladesh_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_cpr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spouse_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` double(8,2) DEFAULT NULL,
  `reject_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lost_passport_services`
--

INSERT INTO `lost_passport_services` (`id`, `candidate_id`, `company_id`, `wsc_id`, `b_embassy_id`, `cpr`, `bhr_mobile_no`, `bangladesh_mobile`, `bangladesh_address`, `spouse_cpr`, `spouse_mobile`, `salary`, `comments`, `service_status`, `delivery_type`, `delivery_to`, `delivery_status`, `passport`, `fees`, `reject_reason`, `created_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 16, 6, 6, 2, '35333', '24334', '24051', 'U0n3jrrcnrZnMdSfct3ByaGzHEp0h7Bv0hV5cyJv9Fe77GbCbs', 'RDcUTY6TO7Zb1mRD56vGvMJWdKMT339QQjWyonmQU6KswdiiJR', '270', '33411', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-08 12:52:21', NULL),
(2, 19, 6, 6, 2, '28804', '31178', '21050', 'POti2KxAyvDMQDiaUuBC4QqdZoFOUbKZKW80AmhAg65jpMyqMY', '8FFkPoHAiRMdgVVP4NsjjNaQfYcqlYxjnaAuvyYGKJZ0vb4a1H', '66', '16592', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-08 12:52:21', NULL),
(3, 15, 6, 6, 2, '21300', '41289', '35742', 'oVFltFM7EuFqIcoyjtKLVD5G3AuojxZveF8nGLcwp833ZhQFjG', '4ScDVEiV2CMhUe6dxgsvzHLO0OcDSpas7ccK5M5WEwwiSbHbMv', '200', '7454', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-08 12:52:21', NULL),
(4, 16, 6, 6, 2, '38735', '45961', '16998', 'RW0HJnCRAi8c0tfsAlXkpIPXw4YW3V7MJrGcOUMul0DqQRx43Y', 'rx99As7NnTGEtuh2j4BaqG0EhVtkiBZoNlBdkGGuoMLWbd65B5', '284', '28335', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-08 12:52:21', NULL),
(5, 14, 6, 6, 2, '18148', '6901', '24028', 'jNfYs4tnNghhx0T5HYD0jy32ZA2IPVMzzjPVCsZbql6kMhBZto', 'nvaxzgX4NmkQTBLc71rpDGcVubQ6x0T5sNBSadtjDIXoTI5hUC', '343', '17244', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-08 12:52:22', NULL),
(6, 19, 6, 6, 2, '19838', '44045', '24696', 'uoTMJ7xYZfjxbu1E1Wjjilrwc0z00eHuScGng6RDcd937YaBWj', 'MXCVpKkTYTsgXYDyyRWc6gYbQyOaHpaMWppQ008iGwvdSFC1Du', '310', '32574', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-08 12:52:22', NULL),
(7, 11, 6, 6, 2, '15346', '40454', '17061', 'cl8kmQcE4QGix8XY7ZSr3RJvZVRpcQkldTC1EaTkFlLUdInBGf', 'DdGU7D8PEhJXdCYIpLAKcCUwsos4BIh17beJFRXOqTmrzetBCL', '457', '30497', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-08 12:52:22', NULL),
(8, 18, 6, 6, 2, '41831', '27125', '49093', 'nOQkNBXH7KKgMv7TqBpJpnvHfzbUxsmjVwIKn6i7NqEfIrFGEm', '8LlBjsmNGKed9wzyFfjLoS8gdnKfFbWe4abeljmcfG3IuJ75tq', '67', '5280', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-08 12:52:22', NULL),
(9, 12, 6, 6, 2, '10105', '17311', '25975', '1XEb9uWlbS9ZLXGNntHUmUfevTKHbqGsdaneT1fg4xHjVw6TCz', 'xd6T3nExP316gmATdNdPEhfHFJ0e55GPdqof4h4GNl3orgXRif', '146', '5144', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-08 12:52:22', NULL),
(10, 13, 6, 6, 2, '26518', '31961', '12894', 'KSO3wu2CE6f6HQ0OLFlH2eOJbAGi8HvtnuMGNolGZJo3Mmct3d', '6ZHMrfAKHYi1kC7K9rZmWRErvf84npIY03avD40CUtCurlPD2O', '210', '16947', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medical_compensation`
--

CREATE TABLE `medical_compensation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `candidate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sick_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hospital_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medical_compensation`
--

INSERT INTO `medical_compensation` (`id`, `candidate_id`, `company_id`, `wsc_id`, `candidate_name`, `company_name`, `sick_type`, `doctor_name`, `hospital_name`, `prescription`, `insurance_number`, `insurance_card`, `comments`, `service_status`, `created_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 17, 1, 6, 'Demo name 11', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '13442128', NULL, 'Demo Comments', 'Open', '12', NULL, '2022-03-08 12:52:22', NULL),
(2, 16, 1, 6, 'Demo name 12', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '18223838', NULL, 'Demo Comments', 'Open', '17', NULL, '2022-03-08 12:52:22', NULL),
(3, 14, 1, 6, 'Demo name 13', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '14437431', NULL, 'Demo Comments', 'Open', '12', NULL, '2022-03-08 12:52:22', NULL),
(4, 11, 1, 6, 'Demo name 14', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '12688721', NULL, 'Demo Comments', 'Open', '16', NULL, '2022-03-08 12:52:22', NULL),
(5, 11, 1, 6, 'Demo name 15', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '15455686', NULL, 'Demo Comments', 'Open', '14', NULL, '2022-03-08 12:52:22', NULL),
(6, 11, 1, 6, 'Demo name 16', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '17637448', NULL, 'Demo Comments', 'Open', '12', NULL, '2022-03-08 12:52:22', NULL),
(7, 18, 1, 6, 'Demo name 17', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '14437742', NULL, 'Demo Comments', 'Open', '16', NULL, '2022-03-08 12:52:22', NULL),
(8, 18, 1, 6, 'Demo name 18', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '10210638', NULL, 'Demo Comments', 'Open', '12', NULL, '2022-03-08 12:52:22', NULL),
(9, 13, 1, 6, 'Demo name 19', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '11626494', NULL, 'Demo Comments', 'Open', '16', NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meet_and_greets`
--

CREATE TABLE `meet_and_greets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `guest_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_guests` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrival_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `airline_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flight_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flight_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport_service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meet_and_greets`
--

INSERT INTO `meet_and_greets` (`id`, `candidate_id`, `company_id`, `wsc_id`, `guest_name`, `number_of_guests`, `service_name`, `arrival_date`, `airline_name`, `flight_number`, `flight_time`, `transport_service`, `passport_copy`, `comments`, `active_status`, `created_by`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 11, 8, 6, 'Demo Guest Name11', '5', 'Demo service namwe11', '2022-03-03 18:52:22', 'Qatar Airlines', '1348', '2022-03-13 18:52:22', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-08 12:52:22', NULL),
(2, 12, 8, 6, 'Demo Guest Name12', '5', 'Demo service namwe12', '2022-03-03 18:52:22', 'Qatar Airlines', '1068', '2022-03-13 18:52:22', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-08 12:52:22', NULL),
(3, 13, 8, 6, 'Demo Guest Name13', '5', 'Demo service namwe13', '2022-03-03 18:52:22', 'Qatar Airlines', '1091', '2022-03-13 18:52:22', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-08 12:52:22', NULL),
(4, 14, 8, 6, 'Demo Guest Name14', '9', 'Demo service namwe14', '2022-03-03 18:52:22', 'Qatar Airlines', '1807', '2022-03-13 18:52:22', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-08 12:52:22', NULL),
(5, 15, 8, 6, 'Demo Guest Name15', '10', 'Demo service namwe15', '2022-03-03 18:52:22', 'Qatar Airlines', '1609', '2022-03-13 18:52:22', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-08 12:52:22', NULL),
(6, 16, 8, 6, 'Demo Guest Name16', '10', 'Demo service namwe16', '2022-03-03 18:52:22', 'Qatar Airlines', '1241', '2022-03-13 18:52:22', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-08 12:52:22', NULL),
(7, 17, 8, 6, 'Demo Guest Name17', '9', 'Demo service namwe17', '2022-03-03 18:52:22', 'Qatar Airlines', '1399', '2022-03-13 18:52:22', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-08 12:52:22', NULL),
(8, 18, 8, 6, 'Demo Guest Name18', '5', 'Demo service namwe18', '2022-03-03 18:52:22', 'Qatar Airlines', '1343', '2022-03-13 18:52:22', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-08 12:52:22', NULL),
(9, 19, 8, 6, 'Demo Guest Name19', '6', 'Demo service namwe19', '2022-03-03 18:52:22', 'Qatar Airlines', '1773', '2022-03-13 18:52:22', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_09_190616_create_countries_table', 1),
(5, '2021_07_09_192125_create_roles_table', 1),
(6, '2021_07_15_080421_create_job_posts_table', 1),
(7, '2021_07_15_190213_create_companies_table', 1),
(8, '2021_07_18_053801_create_job_categories_table', 1),
(9, '2021_07_19_102245_create_awareness_events_table', 1),
(10, '2021_07_19_102326_create_event_categories_table', 1),
(11, '2021_07_26_061922_create_candidates_table', 1),
(12, '2021_07_26_071748_create_applied_jobs_table', 1),
(13, '2021_07_26_111341_create_activated_candidates_table', 1),
(14, '2021_07_26_112159_create_attestation_certificates_table', 1),
(15, '2021_07_26_113110_create_submitted_travel_enquiries_table', 1),
(16, '2021_07_26_114747_create_change_employer_services_table', 1),
(17, '2021_07_31_100253_create_offered_candidates_table', 1),
(18, '2021_07_31_105728_create_lost_passport_services_table', 1),
(19, '2021_07_31_114010_create_change_visa_services_table', 1),
(20, '2021_07_31_120611_create_charity_services_table', 1),
(21, '2021_07_31_134021_create_registration_certificates_table', 1),
(22, '2021_08_01_072656_create_jail_and_deportations_table', 1),
(23, '2021_08_01_075709_create_amnesty_services_table', 1),
(24, '2021_08_01_080833_create_issuance_certificates_table', 1),
(25, '2021_08_01_081552_create_meet_and_greets_table', 1),
(26, '2021_08_01_082949_create_adr_services_table', 1),
(27, '2021_08_01_083323_create_insurance_services_table', 1),
(28, '2021_08_01_084115_create_medical_compensation_table', 1),
(29, '2021_08_01_095920_create_deadbody_transfers_table', 1),
(30, '2021_08_01_101245_create_new_passport_services_table', 1),
(31, '2021_08_01_101851_create_travel_enquiries_table', 1),
(32, '2021_08_01_103402_create_legal_aid_services_table', 1),
(33, '2021_08_01_104242_create_extension_passport_services_table', 1),
(34, '2021_08_01_104932_create_payment_services_table', 1),
(35, '2022_02_15_130658_create_static_options_table', 1),
(36, '2022_02_28_173507_create_notifications_table', 1),
(37, '2022_03_01_163129_create_b_r_a_interests_table', 1),
(38, '2022_03_02_183814_create_job_distribute_in_b_r_a_s_table', 1),
(39, '2022_03_07_111422_reviews', 1);

-- --------------------------------------------------------

--
-- Table structure for table `new_passport_services`
--

CREATE TABLE `new_passport_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `candidate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_offer_application` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biometric` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` double(8,2) DEFAULT NULL,
  `delivery_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reject_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_passport_services`
--

INSERT INTO `new_passport_services` (`id`, `candidate_id`, `company_id`, `wsc_id`, `candidate_name`, `company_name`, `salary_type`, `cpr`, `comments`, `new_offer_application`, `service_status`, `photo`, `biometric`, `fees`, `delivery_type`, `delivery_to`, `delivery_status`, `new_passport`, `reject_reason`, `created_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 12, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '23020', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-08 12:52:21', NULL),
(2, 11, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '8783', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-08 12:52:21', NULL),
(3, 19, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '45559', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-08 12:52:21', NULL),
(4, 12, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '9480', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-08 12:52:21', NULL),
(5, 18, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '26013', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-08 12:52:21', NULL),
(6, 16, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '8193', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-08 12:52:21', NULL),
(7, 12, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '10468', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-08 12:52:21', NULL),
(8, 12, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '34990', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-08 12:52:21', NULL),
(9, 17, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '29929', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-08 12:52:21', NULL),
(10, 18, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '22461', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-08 12:52:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_for` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `job_post_id` int(11) DEFAULT NULL,
  `me_id` int(11) DEFAULT NULL,
  `staus` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `text`, `notification_for`, `notification_from`, `created_by`, `job_post_id`, `me_id`, `staus`, `created_at`, `updated_at`) VALUES
(1, 'New job post arrived ', 'Need 100 employe for versatile group ', 'bangladesh-recruiting-agency', '8', 2, 1, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offered_candidates`
--

CREATE TABLE `offered_candidates` (
  `id` int(10) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `job_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `interview_osc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `selected_osc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pre_medical_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_biometric_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_training_id` bigint(20) UNSIGNED DEFAULT NULL,
  `travel_agency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `welfare_center_id` bigint(20) UNSIGNED DEFAULT NULL,
  `candidate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `candidate_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Selected,Post-Processing,Finalized,Visa-Applied,Visa-Approved,Visa-Rejected,Visa-Stamping-Request,Visa-Stamping-Rejected,Visa-Stamping-Approved',
  `active_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employer_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_letter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_assigned` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interview_result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biometric_fee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio_report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_medical_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'New,Pass,Fail',
  `post_training_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'New,Pass,Fail',
  `post_medical_report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_training_report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_fee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `training_fee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_medical_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_training_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `travel_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_journey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flight_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_cost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offered_candidates`
--

INSERT INTO `offered_candidates` (`id`, `candidate_id`, `job_post_id`, `job_category_id`, `created_id`, `interview_osc_id`, `selected_osc_id`, `pre_medical_id`, `post_biometric_id`, `post_training_id`, `travel_agency_id`, `welfare_center_id`, `candidate_name`, `phone_number`, `candidate_email`, `candidate_user_id`, `candidate_password`, `result_status`, `active_status`, `employer_comments`, `offer_letter`, `payment_assigned`, `payment_method`, `interview_result`, `biometric_fee`, `bio_status`, `bio_report`, `pre_medical_status`, `post_training_status`, `post_medical_report`, `post_training_report`, `medical_fee`, `training_fee`, `pre_medical_comments`, `post_training_comments`, `visa_document`, `visa_reason`, `travel_status`, `date_of_journey`, `flight_number`, `ticket_cost`, `ticket_pdf`, `activated_at`, `created_at`, `updated_at`) VALUES
(1, 11, 21, 12, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Micaela Veum IV', '01850030511', 'candidate11@gmail.com', NULL, NULL, 'Recommended', NULL, 'ZoPQURo3PR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'New', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(2, 12, 21, 12, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Ara McDermott III', '01850030512', 'candidate12@gmail.com', NULL, NULL, 'Recommended', NULL, 'y4FCPJuNcC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(3, 13, 21, 12, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Mrs. Marion King', '01850030513', 'candidate13@gmail.com', NULL, NULL, 'Recommended', NULL, '5JMjUcWG3T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(4, 14, 21, 12, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Jakayla Kozey', '01850030514', 'candidate14@gmail.com', NULL, NULL, 'Recommended', NULL, 'aDPCs0kVg1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(5, 15, 21, 12, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Adele Metz', '01850030515', 'candidate15@gmail.com', NULL, NULL, 'Recommended', NULL, 'Ah99rERZ0F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(6, 16, 21, 12, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Mr. Efrain Oberbrunner', '01850030516', 'candidate16@gmail.com', NULL, NULL, 'Recommended', NULL, '117Ltwu8q0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(7, 17, 21, 12, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Zoila Rolfson Sr.', '01850030517', 'candidate17@gmail.com', NULL, NULL, 'Recommended', NULL, '544mi5M6SJ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(8, 18, 21, 12, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Theresa Block II', '01850030518', 'candidate18@gmail.com', NULL, NULL, 'Recommended', NULL, 'oVKvaH9XH6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(9, 19, 21, 12, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Milford Roberts', '01850030519', 'candidate19@gmail.com', NULL, NULL, 'Recommended', NULL, 'y933HFiQDw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_services`
--

CREATE TABLE `payment_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_application` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penalty_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` double(8,2) DEFAULT NULL,
  `delivery_charge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_services`
--

INSERT INTO `payment_services` (`id`, `candidate_id`, `company_id`, `wsc_id`, `service_type`, `cpr`, `comments`, `payment_application`, `service_status`, `penalty_pdf`, `fees`, `delivery_charge`, `delivery_type`, `delivery_to`, `delivery_status`, `created_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 13, 8, 6, 'Demo service 11', '456857', 'Demo Comments', NULL, 'Open', NULL, 127.00, '83', 'Door delivery', 'Banani Dhaka', 'Open', '17', NULL, '2022-03-08 12:52:22', NULL),
(2, 11, 8, 6, 'Demo service 12', '427626', 'Demo Comments', NULL, 'Open', NULL, 117.00, '87', 'Door delivery', 'Banani Dhaka', 'Open', '15', NULL, '2022-03-08 12:52:22', NULL),
(3, 11, 8, 6, 'Demo service 13', '175631', 'Demo Comments', NULL, 'Open', NULL, 203.00, '81', 'Door delivery', 'Banani Dhaka', 'Open', '11', NULL, '2022-03-08 12:52:22', NULL),
(4, 15, 8, 6, 'Demo service 14', '163306', 'Demo Comments', NULL, 'Open', NULL, 149.00, '86', 'Door delivery', 'Banani Dhaka', 'Open', '19', NULL, '2022-03-08 12:52:22', NULL),
(5, 16, 8, 6, 'Demo service 15', '331604', 'Demo Comments', NULL, 'Open', NULL, 239.00, '82', 'Door delivery', 'Banani Dhaka', 'Open', '11', NULL, '2022-03-08 12:52:22', NULL),
(6, 16, 8, 6, 'Demo service 16', '394939', 'Demo Comments', NULL, 'Open', NULL, 108.00, '86', 'Door delivery', 'Banani Dhaka', 'Open', '11', NULL, '2022-03-08 12:52:22', NULL),
(7, 17, 8, 6, 'Demo service 17', '297896', 'Demo Comments', NULL, 'Open', NULL, 190.00, '86', 'Door delivery', 'Banani Dhaka', 'Open', '15', NULL, '2022-03-08 12:52:22', NULL),
(8, 19, 8, 6, 'Demo service 18', '447277', 'Demo Comments', NULL, 'Open', NULL, 266.00, '80', 'Door delivery', 'Banani Dhaka', 'Open', '14', NULL, '2022-03-08 12:52:22', NULL),
(9, 15, 8, 6, 'Demo service 19', '173805', 'Demo Comments', NULL, 'Open', NULL, 265.00, '89', 'Door delivery', 'Banani Dhaka', 'Open', '14', NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registration_certificates`
--

CREATE TABLE `registration_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `candidate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wsc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` double(8,2) DEFAULT NULL,
  `created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration_certificates`
--

INSERT INTO `registration_certificates` (`id`, `company_id`, `candidate_id`, `wsc_id`, `service_type`, `comments`, `service_status`, `delivery_type`, `delivery_charge`, `document`, `delivery_to`, `delivery_status`, `fees`, `created_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 8, 19, 6, 'Demo service 11', 'Demo Comments', 'Paid', 'Door delivery', '134', NULL, 'Bonani Dhaka', '16', 1271.00, 12, NULL, '2022-03-08 12:52:22', NULL),
(2, 8, 17, 6, 'Demo service 12', 'Demo Comments', 'Paid', 'Door delivery', '102', NULL, 'Bonani Dhaka', '12', 1708.00, 15, NULL, '2022-03-08 12:52:22', NULL),
(3, 8, 13, 6, 'Demo service 13', 'Demo Comments', 'Paid', 'Door delivery', '127', NULL, 'Bonani Dhaka', '14', 1282.00, 15, NULL, '2022-03-08 12:52:22', NULL),
(4, 8, 13, 6, 'Demo service 14', 'Demo Comments', 'Paid', 'Door delivery', '183', NULL, 'Bonani Dhaka', '19', 1797.00, 17, NULL, '2022-03-08 12:52:22', NULL),
(5, 8, 18, 6, 'Demo service 15', 'Demo Comments', 'Paid', 'Door delivery', '134', NULL, 'Bonani Dhaka', '19', 1964.00, 18, NULL, '2022-03-08 12:52:22', NULL),
(6, 8, 18, 6, 'Demo service 16', 'Demo Comments', 'Paid', 'Door delivery', '130', NULL, 'Bonani Dhaka', '11', 1264.00, 19, NULL, '2022-03-08 12:52:22', NULL),
(7, 8, 11, 6, 'Demo service 17', 'Demo Comments', 'Paid', 'Door delivery', '114', NULL, 'Bonani Dhaka', '14', 1662.00, 16, NULL, '2022-03-08 12:52:22', NULL),
(8, 8, 19, 6, 'Demo service 18', 'Demo Comments', 'Paid', 'Door delivery', '182', NULL, 'Bonani Dhaka', '11', 1630.00, 14, NULL, '2022-03-08 12:52:22', NULL),
(9, 8, 11, 6, 'Demo service 19', 'Demo Comments', 'Paid', 'Door delivery', '154', NULL, 'Bonani Dhaka', '15', 1774.00, 11, NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `provider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ratings` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `receiver_id`, `provider_id`, `ratings`, `created_at`, `updated_at`) VALUES
(1, 28, 2, 5, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(2, 35, 2, 2, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(3, 28, 2, 3, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(4, 29, 2, 5, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(5, 30, 2, 4, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(6, 31, 2, 3, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(7, 32, 2, 4, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(8, 33, 2, 5, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(9, 34, 2, 3, '2022-03-08 12:52:22', '2022-03-08 12:52:22'),
(10, 36, 2, 4, '2022-03-08 12:52:22', '2022-03-08 12:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Super admin', 'super-admin', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(2, 'Malaysian Employer', 'malaysian-employer', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(3, 'Welfare service center company', 'welfare-service-center-company', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(4, 'Bangladeshi High Commission', 'bangladesh-high-commission', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(5, 'Master One stop service', 'master-one-stop-service', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(6, 'Child One stop service', 'child-one-stop-service', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(7, 'Medical Agency', 'medical-agency', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(8, 'Training Agency', 'training-agency', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(9, 'travel agency', 'travel-agency', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(10, 'Biometric Agency', 'biometric-agency', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(11, 'Bangladesh Recruiting Agency', 'bangladesh-recruiting-agency', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(12, 'Bangladeshi admin', 'bangladeshi-admin', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(13, 'Employer', 'employer', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(14, 'Malaysia Admin', 'malaysia-admin', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(15, 'Malaysia Embassy', 'malaysia-embassy', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(16, 'Candidate', 'candidate', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(17, 'Malaysia Recruiting Agency', 'malaysia-recruiting-agency', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(18, 'Call Center', 'call-center', 'active', '2022-03-08 12:52:18', '2022-03-08 12:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `static_options`
--

CREATE TABLE `static_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_options`
--

INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(1, 'logo', 'uploads/images/logo.png', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(2, 'no_image', 'uploads/images/setting/no-image.png', '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(3, 'user', 'uploads/images/setting/user.png', '2022-03-08 12:52:18', '2022-03-08 12:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `submitted_travel_enquiries`
--

CREATE TABLE `submitted_travel_enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enquiry_id` bigint(20) UNSIGNED NOT NULL,
  `journey_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_tickets` int(11) DEFAULT NULL,
  `submitted_cost` int(11) DEFAULT NULL,
  `travel_agency_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `travel_agency_id` bigint(20) UNSIGNED NOT NULL,
  `submitted_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submitted_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submitted_travel_enquiries`
--

INSERT INTO `submitted_travel_enquiries` (`id`, `enquiry_id`, `journey_date`, `total_tickets`, `submitted_cost`, `travel_agency_comments`, `travel_agency_id`, `submitted_date`, `submitted_status`, `created_at`, `updated_at`) VALUES
(1, 5, '2022-03-10 18:52:22', 2, 20000, 'Demo Comments', 3, '2022-03-08 18:52:22', 'New', NULL, NULL),
(2, 2, '2022-03-10 18:52:22', 2, 20000, 'Demo Comments', 3, '2022-03-08 18:52:22', 'New', NULL, NULL),
(3, 1, '2022-03-10 18:52:22', 2, 20000, 'Demo Comments', 3, '2022-03-08 18:52:22', 'New', NULL, NULL),
(4, 3, '2022-03-10 18:52:22', 2, 20000, 'Demo Comments', 3, '2022-03-08 18:52:22', 'New', NULL, NULL),
(5, 3, '2022-03-10 18:52:22', 2, 20000, 'Demo Comments', 3, '2022-03-08 18:52:22', 'New', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `travel_enquiries`
--

CREATE TABLE `travel_enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `oss_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_point` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_point` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tickets_required` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_journey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oss_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enquiry_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selected_agency_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_enquiries`
--

INSERT INTO `travel_enquiries` (`id`, `oss_id`, `start_point`, `end_point`, `tickets_required`, `date_of_journey`, `end_date`, `oss_comments`, `enquiry_status`, `created_date`, `deleted`, `selected_agency_id`, `created_at`, `updated_at`) VALUES
(1, 11, 'Dhaka Bangladesh', 'Kuala Lumpur, Malaysia', '2', '2022-03-10 18:52:22', '2022-03-15 18:52:22', 'Demo Comment', 'New', '2022-03-08 18:52:22', NULL, NULL, '2022-03-08 12:52:22', NULL),
(2, 11, 'Dhaka Bangladesh', 'Kuala Lumpur, Malaysia', '2', '2022-03-10 18:52:22', '2022-03-15 18:52:22', 'Demo Comment', 'New', '2022-03-08 18:52:22', NULL, NULL, '2022-03-08 12:52:22', NULL),
(3, 11, 'Dhaka Bangladesh', 'Kuala Lumpur, Malaysia', '2', '2022-03-10 18:52:22', '2022-03-15 18:52:22', 'Demo Comment', 'New', '2022-03-08 18:52:22', NULL, NULL, '2022-03-08 12:52:22', NULL),
(4, 11, 'Dhaka Bangladesh', 'Kuala Lumpur, Malaysia', '2', '2022-03-10 18:52:22', '2022-03-15 18:52:22', 'Demo Comment', 'New', '2022-03-08 18:52:22', NULL, NULL, '2022-03-08 12:52:22', NULL),
(5, 11, 'Dhaka Bangladesh', 'Kuala Lumpur, Malaysia', '2', '2022-03-10 18:52:22', '2022-03-15 18:52:22', 'Demo Comment', 'New', '2022-03-08 18:52:22', NULL, NULL, '2022-03-08 12:52:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` enum('New','Pending','Approved','Rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `quata` int(11) DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_register_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document1` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `childosc_id` int(11) DEFAULT NULL,
  `cosc_assigned_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `country_id`, `name`, `email`, `email_verified_at`, `password`, `user_type`, `active_status`, `quata`, `domain`, `company_name`, `company_register_number`, `abbr`, `phone`, `city`, `state`, `address1`, `address2`, `logo`, `document1`, `document2`, `status`, `childosc_id`, `cosc_assigned_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Super admin', 'sa@gmail.com', NULL, '$2y$10$Fsn6VCKQ14pCZWh7E7JCE.PBShVX3ld6EUHBkaRfxN8x5oQ8ZImTG', 'super-admin', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(2, 12, 2, 'Bangladesh admin', 'ba@gmail.com', NULL, '$2y$10$VZdjs6emW8LEdvd6SmBOe.k4AkK7CitVbokhtaIqKyCYIawDoFMpK', 'bangladeshi-admin', 'Approved', NULL, NULL, 'Bangladesh admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(3, 9, 2, 'Travel Agency', 'travel@gmail.com', NULL, '$2y$10$1SP5n6tWs69nokrLs.f3xeVv6o9QsznfWBhAZRKd1QNnggRblhoRe', 'travel-agency', 'Approved', NULL, NULL, 'Travel Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(4, 10, 2, 'Biometric Agency', 'bio@gmail.com', NULL, '$2y$10$Uj8VmYJae9cziG8KKcIkyumCYzpnv1kOt6nmrPA4bPKmjmIyG.Ewq', 'biometric-agency', 'Approved', NULL, NULL, 'Biometric Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(5, 11, 2, '5M International Ltd.', 'bra@gmail.com', NULL, '$2y$10$q1KGlw8zodasq2T122alK.d6pLuErMJGGcOKfavNqUq/6H9AUZAqG', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, '5M International Ltd.', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:18', '2022-03-08 12:52:18'),
(6, 3, 2, 'Welfare sevice centre', 'wsc@gmail.com', NULL, '$2y$10$s.dk66An281fG.EtEVTEHe7izZL3TIR6dMDxH5OaAaVLlvmc43ZMi', 'welfare-service-center-company', 'Approved', NULL, NULL, 'Welfare sevice centre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(7, 5, 2, 'Master One stop service', 'moss@gmail.com', NULL, '$2y$10$Z/L8ypewZYon6YkIJDeW0O2s9S5Czp3LTJpUNQiyoT1.43.Hkd1sW', 'master-one-stop-service', 'Approved', NULL, NULL, 'Master One stop service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(8, 2, 2, 'Malaysian Employer', 'malaysianemployer@gmail.com', NULL, '$2y$10$9oSyY3On.Rz.Z03YsyxCHumj7HiHUmEMzIxjO7yitsIPLBJ8Afry6', 'malaysian-employer', 'Approved', NULL, NULL, 'Malaysian Employer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(9, 4, 2, 'Bangladesh High Commission ', 'bhc@gmail.com', NULL, '$2y$10$jzw7/0VA0BET6lW07dvVU.HCxyuKhEerNuzxRhitL21xk5b38ONhG', 'bangladesh-high-commission', 'Approved', NULL, NULL, 'Bangladesh High Commission ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(10, 14, 2, 'Malaysia Admin', 'malaysiaadmin@gmail.com', NULL, '$2y$10$v8xAo041Y.6aa.ZMgNL9BOdFY7QuZGX/3MzDOlXlNv7YWEXeltTt6', 'malaysia-admin', 'Approved', NULL, NULL, 'Malaysia Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(11, 6, 2, 'Child One Stop Service', 'coss@gmail.com', NULL, '$2y$10$XP4gy916bgDD.bHhCTBJr.zvxOn9ga5DZjzLBRTyO3TdISuN1KiIK', 'child-one-stop-service', 'Approved', NULL, NULL, 'Child One Stop Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(12, 7, 2, 'Medical Agency', 'ma@gmail.com', NULL, '$2y$10$U1ZMX6DxNum32tSIRw3CwOgLWpJFOEvaG7eFmcUBgg6ATcJQ7khKm', 'medical-agency', 'Approved', NULL, NULL, 'Medical Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(13, 8, 2, 'Training Agency', 'ta@gmail.com', NULL, '$2y$10$QSuuVAHQkGI/jdEB7WrihOB4NqdhDVskXD78MsrbNlzSNyCyoVYyO', 'training-agency', 'Approved', NULL, NULL, 'Training Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(14, 15, 2, 'Malaysia Embassy', 'me@gmail.com', NULL, '$2y$10$u8dozsSrWghVydqlz6zALO82Nb3voBaNvKqXcq8EauA8CNAoh93GG', 'malaysia-embassy', 'Approved', NULL, NULL, 'Malaysia Embassy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(15, 16, 2, 'Candidate', 'candidate@gmail.com', NULL, '$2y$10$/MACYXm4mloSMKjanhsnsOFsanlUI4VZYVYO7zjSDyR1hMpsvcyIK', 'candidate', 'Approved', NULL, NULL, 'Candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(16, 17, 2, 'Malaysia Recruiting Agency', 'mra@gmail.com', NULL, '$2y$10$h0etOSUoEN4CEvgZxzaOEemIZHw.4bP72MEsOh5rhfjfD3vwtDvRS', 'malaysia-recruiting-agency', 'Approved', NULL, NULL, 'Malaysia Recruiting Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(17, 11, 18, 'Sonet Recruiting Agency BD', 'srab@gmail.com', NULL, '$2y$10$LJYUBtoYeBoKvpjnBjfoOuCTOEB7eawFzphBFK4BbOSwBA0hOGNsa', '', 'Approved', NULL, 'srab.com', 'Sonet Recruiting Agency BD', '1313164', 'Sonet Recruiting Agency BD', '01487984654987', 'Dhaka', 'Dhaka', 'Dhaka fokirapul', 'Dkaha banglamotor', 'uploads/profile/vogkW72ZyKCZX5D50xjm-1646218057.png', 'uploads/profile/VRlWh9l1mzJVK2GyvZZ0-1646218058.pdf', NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(18, 2, 2, 'Versatlilo London', 'versatlilolondon@gmail.com', NULL, '$2y$10$DYl61GKU.ScbsMPdqcEJtuc1CwGraDtgaxlS35Jz7cCI7FqNRH3aW', 'malaysian-employer', 'Approved', NULL, NULL, 'Versatlilo London', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(19, 2, 2, 'Kamrul Group', 'kamrulgroup@gmail.com', NULL, '$2y$10$jGSZ6dwIpuL.MK5yraD1PuHEq/.tUuVrP8z8R7VYBsYCEeNh4DcCe', 'malaysian-employer', 'Approved', NULL, NULL, 'Kamrul Group', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(20, 2, 2, 'TFP Solutions (Malaysia)', 'tfp-solutions-malaysia@gmail.com', NULL, '$2y$10$yut3x36pc.2IRFYxKV5Q7usgMtBWBS0.CLMJaYTbApeSCHSbxZOGa', 'malaysian-employer', 'Approved', NULL, NULL, 'TFP Solutions (Malaysia)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(21, 2, 2, 'Kamrul Agro Industries Ltd.', 'kamrul-agro@gmail.com', NULL, '$2y$10$HGsByOXgIl8pVYx1P65oDu8gSo5DUQgk1m/.qJGFmFKAj9AXxKGie', 'malaysian-employer', 'Approved', NULL, NULL, 'Kamrul Agro Industries Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(22, 2, 2, 'Kamrul Food Industries Ltd.', 'kamrul-food@gmail.com', NULL, '$2y$10$XZIEk/dNjEpUjFIMiBFqE.U5dZvLYhWYgueBeyVZe8A/mkfPcufcW', 'malaysian-employer', 'Approved', NULL, NULL, 'Kamrul Food Industries Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(23, 2, 2, 'Meastro Soft Ltd.', 'meastro-soft@gmail.com', NULL, '$2y$10$PPAdIhhUhin3oygLcGfpVuByGTrO9SB8jY/iNn1EJ2N72cbFiHul.', 'malaysian-employer', 'Approved', NULL, NULL, 'Meastro Soft Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:19', '2022-03-08 12:52:19'),
(24, 2, 2, 'Maestro Crown College', 'maestro-crown-college@gmail.com', NULL, '$2y$10$r/dkhUfoz0GigfxQtNuIteLtRQTf7KCgyBRtKgOWFji1/.ilXbOgW', 'malaysian-employer', 'Approved', NULL, NULL, 'Maestro Crown College', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(25, 2, 2, 'Tap and Pay WLL.Bahrain', 'tap-and-pay@gmail.com', NULL, '$2y$10$OWvo8glMAGJ9.ciNLxqILu9SGvx85i3zl9imkYn/lv6YLJUi74nre', 'malaysian-employer', 'Approved', NULL, NULL, 'Tap and Pay WLL.Bahrain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(26, 2, 2, 'DRB-Hicom Berhad.', 'drb-hicom-berhad@gmail.com', NULL, '$2y$10$iW28uBLAgqfP.G1IYDuX6.ld7EL4uyFdyUoSrGCfcJGWn.7QeyGK6', 'malaysian-employer', 'Approved', NULL, NULL, 'DRB-Hicom Berhad.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(27, 2, 2, 'Honda Motor Co.', 'honda-motor-co.@gmail.com', NULL, '$2y$10$r5aGjt59OrEOwebbfnF1xeFNSNT11mQ5cBomnVGgMeCRE7FYpyTh.', 'malaysian-employer', 'Approved', NULL, NULL, 'Honda Motor Co.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(28, 2, 2, 'A-Plus International', 'a-plus-international@gmail.com', NULL, '$2y$10$mb8iUPefwsnlcQX9DgjK..CpDTDu4k0y2fQsOuUV/K3W24qg10bl6', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'A-Plus International', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(29, 2, 2, 'Eastern Bay Bangladesh', 'Eastern-Bay-Bangladesh@gmail.com', NULL, '$2y$10$.6cWxFNqoI0B76HNB5sODeJTvZ40GAXLKJlGBVMkknQXajNn.cHsa', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Eastern Bay Bangladesh', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(30, 2, 2, 'shohan International', 'simplex-international@gmail.com', NULL, '$2y$10$d7JjxtX3QQMQcyHd8mu6z.Pf2JLpUQRDRlfCJPp8rPiKO9jLNLmKO', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'shohan International', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(31, 2, 2, 'Sarkar Recruiting Agency Ltd.', 'sarkar-recruiting-ggency-ltd.@gmail.com', NULL, '$2y$10$k/CkIlP9Ml7VkMwDFFRxPOpwS4MLcswaxKbeagWoMv8Eop4h7jxe2', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Sarkar Recruiting Agency Ltd.', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(32, 2, 2, 'Golden Arrow Ltd.', 'golden-arrow-ltd@gmail.com', NULL, '$2y$10$nYn/f7WI3ZmSbmtsqOVfWuu6MfXKAzfYTQ02O8xxKDX4noKn9M1Vu', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Golden Arrow Ltd.', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(33, 2, 2, 'Nac International', 'nac-international@gmail.com', NULL, '$2y$10$QKNQvdEnvb36UKz8BKc3H.a0CUC0di2VABOcjcsaNKstA7LKHGy0q', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Nac International', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(34, 2, 2, 'Tribeni International', 'tribeni-international@gmail.com', NULL, '$2y$10$uHPkjwC2gdI6.CUrmWw6rueVKCyw0U7rq1DJTw0msBHWV665qvCKK', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Tribeni International', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(35, 2, 2, '	Binimoy International', 'Binimoyinternational@gmail.com', NULL, '$2y$10$A0brA4ZB5Yq5ZxiXITW9f.LTOakstvJsnFRmpF4cORifgBbonvtA2', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, '	Binimoy International', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(36, 2, 2, 'Orchid View Ltd.', 'orchid-view-ltd@gmail.com', NULL, '$2y$10$.6mPI4jq68AkZkR9oCo3UeophKPPsS/i/MbAwsGyiRck5yesM4kYm', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Orchid View Ltd.', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20'),
(37, 2, 2, 'Kazi International', 'kazi-international@gmail.com', NULL, '$2y$10$B57Xeh8/yx5eGhfaMFejKOChGlcwWacR6wAHXXKhw.eUGVr0VxwSK', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Kazi International', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-08 12:52:20', '2022-03-08 12:52:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activated_candidates`
--
ALTER TABLE `activated_candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adr_services`
--
ALTER TABLE `adr_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amnesty_services`
--
ALTER TABLE `amnesty_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applied_jobs`
--
ALTER TABLE `applied_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attestation_certificates`
--
ALTER TABLE `attestation_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awareness_events`
--
ALTER TABLE `awareness_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b_r_a_interests`
--
ALTER TABLE `b_r_a_interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `change_employer_services`
--
ALTER TABLE `change_employer_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `change_visa_services`
--
ALTER TABLE `change_visa_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charity_services`
--
ALTER TABLE `charity_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_country_name_unique` (`country_name`),
  ADD UNIQUE KEY `countries_country_code_unique` (`country_code`);

--
-- Indexes for table `deadbody_transfers`
--
ALTER TABLE `deadbody_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_categories`
--
ALTER TABLE `event_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extension_passport_services`
--
ALTER TABLE `extension_passport_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance_services`
--
ALTER TABLE `insurance_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issuance_certificates`
--
ALTER TABLE `issuance_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jail_and_deportations`
--
ALTER TABLE `jail_and_deportations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_distribute_in_b_r_a_s`
--
ALTER TABLE `job_distribute_in_b_r_a_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legal_aid_services`
--
ALTER TABLE `legal_aid_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lost_passport_services`
--
ALTER TABLE `lost_passport_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_compensation`
--
ALTER TABLE `medical_compensation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meet_and_greets`
--
ALTER TABLE `meet_and_greets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_passport_services`
--
ALTER TABLE `new_passport_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offered_candidates`
--
ALTER TABLE `offered_candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_services`
--
ALTER TABLE `payment_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration_certificates`
--
ALTER TABLE `registration_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `static_options`
--
ALTER TABLE `static_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submitted_travel_enquiries`
--
ALTER TABLE `submitted_travel_enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_enquiries`
--
ALTER TABLE `travel_enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activated_candidates`
--
ALTER TABLE `activated_candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adr_services`
--
ALTER TABLE `adr_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `amnesty_services`
--
ALTER TABLE `amnesty_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `applied_jobs`
--
ALTER TABLE `applied_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `attestation_certificates`
--
ALTER TABLE `attestation_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `awareness_events`
--
ALTER TABLE `awareness_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b_r_a_interests`
--
ALTER TABLE `b_r_a_interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=825;

--
-- AUTO_INCREMENT for table `change_employer_services`
--
ALTER TABLE `change_employer_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `change_visa_services`
--
ALTER TABLE `change_visa_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `charity_services`
--
ALTER TABLE `charity_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `deadbody_transfers`
--
ALTER TABLE `deadbody_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `event_categories`
--
ALTER TABLE `event_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `extension_passport_services`
--
ALTER TABLE `extension_passport_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurance_services`
--
ALTER TABLE `insurance_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `issuance_certificates`
--
ALTER TABLE `issuance_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jail_and_deportations`
--
ALTER TABLE `jail_and_deportations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `job_distribute_in_b_r_a_s`
--
ALTER TABLE `job_distribute_in_b_r_a_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_posts`
--
ALTER TABLE `job_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `legal_aid_services`
--
ALTER TABLE `legal_aid_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lost_passport_services`
--
ALTER TABLE `lost_passport_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medical_compensation`
--
ALTER TABLE `medical_compensation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `meet_and_greets`
--
ALTER TABLE `meet_and_greets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `new_passport_services`
--
ALTER TABLE `new_passport_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offered_candidates`
--
ALTER TABLE `offered_candidates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment_services`
--
ALTER TABLE `payment_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `registration_certificates`
--
ALTER TABLE `registration_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `static_options`
--
ALTER TABLE `static_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `submitted_travel_enquiries`
--
ALTER TABLE `submitted_travel_enquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `travel_enquiries`
--
ALTER TABLE `travel_enquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
