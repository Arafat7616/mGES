-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 07, 2022 at 01:17 PM
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
(1, 11, 8, 6, 'Demo candidate 11', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '19', NULL, '2022-03-07 12:14:40', NULL),
(2, 16, 8, 6, 'Demo candidate 12', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '15', NULL, '2022-03-07 12:14:40', NULL),
(3, 19, 8, 6, 'Demo candidate 13', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '16', NULL, '2022-03-07 12:14:40', NULL),
(4, 19, 8, 6, 'Demo candidate 14', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '16', NULL, '2022-03-07 12:14:40', NULL),
(5, 13, 8, 6, 'Demo candidate 15', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '19', NULL, '2022-03-07 12:14:40', NULL),
(6, 18, 8, 6, 'Demo candidate 16', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '18', NULL, '2022-03-07 12:14:40', NULL),
(7, 17, 8, 6, 'Demo candidate 17', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '16', NULL, '2022-03-07 12:14:40', NULL),
(8, 19, 8, 6, 'Demo candidate 18', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '18', NULL, '2022-03-07 12:14:40', NULL),
(9, 17, 8, 6, 'Demo candidate 19', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '18', NULL, '2022-03-07 12:14:40', NULL);

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
(1, 14, 8, 6, 'Demo service 11', '304444', NULL, 'Demo Comments', 'Paid', 'Open', '12', 17.00, 'Banani Dhaka', NULL, 'Door delivery', '13', NULL, '2022-03-07 12:14:40', NULL),
(2, 18, 8, 6, 'Demo service 12', '495420', NULL, 'Demo Comments', 'Paid', 'Open', '14', 18.00, 'Banani Dhaka', NULL, 'Door delivery', '12', NULL, '2022-03-07 12:14:40', NULL),
(3, 13, 8, 6, 'Demo service 13', '457723', NULL, 'Demo Comments', 'Paid', 'Open', '13', 14.00, 'Banani Dhaka', NULL, 'Door delivery', '16', NULL, '2022-03-07 12:14:40', NULL),
(4, 11, 8, 6, 'Demo service 14', '125653', NULL, 'Demo Comments', 'Paid', 'Open', '13', 11.00, 'Banani Dhaka', NULL, 'Door delivery', '17', NULL, '2022-03-07 12:14:40', NULL),
(5, 19, 8, 6, 'Demo service 15', '486845', NULL, 'Demo Comments', 'Paid', 'Open', '12', 11.00, 'Banani Dhaka', NULL, 'Door delivery', '16', NULL, '2022-03-07 12:14:40', NULL),
(6, 14, 8, 6, 'Demo service 16', '115456', NULL, 'Demo Comments', 'Paid', 'Open', '14', 19.00, 'Banani Dhaka', NULL, 'Door delivery', '13', NULL, '2022-03-07 12:14:40', NULL),
(7, 17, 8, 6, 'Demo service 17', '193328', NULL, 'Demo Comments', 'Paid', 'Open', '17', 12.00, 'Banani Dhaka', NULL, 'Door delivery', '19', NULL, '2022-03-07 12:14:40', NULL),
(8, 11, 8, 6, 'Demo service 18', '275104', NULL, 'Demo Comments', 'Paid', 'Open', '11', 15.00, 'Banani Dhaka', NULL, 'Door delivery', '18', NULL, '2022-03-07 12:14:40', NULL),
(9, 18, 8, 6, 'Demo service 19', '290826', NULL, 'Demo Comments', 'Paid', 'Open', '14', 11.00, 'Banani Dhaka', NULL, 'Door delivery', '17', NULL, '2022-03-07 12:14:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applied_jobs`
--

CREATE TABLE `applied_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_post_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
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
(1, 11, 6, 3, 7, 6, '39', '37', NULL, 'udPKQn3TWp', '2022-03-07 18:14:36', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 12, 6, 3, 2, 9, '33', '31', NULL, 'eYDJwpMnTV', '2022-03-07 18:14:36', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 13, 6, 3, 6, 1, '34', '32', NULL, '3DgBN02UqH', '2022-03-07 18:14:36', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 14, 6, 3, 10, 6, '32', '30', NULL, 'wJxqomMErW', '2022-03-07 18:14:36', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 15, 6, 3, 1, 9, '35', '33', NULL, '0noVtvvFin', '2022-03-07 18:14:36', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 16, 6, 3, 5, 1, '40', '38', NULL, 'ChC3UzmECv', '2022-03-07 18:14:36', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 17, 6, 3, 6, 4, '27', '25', NULL, 'YOof0JK0X8', '2022-03-07 18:14:36', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 18, 6, 3, 4, 6, '22', '20', NULL, 'c0tuaP2nkO', '2022-03-07 18:14:36', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 19, 6, 3, 10, 9, '40', '38', NULL, 'EyjwzZP3Af', '2022-03-07 18:14:36', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 20, 6, 3, 9, 6, '40', '38', NULL, 'xGD3r6BWtN', '2022-03-07 18:14:36', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 21, 6, 3, 10, 2, '43', '41', 'vc4kMrGwsT', 'vNEblwFXNk', '2022-03-07 18:14:36', 'Approved', 'Bangladesh High Commission ', 39, '2022-03-07 18:14:36', 'RflxEQ1DV6', 7, '6Xlcxqtdm2', NULL, NULL),
(12, 22, 6, 3, 2, 7, '37', '35', 'uFWRK6Clmq', 'NM6nCnIhgA', '2022-03-07 18:14:36', 'Approved', 'Bangladesh High Commission ', 33, '2022-03-07 18:14:36', 'z4IHUqxP4y', 7, 'UloUmtn0wR', NULL, NULL),
(13, 23, 6, 3, 10, 4, '39', '37', 'ZlutXdyKAB', 'XqU7fN1fHC', '2022-03-07 18:14:36', 'Approved', 'Bangladesh High Commission ', 35, '2022-03-07 18:14:36', 'RboKCIrZVz', 7, 'NN2fmerVmm', NULL, NULL),
(14, 24, 6, 3, 3, 1, '46', '44', 'RvOkU48Y6y', '0b56D1XxMe', '2022-03-07 18:14:36', 'Approved', 'Bangladesh High Commission ', 42, '2022-03-07 18:14:36', 'jMBHosDt6o', 7, 'j4zW1Jlwwe', NULL, NULL),
(15, 25, 6, 3, 4, 1, '37', '35', 'NHKVdjqMpI', 'LmU5OMuIii', '2022-03-07 18:14:36', 'Approved', 'Bangladesh High Commission ', 33, '2022-03-07 18:14:36', 'FGAbggmwxl', 7, 'sqSviOGjSm', NULL, NULL),
(16, 26, 6, 3, 6, 6, '42', '40', 'bTzgcTyzre', 'Oej2wUQaWu', '2022-03-07 18:14:36', 'Approved', 'Bangladesh High Commission ', 38, '2022-03-07 18:14:36', 'djG2sCNVvi', 7, 'WHHb8dSFwT', NULL, NULL),
(17, 27, 6, 3, 10, 6, '33', '31', 'lt8qtL75HX', '22qvOn4pS8', '2022-03-07 18:14:36', 'Approved', 'Bangladesh High Commission ', 29, '2022-03-07 18:14:36', 'MTv2f9iG7a', 7, 'v28SqxamCi', NULL, NULL),
(18, 28, 6, 3, 6, 5, '38', '36', '4Y6g7TnQ2T', 'taTcluFrdh', '2022-03-07 18:14:36', 'Approved', 'Bangladesh High Commission ', 34, '2022-03-07 18:14:36', 'MUxIw31S65', 7, 'AiMZflzoUp', NULL, NULL),
(19, 29, 6, 3, 7, 10, '21', '19', 'WyBydsS0qF', 'wuFQbpWu5Y', '2022-03-07 18:14:36', 'Approved', 'Bangladesh High Commission ', 17, '2022-03-07 18:14:36', 'LTcnXIUeeD', 7, 'apppV6MUDa', NULL, NULL),
(20, 30, 6, 3, 1, 7, '23', '21', 'l87XktW1DM', 'ZcInnTs7PD', '2022-03-07 18:14:36', 'Approved', 'Bangladesh High Commission ', 19, '2022-03-07 18:14:36', 'tqYngEY4ti', 7, 'mrKMsw2seM', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attestation_certificates`
--

CREATE TABLE `attestation_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
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
(1, 16, 8, 6, 'Demo service 11', 'Demo Comments', 'Approved', 170, 1343.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 12, '17', NULL, '2022-03-07 12:14:40', NULL),
(2, 16, 8, 6, 'Demo service 12', 'Demo Comments', 'Approved', 129, 1922.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 11, '17', NULL, '2022-03-07 12:14:40', NULL),
(3, 11, 8, 6, 'Demo service 13', 'Demo Comments', 'Approved', 152, 1879.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 12, '13', NULL, '2022-03-07 12:14:40', NULL),
(4, 18, 8, 6, 'Demo service 14', 'Demo Comments', 'Approved', 183, 1722.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 14, '14', NULL, '2022-03-07 12:14:40', NULL),
(5, 17, 8, 6, 'Demo service 15', 'Demo Comments', 'Approved', 124, 1869.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 15, '18', NULL, '2022-03-07 12:14:40', NULL),
(6, 14, 8, 6, 'Demo service 16', 'Demo Comments', 'Approved', 176, 1881.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 18, '15', NULL, '2022-03-07 12:14:40', NULL),
(7, 16, 8, 6, 'Demo service 17', 'Demo Comments', 'Approved', 158, 1884.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 15, '18', NULL, '2022-03-07 12:14:40', NULL),
(8, 17, 8, 6, 'Demo service 18', 'Demo Comments', 'Approved', 125, 1400.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 17, '19', NULL, '2022-03-07 12:14:40', NULL),
(9, 13, 8, 6, 'Demo service 19', 'Demo Comments', 'Approved', 150, 1352.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 12, '14', NULL, '2022-03-07 12:14:40', NULL);

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
(1, 5, 31, 1, NULL, NULL),
(2, 18, 31, 1, NULL, NULL);

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
  `created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pre_medical_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pre_training_id` bigint(20) UNSIGNED DEFAULT NULL,
  `selected_osc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `present_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `candidate_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_medical_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_traning_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_updated_dt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_medical_report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_training_report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_medical_dt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_training_dt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_medical_comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_training_comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_medical_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_training_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approval_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_assigned` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Active',
  `result_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New' COMMENT 'New',
  `permission_status` int(11) NOT NULL DEFAULT 0 COMMENT '1 = single stop center passed, 2 = calling visa approved',
  `sending_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_letter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employer_comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offered_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `role_id`, `job_category_id`, `job_id`, `company_id`, `created_id`, `updated_id`, `pre_medical_id`, `pre_training_id`, `selected_osc_id`, `present_address`, `permanent_address`, `candidate_name`, `candidate_dob`, `candidate_gender`, `passport_number`, `phone_number`, `candidate_email`, `candidate_password`, `country`, `nationality`, `active_status`, `candidate_picture`, `candidate_resume`, `passport`, `pre_medical_certificate`, `pre_traning_certificate`, `created_by`, `updated_by`, `pre_updated_dt`, `pre_medical_report`, `pre_training_report`, `pre_medical_dt`, `pre_training_dt`, `pre_medical_comments`, `pre_training_comments`, `pre_medical_status`, `pre_training_status`, `approval_status`, `payment_assigned`, `status`, `result_status`, `permission_status`, `sending_status`, `offer_letter`, `employer_comments`, `offered_status`, `created_at`, `updated_at`) VALUES
(1, 15, 3, 7, 3, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 0', '2021-30-07', 'male', '80MyR1zvKqw0Fuu2oU', '01856230550', 'candidate0@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', NULL),
(2, 15, 1, 8, 6, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 1', '2021-30-07', 'male', 'BUSxsnqrwohwTshKRs', '01856230551', 'candidate1@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', NULL),
(3, 15, 6, 1, 6, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 2', '2021-30-07', 'male', 'jofsNFpMUK2GOUtpS7', '01856230552', 'candidate2@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', NULL),
(4, 15, 4, 2, 3, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 3', '2021-30-07', 'male', '07V4S6bVZ6dqWqKelg', '01856230553', 'candidate3@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', NULL),
(5, 15, 3, 7, 9, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 4', '2021-30-07', 'male', 'PQIbdBmuKnlO7oNYlc', '01856230554', 'candidate4@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', NULL),
(6, 15, 6, 10, 8, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 5', '2021-30-07', 'male', 'SjTrKj2He0j2eqnCLj', '01856230555', 'candidate5@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', NULL),
(7, 15, 1, 4, 10, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 6', '2021-30-07', 'male', 'mNdUOCgCrL3wctamOC', '01856230556', 'candidate6@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', NULL),
(8, 15, 6, 9, 6, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 7', '2021-30-07', 'male', 'JhfAIWMJU1HpckHGzV', '01856230557', 'candidate7@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', NULL),
(9, 15, 5, 8, 7, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 8', '2021-30-07', 'male', 'TTa2kNka0bEGYDEIVZ', '01856230558', 'candidate8@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', NULL),
(10, 15, 1, 5, 4, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 9', '2021-30-07', 'male', 'tdutRS8GLs7GTg8wbB', '01856230559', 'candidate9@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 0, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', NULL),
(11, 15, 8, 21, 6, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 11', '2021-30-07', 'male', 'tAnD1pxeXyRpwl7OH9', '01850030511', 'candidate11@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', NULL),
(12, 15, 8, 21, 10, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 12', '2021-30-07', 'male', 'zpvYvCXeP8e9A3nSxZ', '01850030512', 'candidate12@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', NULL),
(13, 15, 8, 21, 7, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 13', '2021-30-07', 'male', 'qyed0aMrDXOQ1I8dO0', '01850030513', 'candidate13@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', NULL),
(14, 15, 8, 21, 10, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 14', '2021-30-07', 'male', 'BT0Euqz0t7izfQvVIZ', '01850030514', 'candidate14@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', NULL),
(15, 15, 8, 21, 2, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 15', '2021-30-07', 'male', 'HCBZ1bubwIHeCNKGiG', '01850030515', 'candidate15@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', NULL),
(16, 15, 8, 21, 7, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 16', '2021-30-07', 'male', 'IdhQNdbp062WN3fJ3e', '01850030516', 'candidate16@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', NULL),
(17, 15, 8, 21, 7, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 17', '2021-30-07', 'male', 'fJpcxd713Udz8U58KN', '01850030517', 'candidate17@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', NULL),
(18, 15, 8, 21, 5, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 18', '2021-30-07', 'male', 'peqzopbD4aSCYrjZu3', '01850030518', 'candidate18@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', NULL),
(19, 15, 8, 21, 6, 3, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'bahrain', 'Mr. candidate 19', '2021-30-07', 'male', 'rjdKNYecGwzUwh6WCy', '01850030519', 'candidate19@gmail.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', 0, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', NULL),
(20, 15, 8, 8, 5, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Jack Leuschke DDS', '1996-12-01 16:52:02', 'female', 'L8E08PSjdzWCcVDCb4', '+1-323-327-4345', 'yundt.rae@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(21, 15, 8, 18, 4, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Llewellyn Runolfsdottir', '1999-05-19 11:53:53', 'male', '6dUCBV9lBXPsNhu4kr', '863.864.1359', 'daniel.minerva@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(22, 15, 1, 20, 10, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Donnie Lowe', '1990-05-05 00:25:25', 'male', 'R30vEaCx42iK1Gu7Rr', '+19177576645', 'brisa.hoppe@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(23, 15, 13, 21, 9, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lempi Fisher', '1982-08-31 13:01:01', 'female', 'qi8uNRBbmH0AugbCEd', '620-396-1234', 'hane.leonora@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(24, 15, 10, 4, 8, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Wilfred Parisian', '1985-04-30 21:22:32', 'male', 'UltrUBvSpLRRi7ofXG', '440.238.1712', 'ottilie.grady@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(25, 15, 5, 7, 9, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Dante Schmeler I', '1998-04-05 20:02:57', 'male', '4Fcm1aXaUaMcCXuYSI', '1-724-427-1810', 'rhoeger@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(26, 15, 10, 7, 1, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Terrill Morar', '1985-12-19 23:43:49', 'female', 'LlvXcGOeJhFHp8tU6e', '+1 (947) 374-1264', 'burdette.torp@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(27, 15, 3, 15, 2, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Bria Goodwin III', '1984-04-26 21:34:21', 'male', 'chZxKpEj4z6BIwA9IA', '(458) 260-4713', 'mandy.lynch@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(28, 15, 6, 14, 7, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dorothea Stark', '2002-01-05 08:25:25', 'female', '5T59xnLduiphgF57S0', '1-231-569-3185', 'kobe.lowe@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(29, 15, 11, 21, 2, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Breana Labadie II', '1989-11-26 03:27:59', 'male', 'gXzONujmCCbA5GTt7a', '1-231-727-9846', 'ortiz.ewald@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(30, 15, 7, 16, 3, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Garrick Dickinson', '1987-08-15 16:59:33', 'male', 'kMUnmzOzYM0V2J05HQ', '636-469-2780', 'ida71@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(31, 15, 13, 3, 2, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Lupe Tillman II', '1982-07-03 01:53:34', 'male', 'kLuHewFBa1TNEArwsN', '+1.860.397.5489', 'deon.dickens@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(32, 15, 12, 9, 4, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Sarai Reilly DVM', '1984-08-14 04:02:13', 'male', '0FFtIt1jGV5c9uI2IP', '+1.901.818.1532', 'vwalker@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(33, 15, 12, 19, 2, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Jaden Ryan', '1990-10-07 07:46:56', 'female', 'IOS3NkTJsfmMwsIoIB', '1-828-575-0060', 'hpredovic@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(34, 15, 3, 24, 8, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lawson Veum I', '1982-07-29 12:10:35', 'female', 'boJInlxLp5bZCouvqz', '220.545.3946', 'lora48@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(35, 15, 5, 12, 1, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Filiberto Batz', '1988-12-29 02:02:23', 'female', 'n9PdCqABsW3ulAvKgG', '+16412464615', 'mcclure.emmanuel@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(36, 15, 7, 12, 4, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Abelardo Cronin', '1992-01-17 10:25:24', 'male', '6dxOV6p1RUnjYmahK7', '1-919-953-4864', 'casimir71@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(37, 15, 11, 22, 1, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Odessa Shields Sr.', '1991-07-02 11:01:44', 'male', 'SmOHSfebuf3ICGi5EZ', '225.606.1363', 'twila79@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(38, 15, 11, 3, 2, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Sherman Weber V', '1999-03-29 17:59:40', 'female', 'jli4jKRtuey3M5eIuU', '361-414-4015', 'sstark@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(39, 15, 11, 1, 6, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jettie Heller MD', '1987-10-02 04:05:51', 'female', 'Aq2hbzQiq6LMr8k5vW', '(470) 902-0784', 'molly.dibbert@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(40, 15, 5, 6, 7, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Christophe Murray', '1991-11-25 04:55:49', 'female', 'uxoL4g5c1PurHhgM4t', '(616) 831-7950', 'wilderman.jerel@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(41, 15, 12, 3, 7, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Phoebe Nader I', '1989-01-09 15:46:00', 'male', 'zGn5ZR4TeFG4vVm4Xe', '+13419371897', 'reagan79@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(42, 15, 4, 4, 7, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Carrie Robel', '2000-09-04 08:05:17', 'male', 'ynxt9IeqfD8feFhBv9', '281.873.4626', 'gerlach.maegan@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(43, 15, 1, 11, 4, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Austin Heaney', '1986-08-23 15:23:25', 'male', 'audO9YrIuQrMRagAmP', '+1.325.675.2818', 'fvonrueden@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(44, 15, 2, 4, 5, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ethan Gusikowski II', '1999-07-27 04:51:56', 'male', 'k0XMVrb97yhlVovGFr', '785-419-9401', 'raynor.jacinthe@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(45, 15, 5, 13, 7, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Esmeralda West', '1993-05-14 00:02:45', 'male', 'fhLy8vEopnDvkemNKB', '+1 (918) 815-4297', 'tressie17@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(46, 15, 3, 17, 7, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Liana Bosco', '1984-11-02 23:32:26', 'male', 'koNbr6TqgQCD5OCx7T', '+1-623-200-3796', 'predovic.amira@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(47, 15, 5, 20, 1, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cristal Murray', '1989-12-03 17:47:54', 'female', 'kDAWB2YqVunWbBusuj', '919.656.5448', 'kframi@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(48, 15, 10, 17, 2, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Jamison Kutch', '1998-07-22 08:57:18', 'male', 'Fsibbl5s9jt6hAMQMq', '478-656-6368', 'ljacobi@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(49, 15, 5, 25, 9, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Virginie Pfannerstill', '1996-12-03 07:40:20', 'female', 'APD7VYfaoe7mMJemJo', '+1 (620) 713-9352', 'ressie03@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(50, 15, 7, 14, 9, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Minerva Osinski I', '1983-08-11 00:19:33', 'male', 'JJEoUC0Twshcf62S68', '1-845-765-3143', 'bertrand.hansen@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(51, 15, 1, 12, 5, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tracy Wyman', '2000-02-22 01:36:38', 'male', 'l0AcyKYvBzORDiwpTX', '(341) 418-8383', 'mjacobi@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(52, 15, 13, 10, 6, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cielo Rath', '1987-02-19 14:29:34', 'male', 'Mv65sGYkdcso1MAPcM', '+1-830-274-3096', 'arturo.hegmann@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(53, 15, 8, 18, 7, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Peyton Auer', '1997-03-04 07:19:41', 'female', 'qxORdxHtGAsqla34vU', '820-230-2373', 'windler.joanne@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(54, 15, 10, 9, 2, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dennis Wintheiser', '1988-09-21 06:11:37', 'female', 'egQ20F4uVMkAP443u8', '+1-254-742-5419', 'ava54@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(55, 15, 8, 12, 2, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Abraham Howell', '1982-06-05 21:14:36', 'male', 'ByIIbznXWE72DJUGag', '534.602.6494', 'wehner.patricia@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(56, 15, 12, 5, 9, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aiyana Ryan', '1988-04-17 10:54:33', 'male', '39bJzcfnLiLmqpErVp', '1-267-616-8047', 'rogahn.luisa@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(57, 15, 2, 4, 3, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tressa Zboncak', '1984-11-10 13:43:51', 'male', 'jFyxIWvpZZgghh90S8', '1-480-566-1870', 'mkshlerin@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(58, 15, 8, 17, 8, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Glennie Walter', '1983-02-11 13:18:41', 'female', '9nE5VR3TwlV8YZGrcr', '+1-562-820-7381', 'moen.cathy@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(59, 15, 7, 22, 1, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Julie Bergstrom DVM', '1987-02-08 03:11:33', 'male', 'o7Qr7e19YrdnkPdoeJ', '+1-484-777-9824', 'shanelle89@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(60, 15, 11, 2, 1, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Matilde Beer', '1984-12-15 04:52:01', 'female', 'l2TsrfKRMBVqkprs8a', '+1-458-828-6879', 'trantow.bette@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(61, 15, 9, 3, 1, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Andreane Batz I', '1989-08-26 20:22:50', 'male', 'M8Zxgyd5bBf7CMIkrg', '1-689-759-8664', 'ekuhn@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(62, 15, 13, 10, 6, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kaley Schaefer DVM', '2001-05-06 23:39:40', 'female', '92FxLeUGNchbjtdB5N', '862.239.7283', 'pgislason@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(63, 15, 12, 25, 2, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ervin Wunsch', '1982-06-26 13:26:33', 'male', '8OWAUivMPuZ9cDhJmn', '480-502-5521', 'jsteuber@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(64, 15, 5, 13, 8, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Myron Bayer II', '1984-05-15 13:16:04', 'female', 'a44ziec4MyQTSMMCk4', '1-262-535-5875', 'erenner@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(65, 15, 1, 1, 10, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Benny Kerluke', '1993-01-26 14:45:02', 'female', 'gCjEwJocjJo9KmTUY9', '480-654-2064', 'lia61@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(66, 15, 8, 20, 6, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marcelo Bahringer', '1989-08-26 09:25:07', 'male', 'uscA2pdqJtnE7K4wRW', '+1.916.805.9169', 'milan.lueilwitz@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(67, 15, 3, 19, 10, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Reina Konopelski III', '1993-11-29 13:52:23', 'male', 'iIdOHXWj2Vu6l9fMib', '1-925-296-8913', 'alvera.mayer@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(68, 15, 9, 11, 9, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nick Langosh', '1998-04-26 11:39:02', 'male', 'UnYXeKXjXezX5kSbHY', '323-228-0083', 'cruickshank.amira@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(69, 15, 1, 7, 2, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Telly Rolfson', '1993-10-03 04:07:54', 'female', 'MHctZjAh8dNQwsttbJ', '+1.484.427.2065', 'aron.ziemann@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(70, 15, 2, 8, 9, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Juvenal Dicki', '1990-06-28 21:53:57', 'male', '5hDeOcXTOSwDTR9amL', '435-594-0139', 'murphy.hettie@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(71, 15, 13, 14, 1, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Boyd Hermiston', '1988-01-08 22:40:13', 'male', '4ZAWxCjiGIeURMDjdc', '+16265531522', 'icie.bednar@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(72, 15, 2, 12, 8, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Oliver Bogisich', '1987-09-28 22:01:54', 'male', 'YliiAcq5wMcaLIeDeV', '575-780-1353', 'jakob64@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(73, 15, 8, 24, 2, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Sherman Cassin PhD', '1986-02-17 02:14:44', 'male', 'WQ1fRvXfLUtpAIjAlC', '520-814-8764', 'vern35@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(74, 15, 10, 4, 5, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cheyanne Feeney', '1995-12-20 12:21:41', 'female', '3oEszvOw9FCssuR4Ib', '+12319425009', 'brekke.amara@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(75, 15, 7, 8, 1, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jamal Brekke', '1987-06-24 20:27:11', 'male', 'QfPVHyC9iPjDIkybwg', '1-754-488-6133', 'brakus.teresa@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(76, 15, 12, 22, 3, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Angela Ebert', '1999-10-12 05:52:42', 'female', 'qrxoZF92BwRsXynO7l', '(413) 224-9375', 'emilia84@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(77, 15, 6, 19, 9, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eriberto Nitzsche', '1986-02-08 02:50:33', 'female', 'lNczVu4w6W8BEId8r7', '1-703-717-5780', 'ethan98@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(78, 15, 3, 8, 7, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Joanne McKenzie', '1995-01-24 12:26:50', 'male', 'kD0WDsSomqG7KR4TBR', '986-819-6709', 'nicolette.wolff@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(79, 15, 11, 18, 6, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Vida Crooks', '1983-12-21 23:08:08', 'male', 'lvslimRykSkyqfaKpg', '541-687-1501', 'jovany.roob@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(80, 15, 4, 21, 1, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Fred Ondricka III', '1983-10-11 01:15:58', 'male', 'r5v0EEJMxc6H49JEkj', '+1 (774) 846-4625', 'denis79@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(81, 15, 11, 18, 5, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Keyon Kutch', '1993-08-24 02:48:35', 'female', 'FTrthTIFhFPImhxvX0', '1-442-214-9874', 'sydnee69@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(82, 15, 13, 19, 4, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Walker Denesik', '1987-07-16 05:30:28', 'female', '9Zmun5nntMLjocNdl5', '216.539.8000', 'kathlyn99@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(83, 15, 10, 1, 5, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Juvenal Dickinson', '1996-03-09 09:07:09', 'male', 'dSz5brQKkdQG8IWiB1', '+1 (803) 590-1046', 'wilkinson.eldridge@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(84, 15, 3, 22, 8, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ramiro Prohaska', '1990-10-21 21:23:25', 'female', 'vQ83JyJqvQKfDZ7LMs', '+17177922681', 'lenny31@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(85, 15, 6, 15, 7, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Margarita Predovic', '2001-02-05 21:58:09', 'female', 'enuFKZzpYJ2hdmFt2b', '559-982-0246', 'nicole.metz@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(86, 15, 10, 15, 1, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Cristian Kiehn II', '1999-11-07 02:16:14', 'male', '3ApjN4L1Tg72q7aRFS', '+1.605.958.8246', 'kshlerin.ally@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(87, 15, 13, 23, 6, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Delbert Morar', '1983-01-28 13:04:40', 'female', 'exLl3dKArwkRNDbpvT', '1-803-505-3139', 'vaughn23@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(88, 15, 7, 9, 9, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Kasandra Kassulke', '1991-09-23 19:03:58', 'female', '2HMtaLFyEuYFJuIYAu', '+1.210.536.7293', 'wunsch.shanel@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(89, 15, 2, 4, 10, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jon Stark', '1988-06-24 21:32:44', 'female', 'ekk08TdCyXkXiFTanI', '319-655-1600', 'glarson@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(90, 15, 4, 17, 6, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Watson Parker', '1997-11-02 03:03:20', 'female', 'PEjzGqz7Mvyx4doeCF', '+1 (870) 541-8183', 'jennifer07@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(91, 15, 4, 2, 1, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Lucious Morissette MD', '1984-12-25 03:27:29', 'male', 'Mh0qwOpaKSa8h2yL7c', '574.872.7542', 'justen.rath@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(92, 15, 6, 25, 9, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Andre Ebert', '1982-12-21 20:58:37', 'female', 'I00yEa7lDSQeEIfdG1', '517-501-1646', 'berge.john@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(93, 15, 13, 3, 6, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Cordell Sporer IV', '2000-06-17 10:29:15', 'male', '4sg5gw4D6nYU6kKQwz', '1-781-617-2972', 'nelle57@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(94, 15, 1, 9, 6, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Jamar Bergnaum', '1990-09-06 01:21:07', 'male', 'qM8HskoqOJp5wi68bI', '+1-831-496-0052', 'vivienne63@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(95, 15, 13, 3, 8, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Haleigh Davis I', '2000-03-23 07:23:52', 'male', 'jGwkilMtQOp72jEV8J', '+18656853688', 'libby.sauer@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(96, 15, 8, 14, 10, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gilda Jacobi', '2000-08-03 14:00:22', 'male', 'OTUn0YGyg7iF5i1ikP', '+1-601-240-7909', 'hailey84@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(97, 15, 8, 10, 2, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Ned Mitchell', '1987-10-30 16:46:35', 'male', 'aTVq2u90K6VkjHLvIn', '1-909-466-6281', 'frami.mitchell@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(98, 15, 2, 22, 9, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ahmad Bosco', '1996-11-13 20:44:54', 'female', 'bZtxgjOIHXfeXX1xnE', '(629) 854-1518', 'louie85@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(99, 15, 13, 4, 4, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Jefferey Lubowitz', '1997-09-12 08:50:09', 'male', 'yDkEGJ55egPp9ep59l', '(636) 212-8229', 'aliyah17@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(100, 15, 3, 14, 7, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Barney Schoen', '1982-04-12 02:51:16', 'female', 'bkBE5JPEZOvci0MEAL', '(616) 298-9114', 'stevie.hamill@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(101, 15, 4, 19, 5, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Georgianna King', '1992-05-13 02:36:18', 'male', 'LTdnFquIjMxAyFbA6B', '872.422.4451', 'adeline.von@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(102, 15, 9, 21, 2, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hollis Kohler', '1990-05-05 11:00:13', 'female', 'W2XwKufMKGIPzo0qZq', '+1 (341) 681-1883', 'vdooley@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(103, 15, 13, 2, 6, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tate Harris', '1992-10-13 07:36:13', 'female', 'o4458rGi2sauPIgeKn', '+1.380.925.5268', 'rogelio48@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(104, 15, 2, 3, 10, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ezra Heathcote', '1992-04-04 06:17:56', 'male', 'g2auMWWtJHvTdeLtEW', '980.450.7146', 'ethel.romaguera@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(105, 15, 4, 3, 8, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Tad Conn DDS', '1996-06-13 23:31:27', 'female', 'uDsSo05XT2U7zuYwZG', '1-669-330-3243', 'stephanie76@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(106, 15, 4, 15, 8, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Odessa Green', '1990-01-31 20:48:37', 'female', 'd7ooDtKALrlDDjctnZ', '239-807-7171', 'adolph.brakus@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(107, 15, 7, 22, 10, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Nathanial Wisoky Jr.', '1996-12-29 08:45:09', 'male', 'RlWzxJxHhAzHIUMvKk', '(302) 786-4167', 'amara.paucek@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(108, 15, 3, 18, 1, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Patience Erdman', '1995-02-10 18:39:12', 'female', 'DYz2krAS82siJKYxIT', '+1 (623) 619-6945', 'cormier.felicita@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(109, 15, 1, 23, 6, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Anjali Schultz', '1982-08-17 18:39:26', 'female', 'sCosxD6wQR5zPwsYl0', '(470) 739-1913', 'kenyatta30@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(110, 15, 2, 21, 1, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jermaine D\'Amore', '1998-09-29 21:24:34', 'male', 'uf20REWGlpJNQftQiC', '+1 (251) 923-6125', 'ernser.jeffery@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(111, 15, 7, 7, 4, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Francesca Barton', '1991-09-06 22:25:14', 'male', 'jjIQcPZwrSmcXI6wDD', '386.816.1856', 'destiney.skiles@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(112, 15, 3, 10, 4, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Norma Daniel III', '1992-03-10 03:57:28', 'male', 'mJHwvWr2l3pS0xdlZw', '1-509-532-3267', 'jaren.dietrich@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(113, 15, 8, 21, 10, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mazie Walker', '1996-12-27 18:05:00', 'female', 'GtLG7YjmCRWOSNLsxz', '1-909-426-2658', 'wstamm@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(114, 15, 9, 7, 5, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jackeline Heaney', '1984-04-10 13:47:09', 'female', 'B0Zl9CBd6gqFd4LAkd', '425-697-4098', 'oadams@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36');
INSERT INTO `candidates` (`id`, `role_id`, `job_category_id`, `job_id`, `company_id`, `created_id`, `updated_id`, `pre_medical_id`, `pre_training_id`, `selected_osc_id`, `present_address`, `permanent_address`, `candidate_name`, `candidate_dob`, `candidate_gender`, `passport_number`, `phone_number`, `candidate_email`, `candidate_password`, `country`, `nationality`, `active_status`, `candidate_picture`, `candidate_resume`, `passport`, `pre_medical_certificate`, `pre_traning_certificate`, `created_by`, `updated_by`, `pre_updated_dt`, `pre_medical_report`, `pre_training_report`, `pre_medical_dt`, `pre_training_dt`, `pre_medical_comments`, `pre_training_comments`, `pre_medical_status`, `pre_training_status`, `approval_status`, `payment_assigned`, `status`, `result_status`, `permission_status`, `sending_status`, `offer_letter`, `employer_comments`, `offered_status`, `created_at`, `updated_at`) VALUES
(115, 15, 3, 14, 3, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Raphaelle Lindgren', '1987-10-02 20:18:41', 'female', 'in67VBg2ZfhmcWesyx', '+1.870.609.3276', 'wehner.frida@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(116, 15, 8, 2, 1, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sienna Leuschke', '1993-06-25 13:05:14', 'female', 'J8HgUmeqCaeATyLpwN', '+1.708.297.5536', 'xlindgren@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(117, 15, 2, 15, 2, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Katelin Hill', '1990-10-04 13:11:36', 'female', 'bLXlgsk24uVTC7xRqL', '(423) 715-6921', 'gladys44@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(118, 15, 3, 6, 7, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ubaldo Hickle', '1998-07-29 09:21:43', 'male', 'O3DDpsRT43NjQ7N1FM', '314-681-7437', 'wnader@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(119, 15, 2, 10, 5, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Casimer Beier DDS', '1984-11-14 13:46:15', 'male', '6lwRNHkasMBiKLfiwl', '+1-507-563-3157', 'rodger04@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(120, 15, 2, 24, 8, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Bernardo Dach', '1988-10-27 14:51:09', 'female', 'V7rCwjfRnW5hDpCE3p', '+1.351.310.7013', 'wbeahan@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(121, 15, 5, 22, 4, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Janice Hoeger', '1991-01-05 07:23:52', 'female', 'rsEH32mQyK7b8GX1P6', '551.583.2686', 'adrain56@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(122, 15, 5, 1, 9, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kylee Shields', '2001-01-18 22:26:52', 'male', 'Z0t2AlmERUct61Q2ez', '(385) 869-2322', 'aubree.murphy@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(123, 15, 13, 4, 1, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sandy Senger', '1985-07-19 05:08:50', 'male', 'oy45iJ1wSRfTq5vrix', '1-906-552-0493', 'deron.kutch@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(124, 15, 1, 12, 8, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Erna Flatley Jr.', '1985-05-02 03:02:49', 'male', 'qOOiKetKWSECtjVu8a', '248.798.1998', 'ghuel@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(125, 15, 11, 4, 6, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eileen Erdman Jr.', '1982-12-18 08:08:28', 'male', '3ARbezFStxnaDMrBuH', '518.606.3535', 'lelah.mraz@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(126, 15, 8, 6, 1, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Trevion Quigley DVM', '1984-08-06 23:53:02', 'male', 'MPSeQ4MaYdjf2pv4Pe', '1-860-891-4708', 'broderick48@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(127, 15, 6, 24, 2, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Josephine Powlowski', '1987-04-25 05:50:55', 'female', '39hp7Mp2aM7ALUMMre', '+1.832.327.0008', 'beulah45@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(128, 15, 2, 2, 4, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Vernon Hartmann', '1989-04-18 06:58:48', 'male', 'tygmVl20GXQDhkjfp0', '(385) 370-9493', 'lewis62@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(129, 15, 4, 13, 10, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Orval Luettgen V', '1996-10-22 03:21:41', 'male', 'JtyjombKSFwWLmwKED', '+1.657.981.4148', 'johnathon47@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(130, 15, 3, 16, 5, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Golden Rowe', '1993-11-25 15:06:29', 'female', 'e7xyyOcaxRhNBSc3V0', '+1-239-365-7852', 'nikolaus.alec@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(131, 15, 1, 2, 10, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Joseph Stoltenberg', '1985-12-31 13:02:45', 'female', '6CUmphiE3TqHC9XMwp', '+1 (931) 462-4915', 'wolff.stanford@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(132, 15, 12, 2, 2, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aiden Witting', '1982-04-24 00:09:47', 'male', 'bW7WH7lGu3dX6fsvAq', '(701) 744-2349', 'jeramy.vandervort@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(133, 15, 10, 1, 9, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. King Rowe', '1996-07-01 16:46:44', 'male', '9ZPCBZ7rLuOLJkeh3H', '541-320-9316', 'greenfelder.horacio@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(134, 15, 7, 5, 4, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alyson Fadel', '1994-09-13 01:59:46', 'female', 'RxNHR0WizXFnm3FTB7', '+1-731-778-9421', 'archibald36@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(135, 15, 1, 10, 1, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Astrid Kovacek', '1990-01-21 21:29:22', 'male', 'CV7evp301YS0IeZztx', '(412) 867-8789', 'tdach@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(136, 15, 4, 17, 1, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Melany Konopelski IV', '1987-09-08 23:01:22', 'female', 'HoFyGQbY9fqifDBM9j', '+1-682-376-2511', 'eichmann.maddison@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(137, 15, 3, 15, 6, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Abigayle Fahey', '1997-09-11 04:13:49', 'male', 'tf4XXvesf5tRMpdWmg', '1-208-543-7104', 'erika44@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(138, 15, 12, 5, 10, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Beth Mertz', '1983-01-04 14:37:05', 'female', 'UFgXBMITfcygYTmJo8', '657.220.3112', 'elakin@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(139, 15, 6, 3, 10, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elza Hettinger', '2000-03-24 11:46:09', 'female', '16pmQ7vzloc4iQlW95', '1-469-773-5713', 'audrey29@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(140, 15, 8, 14, 8, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Judy Mertz', '1985-04-19 02:01:20', 'male', 'OuCDA1aTMWr1Kp5A26', '720.427.0919', 'brionna.williamson@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(141, 15, 6, 9, 5, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cornell Simonis I', '1998-05-27 11:50:33', 'female', 'sdeNP1a0LGrsjxOCO6', '1-458-625-1683', 'miracle10@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(142, 15, 6, 3, 6, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Denis Olson', '1991-07-08 05:27:16', 'male', 'ZdzbCEtPWJRypVMs7B', '1-314-734-3747', 'leilani73@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(143, 15, 8, 10, 2, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Wayne Gerhold', '1983-04-29 14:25:30', 'female', '2FY3xKzrF5GsZV4IbZ', '470-908-1730', 'ihoeger@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(144, 15, 5, 11, 5, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lizeth Mills', '1988-08-15 21:50:26', 'male', 'DKloHbeSY1nWlz0nhj', '(302) 360-8081', 'reagan.jacobson@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(145, 15, 9, 19, 2, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ronny Kertzmann', '1991-05-14 22:19:30', 'male', 'QwxK2UnLCiMpYA2xMQ', '305-281-0020', 'ladarius.nitzsche@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(146, 15, 5, 24, 10, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aliyah Little', '1998-06-11 01:38:06', 'male', 'MokteDlpGgUEFxh0NG', '1-253-494-6245', 'shaniya20@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(147, 15, 7, 11, 8, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Noemy Kshlerin', '1995-07-09 16:45:09', 'male', 'kL5oG4yJVToaU5UPQS', '1-712-865-3241', 'ehuels@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(148, 15, 10, 6, 6, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Petra Maggio I', '1999-12-18 03:34:16', 'female', '0C47gqu0ZiAtXQnG4D', '+1.215.672.1535', 'hoeger.ava@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(149, 15, 7, 25, 6, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rickey Kuphal', '1998-09-24 11:07:07', 'male', 'UGAqUbGpQCk6gRKRSm', '(463) 907-1810', 'lesch.romaine@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(150, 15, 10, 21, 4, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rhett Veum', '1997-01-23 10:33:58', 'female', 's7XPvooIR4meVOaNOv', '865.370.5987', 'hstroman@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(151, 15, 2, 17, 2, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mozelle Friesen', '2000-03-11 22:00:17', 'female', '61u0kW9tanYtA0J1yC', '+1 (860) 579-4382', 'daren80@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(152, 15, 4, 9, 5, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alda Herman', '1997-06-06 07:09:45', 'male', 'eqwGbADw04CKhqlTWa', '+1.754.579.2955', 'ymorissette@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(153, 15, 8, 24, 8, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sarina Champlin', '1983-11-04 06:24:54', 'male', 'NmUj0ui6sJFqGMveUr', '+13514108178', 'dante63@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(154, 15, 2, 19, 3, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Dylan Huel IV', '1993-01-18 06:42:21', 'female', 't5ukZcvqHxVV4CVPrk', '+1 (806) 208-2738', 'cali.rodriguez@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(155, 15, 1, 11, 9, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Connie Purdy', '1982-09-03 22:33:34', 'male', '59egtn4HbwjUeUyqRv', '206.596.5176', 'xleuschke@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(156, 15, 5, 4, 3, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Jewell Schaden', '1982-11-30 14:48:02', 'male', 'XGRgjiwnn8Zuf0v9aR', '616.280.6354', 'turcotte.lizeth@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(157, 15, 13, 9, 2, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Olga Nienow II', '1998-09-21 14:04:40', 'female', 'FlQsg6h4cW87IVjInV', '908-316-7115', 'crussel@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(158, 15, 2, 25, 5, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Aiyana Wunsch', '1988-02-01 21:58:14', 'female', 'q98z4ucy5MczSSLXOS', '1-520-732-8317', 'thaddeus.wuckert@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(159, 15, 7, 4, 6, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Baylee Connelly', '1986-10-29 13:43:39', 'female', 'uJ3NddnEXxgBNfxKQH', '864-626-0623', 'shakira.smith@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(160, 15, 11, 4, 9, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Phyllis Kihn IV', '1996-07-16 20:19:56', 'female', '66i1pFv56pmIRPzGBY', '445-399-0277', 'rveum@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(161, 15, 1, 13, 4, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Adolf Greenholt', '1986-11-25 21:15:13', 'male', '2JQNtqgeRAvhTewwiX', '1-806-346-0992', 'cruickshank.brando@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(162, 15, 4, 6, 9, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mekhi Hilpert III', '1987-11-15 09:11:12', 'female', 'wOayKoKzAx4PPMcTi1', '+1.762.526.1790', 'helena70@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(163, 15, 7, 23, 1, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dario Hessel', '1997-05-19 16:32:49', 'female', '7bY8AiXavyYQ3TYa6M', '256-813-1445', 'stoltenberg.coleman@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(164, 15, 2, 15, 3, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Roel Rosenbaum', '1985-04-15 15:14:46', 'male', 'TgHPIWasQ85zMmWxRg', '443.820.4099', 'paufderhar@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(165, 15, 13, 24, 5, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elyse Shanahan', '1987-09-08 18:55:50', 'female', 'szJhxSt1sM1CcFnJIQ', '(859) 916-3317', 'dtremblay@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(166, 15, 2, 9, 8, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Russell Rosenbaum', '1992-10-11 02:16:28', 'female', 'bnO7DQOBPk71bFUqDG', '458-510-5739', 'brosenbaum@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(167, 15, 10, 17, 10, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dorian Mosciski', '1999-02-06 07:10:55', 'male', 'yBjzWzxX9KOho2tDc7', '+1-763-671-7217', 'ankunding.ludwig@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(168, 15, 6, 18, 6, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mariela Jacobson III', '1998-06-09 18:00:20', 'female', 'GuQ1O9GvjVpbueNPhb', '+1-651-273-0075', 'kilback.katlyn@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(169, 15, 11, 11, 1, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hans Walter', '1989-03-16 23:22:08', 'female', 'FzPLA4scMd7IL3OcoC', '(564) 384-7531', 'karley.stoltenberg@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(170, 15, 1, 1, 9, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Salvador Prohaska', '1996-02-19 17:17:31', 'male', 'zg8wSGB6tlo8VcK7sh', '629-875-2288', 'lamar.howell@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(171, 15, 1, 10, 6, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Samir Morar Jr.', '1994-11-08 09:09:07', 'female', '1106s90StQ0rn6tuLs', '505-821-3084', 'maiya.beahan@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(172, 15, 10, 23, 8, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Isaias Okuneva', '1997-08-09 07:02:12', 'female', 'idmjdhyB4hVPY7j1fM', '(972) 291-5259', 'cassie.windler@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(173, 15, 11, 11, 9, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bryon Runte PhD', '2000-01-12 04:42:01', 'male', '6uOVuW6HsHwygFfHRc', '+18283174884', 'cdietrich@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(174, 15, 7, 3, 5, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Iva Hagenes', '2001-03-13 06:58:12', 'male', 'DadcRODdTXwT1MDEpU', '+1.351.262.0578', 'keagan.dibbert@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(175, 15, 11, 9, 7, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Velva Keebler', '1998-05-05 16:19:02', 'male', 'AAI2qGg1b2gbwBlk0M', '+1.305.602.4925', 'fay60@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(176, 15, 10, 12, 9, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mathilde Pollich', '1983-09-24 19:31:58', 'female', '17frF8I4UZChquBl4U', '(208) 348-7872', 'fyost@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(177, 15, 5, 15, 2, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Blake Beier', '1998-11-05 00:15:25', 'female', 'w7N70AkhtCDFf04AS1', '1-828-504-7487', 'leila40@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(178, 15, 5, 14, 8, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nora Ondricka', '1994-08-13 21:12:10', 'female', 'VjbVZwethfrY0WdwK1', '806.805.8648', 'kaelyn08@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(179, 15, 2, 11, 8, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rocio Monahan', '1994-06-09 10:48:21', 'female', 'eTJMxn8Bq8W9CDhzJ0', '+1.720.747.7680', 'owalsh@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(180, 15, 7, 1, 4, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nick Blick', '1989-09-03 02:27:30', 'male', 'awZQOp9qG9EiJbgQMV', '706.502.9466', 'qdenesik@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(181, 15, 13, 8, 2, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Lelah White', '1997-10-19 09:07:44', 'male', '2LWOBaD097LSb8tm7d', '+1.845.795.7204', 'kaycee.reilly@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(182, 15, 10, 15, 2, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Isaiah Frami', '1998-12-16 09:41:46', 'female', '3KCSUctlGOYmJBzkuS', '(571) 687-4864', 'alda.jacobson@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(183, 15, 5, 19, 7, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rachael Larkin', '2000-03-07 20:41:16', 'male', 'yoIQgYK9wz6TddsrSA', '1-225-520-8424', 'iwest@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(184, 15, 13, 1, 2, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Meghan Lynch', '2001-02-26 12:31:12', 'male', 'LxHx337tkiHw5Ew2aY', '518.490.1003', 'wmorissette@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(185, 15, 2, 7, 5, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ressie Cormier', '1994-07-14 22:51:59', 'female', 'HWBgG01YCULhKhPpk2', '479.579.9663', 'yadira88@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(186, 15, 12, 10, 9, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mara Cassin', '1995-08-01 17:21:59', 'male', 'X9CNXUq5LqlSHhbZvc', '+17377269729', 'payton05@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(187, 15, 7, 21, 9, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elenora Russel', '1991-07-11 15:31:42', 'female', 'ajhPQwY0ersxGbUpQ6', '484-914-2195', 'vkuhn@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(188, 15, 5, 16, 4, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Olin Runolfsdottir', '1983-10-24 20:40:47', 'male', 'ZeALAZp2wcqJsK9Lxu', '1-972-299-2465', 'fadel.derrick@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(189, 15, 4, 24, 7, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Titus Stanton', '1994-02-21 17:55:21', 'female', '0bpPDN2iFBSs5hnlWM', '1-551-920-0801', 'wnader@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(190, 15, 9, 22, 5, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Katelin Collins I', '1984-07-11 23:57:32', 'male', 'ZuRSeNxJTTLPVcLRDz', '830-913-3238', 'oosinski@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(191, 15, 1, 7, 5, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Melba Abbott', '1984-05-11 19:12:53', 'female', 'M9RqpTxzIFV4wwjlrb', '+1 (878) 777-7385', 'hintz.gracie@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(192, 15, 11, 7, 10, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Rosalia Weissnat III', '1998-06-12 01:56:20', 'male', 'zF4JbORshgmQ0rjYyZ', '872.983.2566', 'turcotte.newton@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(193, 15, 4, 5, 1, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aleen Wolff', '1985-09-14 07:10:17', 'male', 'GeRp0vrYhnbGdAO0ig', '1-857-743-5049', 'lamar52@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(194, 15, 4, 1, 5, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Rahsaan Fay III', '2001-12-25 10:44:43', 'male', 'mU3QYxc9EWPGauxlSa', '(712) 475-1164', 'emily12@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(195, 15, 2, 9, 1, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gina Schamberger II', '1994-08-12 18:43:05', 'female', 'S6aM7ym0v4vjkz0h21', '+13306472532', 'effie81@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(196, 15, 8, 9, 5, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Scot Lakin', '1985-04-29 01:06:28', 'male', 'chJWrJRMtkLsIQHm70', '954.765.1099', 'wolff.matteo@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(197, 15, 12, 10, 8, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Jazlyn Rodriguez PhD', '1995-03-14 08:55:02', 'female', 'bMWFOs1bfBHs4yhbGD', '860-798-7117', 'watson40@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(198, 15, 7, 25, 3, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Filomena Rutherford', '1997-01-13 19:39:42', 'male', 'O1zqLU2FGqWP4qTM2F', '757-500-6493', 'brenna69@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(199, 15, 8, 14, 5, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Reid Bode', '1984-06-06 08:05:34', 'male', '5SU0AulEIH5hGgpJKE', '1-737-339-0960', 'nettie38@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(200, 15, 2, 8, 5, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Arvilla Schmidt PhD', '1997-04-25 12:31:38', 'male', 'w6IKKa5xxoTS1zbG27', '605-389-8887', 'matilda57@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(201, 15, 11, 5, 1, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Naomie Hodkiewicz', '1993-12-14 14:35:30', 'female', '04pf6EuawgCDFUWMN7', '810.598.5097', 'klind@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(202, 15, 4, 1, 2, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eliezer Mohr', '1989-11-12 08:07:51', 'female', 'ZCFxAi3h4MSHJ9Fjtx', '724.866.4818', 'gtoy@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(203, 15, 13, 14, 1, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Alanna Weissnat IV', '1983-10-02 22:43:01', 'male', 'MkQ5D1Xq7K08UVGz5i', '234-560-6383', 'dariana90@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(204, 15, 3, 1, 5, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kathryne Towne MD', '2001-02-12 09:50:41', 'female', 'MNsUngamFjS13kYwpd', '+1-570-230-4974', 'alexandrine35@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(205, 15, 6, 10, 3, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Cheyenne Kunze', '1985-04-20 13:04:35', 'female', 'B72A6rYsZjSOn28sou', '678.732.0434', 'vferry@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(206, 15, 1, 4, 7, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mireille Ondricka', '1988-10-26 05:56:44', 'male', 'S08HASHk4PDFgaZXp7', '828.215.7382', 'roxanne.haley@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(207, 15, 1, 13, 5, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alejandra Labadie', '2002-02-01 04:21:54', 'male', 'RibxvRDncaUuPtEdPw', '(346) 639-3295', 'serena.emard@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(208, 15, 4, 8, 4, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Olga Weber', '1991-05-11 05:08:42', 'female', 'dYQc3JtAuukVzBloQk', '+1-301-390-8256', 'sschiller@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(209, 15, 13, 25, 1, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Guido Schuppe PhD', '1993-10-24 02:44:42', 'male', 'ROhjrj61I3911XjRaq', '+1-206-988-4058', 'sharon92@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(210, 15, 1, 12, 10, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lillie Prosacco', '1988-11-01 06:01:09', 'female', 'HTk2YQgj3MySHgaEVb', '1-248-772-7303', 'zhermiston@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(211, 15, 11, 6, 8, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Daryl Tromp', '1998-01-20 11:06:30', 'female', 'wN4dcFqCXShju2fCME', '+14456174356', 'ubosco@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(212, 15, 12, 25, 6, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Giuseppe Bailey', '2000-11-01 13:44:57', 'male', 'PDSaE5AjaT7t9C41nf', '1-262-672-1128', 'bernhard.zoie@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(213, 15, 12, 21, 9, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Blanche Gerlach', '1991-04-22 21:07:13', 'female', 'E1upHj6DSYtEu3QwgE', '(669) 561-2890', 'summer80@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(214, 15, 1, 3, 9, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Wanda Kassulke', '1982-06-16 06:02:06', 'female', 'irP08xbLMpilqDgebG', '+1-561-625-3120', 'meda.gutmann@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(215, 15, 5, 18, 1, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jewel Padberg', '1990-11-12 17:50:08', 'male', 'X7jSt2sRJ061UhTyLH', '+13604473871', 'dorothy.eichmann@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(216, 15, 5, 8, 2, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Loy Champlin', '1986-08-20 14:44:16', 'female', 'YWKnMCy2SK2HOaMdVn', '(779) 559-5525', 'donnie.bahringer@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(217, 15, 7, 5, 7, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Devyn Lang', '1985-08-16 20:07:33', 'female', 'mZJdbHLo3kBlQ0SNK6', '1-283-815-4283', 'ckilback@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(218, 15, 2, 6, 8, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Howard Mertz I', '1996-09-25 05:39:32', 'female', '0O2D4lzNp0cL6U4Ayc', '(440) 912-5624', 'osenger@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(219, 15, 8, 15, 9, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Cydney Hamill', '1992-02-19 01:31:26', 'male', 'xS6sYjFFt3tDGjsi9C', '(234) 221-6485', 'destiney.lehner@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(220, 15, 12, 12, 5, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Chad Kuphal', '1994-03-31 04:23:08', 'male', '0BSb9W0fhMrvUavWji', '252.225.8392', 'pollich.garth@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(221, 15, 8, 4, 9, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Merl Cruickshank', '1982-04-30 07:06:24', 'female', 'YdlpekzpqGD3tvvrdK', '(678) 537-0811', 'louie51@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(222, 15, 3, 2, 2, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eula Cartwright PhD', '1996-07-02 13:08:40', 'male', 'yw5HKRsoVrOGIuV6Dd', '+1.978.959.9595', 'cesar88@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(223, 15, 13, 25, 2, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Calista Mueller', '1989-08-18 10:49:49', 'male', 'CfGmSYCCZTYdvdsoFb', '848-776-5894', 'nkassulke@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(224, 15, 12, 5, 4, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Lucie Kreiger', '1999-10-28 23:12:34', 'female', 'RWnNlcrQnAKNqiZklV', '828-382-9443', 'michaela24@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(225, 15, 8, 14, 8, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Liam Kassulke', '1989-01-12 10:27:56', 'male', 'W7Ru0EsJlG5TuHHTQo', '+17314135944', 'jhermiston@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(226, 15, 13, 25, 1, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Timmy Durgan', '2001-01-26 21:01:43', 'female', 'cARiJCDZwbbtZQNxBo', '214-632-8013', 'sonia91@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37');
INSERT INTO `candidates` (`id`, `role_id`, `job_category_id`, `job_id`, `company_id`, `created_id`, `updated_id`, `pre_medical_id`, `pre_training_id`, `selected_osc_id`, `present_address`, `permanent_address`, `candidate_name`, `candidate_dob`, `candidate_gender`, `passport_number`, `phone_number`, `candidate_email`, `candidate_password`, `country`, `nationality`, `active_status`, `candidate_picture`, `candidate_resume`, `passport`, `pre_medical_certificate`, `pre_traning_certificate`, `created_by`, `updated_by`, `pre_updated_dt`, `pre_medical_report`, `pre_training_report`, `pre_medical_dt`, `pre_training_dt`, `pre_medical_comments`, `pre_training_comments`, `pre_medical_status`, `pre_training_status`, `approval_status`, `payment_assigned`, `status`, `result_status`, `permission_status`, `sending_status`, `offer_letter`, `employer_comments`, `offered_status`, `created_at`, `updated_at`) VALUES
(227, 15, 11, 1, 1, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tremayne Nicolas', '1983-01-26 01:42:30', 'male', 'fMzzbznhDZVfZyVt0r', '1-931-816-3832', 'frieda47@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(228, 15, 5, 8, 9, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Turner Kautzer', '1990-06-14 06:51:10', 'male', 'iitwaPSfFwZWqJGepv', '580.520.1155', 'electa50@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(229, 15, 6, 19, 8, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ruthie Wunsch', '1983-04-26 17:59:38', 'female', 'kEVKC1kTducWcV1nEh', '1-813-412-5581', 'uortiz@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(230, 15, 1, 23, 10, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Emmet Feest', '1987-01-03 09:09:17', 'male', 'oGO8Utjz1BLnCHlte7', '+13088385214', 'xlesch@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(231, 15, 4, 23, 4, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Clay Schaden', '1997-01-06 11:49:21', 'female', 'DMA4Hv4SgMO06ils6K', '+1-812-372-9310', 'gideon71@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(232, 15, 10, 4, 5, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Emile Block', '1988-06-15 02:11:56', 'male', 'XyihPsxN9gT0jwB92H', '678-360-2800', 'akeebler@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(233, 15, 8, 10, 1, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Nathen Kertzmann MD', '2000-03-26 22:44:50', 'male', 'vRFDDiRe5s8df2u9lq', '985-649-4075', 'orin02@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(234, 15, 6, 2, 6, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Isabelle Thompson', '1991-04-13 17:22:27', 'female', 'M5Kb4g1ooR97bxlpEM', '+1 (534) 213-7925', 'hills.jeffry@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(235, 15, 11, 2, 6, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elda Marvin', '1997-11-09 05:41:46', 'male', '5skkguvmmTY2JLNUVs', '+18706419209', 'skiles.jacky@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(236, 15, 11, 5, 10, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Obie Hills', '1995-07-27 11:46:28', 'female', 'PT5TKcFEwRX6bNLRZp', '(814) 670-4449', 'tatyana.connelly@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(237, 15, 11, 6, 8, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rylan Walter DDS', '1988-03-25 06:08:00', 'female', 'kzatv9nUobwWzFsSvX', '1-540-733-7289', 'olakin@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(238, 15, 1, 9, 10, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Roman Bashirian PhD', '1986-03-28 15:32:23', 'female', 'HUMkKjqmitRymF7P8v', '+17547910617', 'qbayer@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(239, 15, 11, 18, 3, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Cale Quitzon', '1992-03-09 02:49:55', 'female', 'UfKzrtl9hEuZApw5xt', '(445) 274-6224', 'yernser@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(240, 15, 2, 23, 2, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Erin Larson DDS', '1988-03-18 02:45:17', 'male', '4QNrCT1O6xTOikeVnS', '551-939-8017', 'deja.hammes@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(241, 15, 3, 6, 1, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Scot Flatley', '1982-04-28 06:33:02', 'female', 'oUtzJg3pEx8E2YXNsV', '+1-361-737-8799', 'rlind@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(242, 15, 10, 21, 5, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aracely Stamm', '2000-02-19 01:46:00', 'female', '16ndLzBfnvI2OE1NM9', '+1-442-482-8744', 'kshlerin.joy@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(243, 15, 13, 4, 2, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Aubree Pacocha Jr.', '1983-05-07 04:32:34', 'female', 'L3kfi3EeBQkCwEEA74', '+1 (912) 631-2686', 'jules76@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(244, 15, 12, 16, 1, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Emerson Maggio', '1987-04-11 05:18:51', 'male', 'qxNBAq93lJC9ZZHLll', '+1-678-473-8934', 'mohr.kyla@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(245, 15, 3, 24, 2, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Angus Conn DVM', '1988-09-07 08:16:58', 'female', 'Ij0lcTZYT1ihbvVMyz', '917.267.3067', 'jhahn@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(246, 15, 12, 5, 6, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lulu Ryan', '1995-12-16 10:44:38', 'male', 'vqhHU2GwXaQOXXnHVG', '1-619-798-0699', 'msawayn@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(247, 15, 4, 18, 4, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Maudie McGlynn', '1991-02-04 18:06:08', 'female', 'qrJUDvrOnZjSDsFw9u', '+1.817.689.7873', 'ardith03@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(248, 15, 8, 8, 4, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rhett Ryan V', '1999-07-20 05:48:12', 'male', 'iRXtom3tYbidLY0WyF', '+1.731.875.0070', 'vicenta71@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(249, 15, 12, 21, 2, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Karolann Prohaska', '2000-12-12 19:49:34', 'male', 'FHEPo1NkjSXlYktvSj', '+1.386.593.7134', 'verlie44@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(250, 15, 13, 10, 5, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hazel Rempel', '1997-12-24 01:34:14', 'female', 'Xqt0yIEYNqbvCkEOdt', '1-541-324-6599', 'harmon54@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(251, 15, 4, 9, 7, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gavin Zulauf', '2000-04-11 12:51:30', 'male', '5jxBqdGYBkY0m6DR1P', '+1-801-909-3356', 'jose.smitham@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(252, 15, 2, 11, 6, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Travon Langosh', '1992-08-26 05:04:13', 'female', 'mbVpKvjFvEiSfj0lbx', '(239) 618-3637', 'hrohan@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(253, 15, 12, 2, 1, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Roberto Will', '1986-09-17 04:44:27', 'male', 'bkng3f1X5seVSwLkvW', '(602) 553-9876', 'jkohler@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(254, 15, 13, 4, 1, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aidan Langworth', '1996-01-21 21:27:03', 'male', 'Fjg5YfGUEwsY91w2Ia', '+1 (970) 943-4802', 'qlynch@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(255, 15, 6, 19, 6, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Amy Hand MD', '1991-10-04 18:48:28', 'male', 'A9RzK1HURujDwuLcpd', '+1-862-539-8527', 'lucinda.mohr@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(256, 15, 11, 13, 6, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Odessa Zboncak PhD', '2000-09-10 09:22:56', 'female', 'VJZ1NgvGvOfYM6SYej', '615-329-8492', 'merl.funk@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(257, 15, 10, 3, 5, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Caroline Witting', '2001-09-28 06:58:32', 'male', 'WKflTfrEABt3qyOrJy', '+1-901-266-1418', 'twintheiser@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(258, 15, 11, 13, 6, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elvie Yundt', '1993-12-19 21:25:52', 'male', 'gPrudg7rogIPiHBJ2E', '430.588.1345', 'marcos.hodkiewicz@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(259, 15, 3, 21, 5, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lizzie Davis', '1982-04-05 02:26:40', 'female', '4oplLmzMktdJHGo5Yi', '(251) 703-0755', 'pablo41@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(260, 15, 10, 21, 1, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tressie Windler', '1998-02-14 21:33:16', 'male', '4cPkQg3NfOIYD2MqlC', '+15709414908', 'barrows.reid@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(261, 15, 3, 1, 8, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Grant O\'Conner', '1996-09-05 07:48:44', 'male', 'yR8NF9tW4pCtrMe9Ci', '1-445-464-2962', 'aron55@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(262, 15, 2, 3, 6, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eleanore Homenick', '1983-07-28 17:51:11', 'female', 'ZRKF3jDaLhYAnyhEgc', '+1-657-562-2890', 'evangeline.bogisich@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(263, 15, 10, 6, 9, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Betsy Gaylord', '1992-08-19 17:58:18', 'male', 'fWkUb6gB1V6Y4Gg0Ua', '+1-216-789-2623', 'orn.travon@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(264, 15, 2, 16, 10, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Garrick Kulas IV', '2002-01-04 07:36:41', 'female', 'LIpBXCKhpydLpO1RNj', '781.747.5919', 'gschuppe@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(265, 15, 7, 16, 4, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lulu Predovic', '1993-02-25 10:49:09', 'male', 'sPvRTgtfr4sUg92Zoc', '657.521.1520', 'erik71@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(266, 15, 1, 3, 8, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Manley Schulist DVM', '2000-09-27 14:19:39', 'male', 'MAC9uw2vynCZnHcgnn', '1-520-405-1793', 'miller.beahan@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(267, 15, 4, 25, 1, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lily Armstrong', '1998-09-18 06:04:25', 'female', 'yvynU3UYkkFzEP2tlO', '608.463.7500', 'erdman.jovanny@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(268, 15, 3, 21, 1, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Clementine Mante', '1994-12-18 08:41:16', 'female', 'XsfpMgPk7sWSSuso3Q', '(762) 398-3726', 'linda66@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(269, 15, 7, 21, 1, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aniya Spinka', '1991-08-14 14:58:15', 'male', 'AIpuPnSdp4dJDHWX5S', '+15414256415', 'yvette46@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(270, 15, 13, 15, 1, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Caleigh Sanford', '1992-10-26 03:55:11', 'male', 'AELTnKjdidwdxSxyLt', '(636) 948-5507', 'zion.ritchie@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(271, 15, 2, 25, 1, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Rodger Marks', '1988-01-16 05:25:11', 'female', 'Gin7AE48uV93rRlETn', '+1-484-461-8763', 'ibatz@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(272, 15, 8, 7, 10, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Darion Satterfield', '1993-08-30 18:35:42', 'male', 'jCf41XQ3QpdeFt6tNa', '+1.650.738.0705', 'dorothy.purdy@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(273, 15, 7, 1, 7, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lenora Larkin IV', '1986-08-08 03:25:11', 'female', 'SybRya6Wt7yvGMkB8E', '586-419-6637', 'ghayes@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(274, 15, 9, 4, 10, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Virgil Carroll', '2001-10-16 20:10:06', 'male', '6vOWf3PjME03XqVrmL', '580-779-7691', 'kiera53@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(275, 15, 8, 20, 10, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Antonetta Block', '1995-11-05 15:09:27', 'male', 'G14MaGon7I1X7EyC2w', '+1-502-743-5604', 'ubeatty@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(276, 15, 11, 19, 8, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Jameson Johnston', '1984-06-28 12:49:16', 'male', 'LdpFnxT9o8ggkR5Phb', '747-400-7413', 'foreilly@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(277, 15, 3, 6, 3, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kathlyn Brakus', '1995-07-31 19:57:14', 'male', 'WhvqDZQQl8tWIHnTjC', '+1-540-899-7866', 'adelbert.mante@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(278, 15, 6, 5, 6, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Wilma Johnston', '1993-09-03 12:10:06', 'male', 'uolvwUQgjBzEdSliNA', '+1 (458) 800-3659', 'darrin78@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(279, 15, 2, 11, 6, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cristian Erdman', '1986-07-24 15:54:57', 'male', 'sSs36TNPv9AXTjQjNW', '972.915.1445', 'hyman.gleichner@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(280, 15, 4, 16, 9, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Onie Gaylord', '1999-08-30 03:16:50', 'male', 'SYEcY895HLx1hKppnu', '(248) 675-0821', 'cecelia88@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(281, 15, 12, 1, 7, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Katelyn Abbott', '1997-03-13 18:01:28', 'male', 'fXkidvVWGbLTNIModw', '+1-986-607-1861', 'leatha72@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(282, 15, 13, 1, 8, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Hertha Kautzer I', '1999-05-25 02:56:31', 'female', 'v5c7pmnNuoKuEFfa4v', '+1 (847) 700-4799', 'zwuckert@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(283, 15, 3, 20, 1, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Drew Hegmann', '1987-12-23 20:31:44', 'female', 'OcoGLjx8fIOSlWzZzH', '(440) 521-9351', 'phuels@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(284, 15, 5, 5, 4, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Anastacio Bode', '1986-07-23 20:19:10', 'male', '6NGHW7TLSg8xfh8HpY', '+1-430-856-7465', 'herzog.orrin@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(285, 15, 4, 20, 3, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jamey Howell DDS', '1996-02-04 09:14:05', 'female', 'kkvEBmRijlVOHPT4VP', '515.804.4101', 'lourdes.oconner@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(286, 15, 9, 20, 5, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Noemie Kessler', '1990-06-20 22:37:23', 'female', 'DTBsbnveyggNOpBogI', '+1 (325) 837-7276', 'demmerich@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(287, 15, 8, 10, 6, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Terry Corwin PhD', '1992-04-21 10:08:42', 'female', 'QS7qFNSU9xAk4Niozg', '1-530-661-8621', 'ostoltenberg@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(288, 15, 10, 1, 7, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jonas Johnston', '1990-04-11 05:16:20', 'female', 'foItSrtnHLLQ3Eq31C', '(580) 616-2744', 'melissa.mcglynn@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(289, 15, 4, 25, 6, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tristin Homenick', '1995-11-06 17:36:17', 'female', '1PP4UrKaIcXa0jDRhT', '+1.283.917.7433', 'trever.hodkiewicz@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(290, 15, 6, 6, 10, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Zelma Treutel I', '1990-09-08 05:25:30', 'female', 'RdrXtvNENB2s6DcgOs', '847-263-1316', 'ashleigh.fahey@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(291, 15, 9, 25, 5, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Katelyn Connelly', '1993-10-28 18:02:19', 'female', 'VmDYY6Klz7cKnXwVpc', '915.244.0594', 'kadin.daugherty@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(292, 15, 3, 20, 4, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Afton Heidenreich', '1992-12-27 06:20:45', 'male', 'CE2LMP4d6md1Tknjwf', '(630) 417-1749', 'kasandra.thiel@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(293, 15, 10, 21, 10, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Jerel Hettinger', '1993-07-16 05:04:18', 'male', 'OybfgMYSVT5TkNAH3e', '+18386783333', 'nhuels@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(294, 15, 8, 5, 3, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Wilber Kuphal', '1989-03-07 06:12:02', 'female', 'oW6OUJhXxjmRsGiapS', '(747) 999-4335', 'julian13@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(295, 15, 11, 5, 2, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Esta Gulgowski', '1991-10-19 11:25:31', 'male', '6Z3IXJJ07bpxz0qPP0', '+1 (530) 473-4243', 'stehr.brendan@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(296, 15, 2, 14, 8, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Arthur Grimes Jr.', '1993-04-27 10:55:05', 'female', 'LiFuaIBuNPxA2TuXf8', '(903) 526-4056', 'franecki.adolfo@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(297, 15, 1, 10, 8, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Edna Crooks', '1993-12-04 07:03:32', 'male', 'k1b12YjheQyV0FEPO4', '(256) 680-0465', 'jaylen.pollich@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(298, 15, 1, 15, 8, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jamar Glover', '1982-11-11 07:33:58', 'female', 'NpUnnjYBOSpzaQpoOm', '+1-210-921-9252', 'luz.deckow@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(299, 15, 12, 23, 9, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Devante Hartmann', '1984-09-14 17:22:50', 'female', 'W6Plq13pm1WMRTNI0g', '+1-425-725-2491', 'mac.berge@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(300, 15, 6, 3, 2, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. August Schuppe', '2000-01-26 17:19:10', 'male', 'K0Ggo3fF2GErgw1QIi', '+1-504-510-2009', 'emiliano83@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(301, 15, 9, 14, 7, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Forest Doyle Sr.', '1989-01-14 17:20:35', 'female', 'qV2yGQTwverDiRw9by', '845-937-6643', 'fgrimes@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(302, 15, 6, 8, 8, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jett Legros I', '1999-06-16 16:47:44', 'male', 'qfZQMAVSGRFL4YC1Lk', '+1 (843) 597-9831', 'virginia64@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(303, 15, 10, 23, 9, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Claud O\'Hara', '1990-12-15 10:42:13', 'female', '6Qc880WyZyhzb3irmf', '(386) 578-5931', 'krolfson@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(304, 15, 13, 6, 10, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Braeden Cassin', '1998-05-02 02:34:01', 'female', 'GjvP2YDjpGDhwVWem4', '+1 (864) 988-7510', 'lockman.brant@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(305, 15, 12, 1, 6, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Brenden Lakin I', '1984-08-06 13:26:53', 'female', 'm3yHBstNvYkAcNJ8gB', '+1-361-820-0039', 'hermann.kasey@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(306, 15, 1, 25, 6, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Estella Tremblay', '1998-01-26 19:03:23', 'male', 'UFKUiiLXzMDUS2lxJQ', '810.574.6327', 'rbernhard@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(307, 15, 1, 19, 7, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Quinten Daniel', '1992-11-27 20:18:00', 'male', 'ENK2hL0gUWjsZiXQAi', '1-339-740-9814', 'korbin.leffler@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(308, 15, 6, 7, 5, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Aaliyah Lubowitz IV', '1989-03-21 13:13:45', 'female', '28s5ibxd6ihI7p8N10', '(817) 443-9429', 'marvin.ethan@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(309, 15, 2, 2, 2, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Velma Okuneva', '1999-01-02 07:58:27', 'male', 'vu8uQdjCK43isg7SAR', '+1-541-400-0910', 'herman.gene@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(310, 15, 5, 7, 2, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Daphne Smitham', '1984-01-26 14:53:29', 'male', 'zwPONfqVYUTpQdHuqv', '+1 (270) 847-0318', 'tkshlerin@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(311, 15, 2, 20, 8, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Louie Johnston Sr.', '1993-06-07 12:05:05', 'female', 'pClDDmz2UobtnGnpeQ', '(805) 417-1716', 'acollins@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(312, 15, 1, 8, 4, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marilyne Abernathy', '1985-12-28 01:02:53', 'female', 'J8bNJYflZK81jdpWjx', '+15158762600', 'zdurgan@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(313, 15, 4, 12, 10, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Brooke Labadie', '2001-04-19 03:51:46', 'female', 'Sc3MGF0ukTohcKySMO', '+1-573-833-2951', 'lhomenick@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(314, 15, 2, 17, 3, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hassan Schmeler', '1992-12-27 03:16:08', 'male', 'TVjgncrChVVtMgINZu', '1-678-343-4061', 'khegmann@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(315, 15, 5, 20, 7, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Lea Lockman DDS', '1993-02-21 13:53:02', 'female', '3A4RoTRgBrqiuaAyYi', '469.783.1094', 'nia.dooley@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(316, 15, 3, 17, 4, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Adrienne Swift', '1999-07-20 19:21:27', 'male', 'PMnC0UjbFvL60vfmkY', '1-765-577-6605', 'augustine.conn@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(317, 15, 7, 6, 6, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Carol O\'Keefe', '1984-06-10 10:05:51', 'female', 'ZyGnlElV68t1ISm6db', '+1 (678) 509-2285', 'vweber@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(318, 15, 8, 23, 7, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Anita Strosin', '1996-01-28 10:03:24', 'male', '4DIRDxGOYPlggA4qu7', '+1-551-386-6694', 'leann51@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(319, 15, 10, 3, 1, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Tremaine Hilpert III', '1991-01-24 09:39:02', 'female', 'WP7gDfKmjxGKzDPYR1', '1-308-551-8622', 'tristian67@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(320, 15, 8, 5, 1, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Isabell Hammes Sr.', '2001-02-09 23:07:03', 'female', 'OCHrAh9s71x3H3et9c', '(239) 769-9895', 'emery36@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(321, 15, 1, 11, 1, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elwyn Abbott', '1989-08-12 03:23:19', 'female', 'aFPwaUqCAsav4PcmLe', '(458) 870-1634', 'xavier.franecki@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(322, 15, 13, 13, 1, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Malinda Crooks', '2001-08-04 05:44:43', 'male', 'IP3BTpAFu4OzQXKApX', '518.374.0585', 'odie.johnston@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(323, 15, 7, 10, 1, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Brittany Bernier', '1983-11-11 16:25:03', 'female', 'kxxJFm363NGSEEH370', '+1 (872) 285-3403', 'becker.abel@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(324, 15, 3, 5, 7, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Haley Trantow', '1989-03-28 06:54:53', 'female', 'KONfjYIqp715Xyyjrs', '760.546.5060', 'guido49@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(325, 15, 4, 24, 6, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Delaney Mohr', '1983-10-21 13:59:39', 'male', 'Siae0tz1SVk8A1PZsQ', '561-987-5505', 'vheller@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(326, 15, 1, 16, 2, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Hugh Kilback MD', '1994-09-16 15:14:01', 'male', 'mUMMz599BkJUHnT3Jc', '+1 (339) 409-5422', 'jeffrey43@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(327, 15, 13, 14, 7, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Juana Paucek DDS', '1988-01-30 17:53:43', 'male', 'gD2vpLDd1a1HCK9k4G', '1-706-219-9743', 'vmuller@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(328, 15, 12, 7, 1, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dena Johnson', '1986-07-05 12:49:01', 'male', 'hzVbdEepCAjDhJxHNq', '240.407.0110', 'shaniya.koch@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(329, 15, 8, 9, 2, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alvera Halvorson', '1996-05-16 01:16:41', 'female', 'gVqkez6t4F5d859DPu', '1-747-589-4825', 'thalvorson@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(330, 15, 1, 13, 7, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elna Leffler', '1994-08-25 12:24:19', 'female', 'f6wuA5wPQEKHWB7Td6', '+1.213.394.6792', 'auer.earlene@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(331, 15, 1, 6, 6, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Madelynn Stroman', '1988-05-02 09:01:53', 'male', 'JmxLNOBskI0VrcjtiN', '+1.406.285.0836', 'runolfsson.corbin@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(332, 15, 9, 19, 5, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Chyna Lebsack', '1992-12-20 23:30:33', 'male', 'my7xyofQrLhXgll7Ps', '971-665-2383', 'margaretta.johns@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(333, 15, 1, 12, 2, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Raheem Bruen', '1990-06-28 23:53:14', 'female', 'B6lUJYSSWutgEKgisn', '+1 (320) 531-2002', 'dasia.corwin@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(334, 15, 12, 5, 6, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Fermin Jaskolski Jr.', '1984-08-23 14:21:26', 'female', 'BY4EKwsprS0iWG4uLn', '743-333-1135', 'von.cathy@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(335, 15, 3, 25, 1, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Abigail Lebsack', '2000-08-19 07:48:01', 'male', 'NoVXF5cCugSaAH7nDI', '801-883-8511', 'samir93@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(336, 15, 7, 9, 9, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Erin Schiller', '1995-03-02 22:54:27', 'female', 'GBbJ51HvrrOAQaUFr9', '267-927-6138', 'sigurd.maggio@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(337, 15, 4, 12, 4, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rocio Rippin', '1994-10-19 01:39:19', 'female', 'CfEQTplQW0rOAMUIad', '+1 (680) 972-7745', 'alanis24@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(338, 15, 6, 24, 3, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nyah Brekke', '1991-06-09 20:31:45', 'female', 'ZcF6kJnD41XYzSZvvB', '+1.680.343.7284', 'macy.labadie@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37');
INSERT INTO `candidates` (`id`, `role_id`, `job_category_id`, `job_id`, `company_id`, `created_id`, `updated_id`, `pre_medical_id`, `pre_training_id`, `selected_osc_id`, `present_address`, `permanent_address`, `candidate_name`, `candidate_dob`, `candidate_gender`, `passport_number`, `phone_number`, `candidate_email`, `candidate_password`, `country`, `nationality`, `active_status`, `candidate_picture`, `candidate_resume`, `passport`, `pre_medical_certificate`, `pre_traning_certificate`, `created_by`, `updated_by`, `pre_updated_dt`, `pre_medical_report`, `pre_training_report`, `pre_medical_dt`, `pre_training_dt`, `pre_medical_comments`, `pre_training_comments`, `pre_medical_status`, `pre_training_status`, `approval_status`, `payment_assigned`, `status`, `result_status`, `permission_status`, `sending_status`, `offer_letter`, `employer_comments`, `offered_status`, `created_at`, `updated_at`) VALUES
(339, 15, 2, 25, 7, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Chanel Kling III', '1986-08-31 20:57:53', 'female', '6VXZgVsvZrX78hs9cY', '+1.423.699.0718', 'gerald.stiedemann@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(340, 15, 13, 9, 8, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Princess Daniel', '1983-05-13 04:32:50', 'male', '6LIZ8oefUruknwDJml', '+1-504-227-7127', 'raven.kulas@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(341, 15, 5, 5, 5, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dandre Quigley DDS', '1987-04-02 19:40:57', 'female', 'bEX6a50FpEuEPwLqB7', '1-938-500-1642', 'rharvey@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(342, 15, 9, 23, 5, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Amy Lind', '1985-10-16 09:32:14', 'female', 'EH0xSooUEJuAMffPNt', '(903) 239-5288', 'lhahn@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(343, 15, 8, 23, 6, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Urban Durgan', '1987-09-28 06:03:26', 'male', 'kkjNMrp5tHFnrVupL4', '1-325-547-2868', 'lucius79@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(344, 15, 13, 6, 3, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Remington Reinger', '1998-02-22 02:24:15', 'female', '5Tho3tz3MyeFgOM1l7', '(720) 235-4819', 'elenora.beahan@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(345, 15, 2, 5, 9, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marisol D\'Amore', '1983-07-07 01:23:16', 'male', '32nnObu7muiYfY37Gn', '+1-626-301-2904', 'xernser@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(346, 15, 1, 2, 4, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Estevan Daniel V', '1995-04-09 02:09:12', 'female', 'RB6jQj5MlgQA7DSzWP', '651.347.3693', 'jaltenwerth@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(347, 15, 3, 16, 7, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kavon Ernser', '1984-08-24 13:34:11', 'female', 'BTuVHF2Pa9qTkeUZlN', '463-244-8049', 'ogreen@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(348, 15, 11, 4, 10, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Thomas Bednar DVM', '1986-08-08 21:15:14', 'female', 'yEBcIWr5jd29w9XUrx', '231.975.6827', 'aimee.bradtke@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(349, 15, 11, 13, 9, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kennedi Lesch', '1991-05-17 03:27:33', 'female', 'ACBVwDJ21FCvRYxar1', '1-843-559-1585', 'schiller.kaycee@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(350, 15, 5, 22, 5, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dagmar Schaden MD', '1998-03-02 16:55:06', 'male', 'cz8xPZfBT9X8QYh2Xy', '+1-352-450-6799', 'miles.hoppe@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(351, 15, 7, 4, 3, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marlen McCullough', '1987-07-09 22:20:05', 'female', 'c0qIoQ5OjNdyN9l6eZ', '+14782866372', 'muriel73@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(352, 15, 10, 17, 2, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Mellie Halvorson Sr.', '1996-06-29 11:43:53', 'male', 'RLRxNAh81PGntAjft1', '+1 (346) 529-0373', 'brando.dibbert@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(353, 15, 5, 6, 5, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Jett Mitchell III', '1995-05-28 22:53:42', 'female', '3QmuKYJTz0tRmE1YkE', '+1 (323) 385-5329', 'ckilback@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(354, 15, 3, 8, 8, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Harold Reynolds', '1996-01-05 11:06:56', 'female', '924YRlhHdyn2Ffzsx7', '352.828.9632', 'cummings.albina@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(355, 15, 12, 14, 8, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Unique Raynor', '1997-03-02 23:17:01', 'male', '5FAiz5elsAPJkSwh5r', '1-475-390-4086', 'betty18@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(356, 15, 9, 24, 4, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Sherman Schumm', '1990-11-07 08:42:37', 'female', 'oKiXUvSGOngOyagjI0', '+1-650-530-3062', 'tgislason@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(357, 15, 7, 10, 10, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alexie McGlynn', '1995-11-25 09:50:31', 'female', 'qjCdJ3UoQJnEoeZYNm', '847-578-8821', 'lehner.mossie@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(358, 15, 11, 17, 1, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Derrick O\'Kon DDS', '1993-07-20 09:29:55', 'male', 'DF83hELWiRdvi1efLt', '+17319704454', 'abbigail.pfeffer@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(359, 15, 2, 23, 3, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Pierce Hammes', '1992-07-27 20:58:00', 'male', '529OeICDGpU6oX8Jnf', '(870) 954-3257', 'konopelski.linnea@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(360, 15, 10, 22, 9, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Ellen Will', '1995-09-16 08:57:35', 'male', '2Pa3SPEmIoQn2KRodz', '937.425.7921', 'parker.marcel@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(361, 15, 5, 11, 4, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hans Rice V', '1991-01-20 13:08:15', 'male', 'SQMSrxuSVT0mSviGuc', '520.251.6141', 'eleanora00@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(362, 15, 10, 9, 6, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Vita Douglas III', '2002-01-24 05:58:44', 'female', 'p48891nUrO2tUl8pe5', '270-930-0269', 'bkutch@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(363, 15, 1, 14, 7, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cydney Feil', '1982-06-27 01:10:15', 'male', '6Kjolw8txNbqrFSEsT', '+1 (678) 692-9010', 'jordyn02@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(364, 15, 4, 9, 5, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Elmer Maggio', '1987-05-08 18:35:13', 'female', '2fNkiDIwJQIYYb1uW9', '541-672-1548', 'callie.wisozk@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(365, 15, 7, 18, 1, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Aurelie Waters II', '1998-11-20 10:16:35', 'male', 'KMKAvPHW1XNT89pAtw', '737.601.3990', 'elvis70@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(366, 15, 8, 19, 7, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Clarissa Kertzmann', '1996-06-26 10:58:45', 'female', 'XHlfhMqiGSyDGttIED', '(458) 865-2582', 'cassandra.halvorson@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(367, 15, 7, 25, 7, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Josefa Wuckert V', '1993-06-19 16:21:12', 'female', 'aE1LuTzQUJNYd00Qs6', '+1-283-926-0170', 'rosa82@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(368, 15, 6, 12, 3, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eliezer Brakus', '1993-03-09 13:18:27', 'male', 'pdkLXUEQoOsFa6uwU4', '(323) 470-8738', 'blanda.dora@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(369, 15, 4, 21, 1, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Chadd Gorczany', '1989-12-18 12:58:48', 'female', 'SuQOB03Dk2UvYMNaqj', '(609) 658-7577', 'jerde.mark@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(370, 15, 8, 14, 4, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Danielle Reilly', '1996-12-12 07:58:29', 'female', 'ZuZTuxNFiKe9qp4Pzy', '364-451-8994', 'molly75@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(371, 15, 12, 13, 3, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Torrey Fahey', '1994-01-30 10:06:19', 'male', 'CyyQHHoSXFlVGbAqdw', '+1.270.869.4241', 'amber.heller@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(372, 15, 12, 3, 9, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Judson Roberts', '1987-02-11 10:25:09', 'female', '1lMuBkNmfm5UkiKnpo', '313.928.4975', 'feest.maybelle@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(373, 15, 9, 24, 3, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jettie Ward', '1993-06-23 15:18:08', 'male', '6uswcoyhWUAzWdZ2Li', '1-302-572-3073', 'antonietta64@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(374, 15, 2, 25, 2, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Trace Gorczany', '1995-12-03 17:24:20', 'male', 'tdGcfJlLImv8UHq9jl', '(725) 662-5011', 'katarina.harvey@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(375, 15, 9, 22, 9, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gino Reynolds', '1983-09-08 22:06:19', 'female', 'QnKCe4ug5coBdF47My', '(559) 682-2991', 'carey41@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(376, 15, 13, 9, 3, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kris Lehner', '2001-10-21 06:18:56', 'female', 'R6lVJr4ay79OIykK3M', '+1.934.561.1428', 'turcotte.triston@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(377, 15, 11, 9, 2, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Abigail Bergstrom', '1997-03-02 11:55:01', 'female', 'ZgPwajcXEstxIarOZq', '+1.561.356.0768', 'satterfield.everett@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(378, 15, 11, 22, 7, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Unique Graham', '1996-05-05 16:22:06', 'male', 'TWa1qK1YuGphg5rOFV', '650.853.3701', 'ward.gabriel@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(379, 15, 8, 14, 5, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mia Ledner', '2001-02-16 09:18:37', 'female', 'vpxdwsAoE8LUoCM2pH', '+15078512815', 'sschuster@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(380, 15, 1, 21, 1, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kiana Thiel', '1987-07-11 11:39:13', 'male', 'E37tsBCerjqSijjZwV', '(831) 886-6110', 'jamir48@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(381, 15, 13, 10, 6, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ryleigh Sanford', '1983-12-30 21:19:16', 'male', 'IjwxeB9tOWKiFBmZjm', '520.580.2062', 'xander17@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(382, 15, 12, 16, 7, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Destiny Fay', '1985-05-14 00:15:56', 'female', 'MsLqoC872DiBFeZ5is', '(510) 562-0943', 'hchristiansen@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(383, 15, 8, 22, 8, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lamar Waters', '1983-11-16 07:23:22', 'male', 'PpIK1dRrokbqeDfHqL', '(757) 732-5082', 'iconn@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(384, 15, 8, 20, 4, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Angela Gleason Jr.', '1985-02-08 07:11:00', 'male', 'lKRaHJlmGBsfK7OsDk', '+15519929302', 'prosacco.christian@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(385, 15, 7, 6, 2, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Friedrich Skiles', '1982-08-26 01:12:57', 'female', 'cuiihTpB0i4YDxWIeX', '+1.281.794.4430', 'ebosco@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(386, 15, 6, 15, 2, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Hazel McCullough', '1984-03-08 11:38:39', 'male', 'rYJgzjwjVclIzHr6CR', '+1 (484) 238-1866', 'vallie35@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(387, 15, 13, 19, 9, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jaida Williamson', '1983-02-15 08:13:52', 'female', 'eTyph0LRHNyFs4fj1W', '(364) 201-9059', 'nayeli.gutkowski@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(388, 15, 8, 19, 9, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Pablo Lesch', '1982-10-04 16:47:17', 'female', 'IJDzCDezXvSTOzafMu', '757-306-6420', 'cory60@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(389, 15, 9, 17, 3, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Andres McKenzie Sr.', '1995-09-06 12:22:00', 'female', 'lCip4KfSdV8j6AP9Qq', '(475) 405-9460', 'matilda08@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(390, 15, 1, 3, 9, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Lurline Blick DDS', '2001-11-09 03:09:50', 'female', '9oc2WZfIdwFING948I', '+1-669-640-4682', 'mcclure.michele@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(391, 15, 7, 25, 6, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Manley Mraz', '1996-08-14 12:00:22', 'female', 'btRUh9Xen2Xunt6QbV', '1-785-989-4955', 'hermiston.khalil@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(392, 15, 12, 25, 6, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Chad Greenfelder', '1986-08-20 19:56:15', 'female', '2GcUEuXG5EkMezdHFH', '+16783803249', 'emilio85@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(393, 15, 4, 22, 10, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Asa Lehner', '1984-03-20 16:09:15', 'female', 'JwTLRnMv1pwtQ6Wyoi', '+1-629-933-1244', 'audrey.gislason@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(394, 15, 5, 12, 10, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sammy Schuppe PhD', '2001-10-04 15:25:38', 'male', 'tgFVHY0C56nRryC6Wg', '+12315329036', 'shaylee64@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(395, 15, 4, 13, 8, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marc Durgan', '2001-09-03 07:38:08', 'male', 'qaWcb2Z84aWLKoi5Ac', '+19516003916', 'retha48@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(396, 15, 2, 14, 9, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Roger Konopelski', '1996-09-26 23:04:46', 'male', 'TWCltMo6nfgTxDgf6U', '325.921.3580', 'vschumm@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(397, 15, 12, 15, 2, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lennie Stanton', '1987-08-26 07:54:09', 'female', 'hqwkpd5qB5puiDRUxt', '1-331-277-7422', 'pbruen@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:37', '2022-03-07 12:14:37'),
(398, 15, 11, 1, 5, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Lula Heidenreich', '1993-08-09 12:37:17', 'male', 'MceWVpz2wv5l28v31X', '+1 (267) 379-4344', 'ebba79@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(399, 15, 8, 2, 2, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cyrus Bailey III', '1998-12-20 05:51:41', 'female', 'DHWqJ9ptspxiWCw8pw', '+16467463782', 'stuart.emmerich@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(400, 15, 4, 22, 9, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Christine Renner', '1983-03-11 21:18:34', 'female', 'KLXiDdDneSIHSoJMNm', '+14356374166', 'broderick.zieme@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(401, 15, 3, 25, 6, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hayley Cummings', '1995-01-23 16:18:54', 'male', 'bDND2gb16WsOLQdRS2', '(769) 413-5431', 'stiedemann.fiona@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(402, 15, 4, 20, 4, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Clovis Barton', '1990-03-18 21:32:00', 'male', '8LpdusUgtkLFvEttFC', '+1 (475) 289-6581', 'enid.grimes@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(403, 15, 1, 8, 5, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gabe McDermott', '1986-06-21 01:30:00', 'male', 'LI26GPKZAS3bLwSxbm', '346-412-2900', 'dane21@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(404, 15, 6, 12, 6, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Elijah Donnelly Sr.', '1996-07-24 06:35:40', 'male', 'f6V51gMw2fkQJrPxxB', '520.615.0041', 'bleffler@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(405, 15, 8, 7, 9, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Catherine Wolff Jr.', '1993-10-28 18:48:19', 'female', 'ofklTEotdZPDoi6APu', '(843) 281-9911', 'effertz.jerod@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(406, 15, 5, 23, 9, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Chelsey Kling DDS', '2002-01-19 08:57:55', 'male', 'JbPTpcGp3tOEHVbOHo', '1-785-894-8046', 'hollie.murphy@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(407, 15, 6, 25, 10, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Jolie Ankunding II', '1983-11-07 10:07:58', 'male', 'oxwPsRao06F6GGUplH', '(986) 724-7733', 'anita.schimmel@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(408, 15, 5, 13, 3, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Fabian Bernhard', '1998-02-02 22:10:52', 'male', 'BRgwrW2GFRHQxvIckO', '515.262.8762', 'aschoen@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(409, 15, 8, 20, 1, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Geovany Wuckert', '1997-01-25 05:58:31', 'female', 'p9Gim0vGDonFmVKlMW', '1-440-519-2216', 'julie31@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(410, 15, 1, 5, 5, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Moshe Shanahan', '2001-10-08 19:35:55', 'male', 'XMYnOeBKBk4ybYDQHN', '(479) 877-8363', 'schaden.sienna@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(411, 15, 8, 5, 1, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Garrett Bahringer PhD', '1995-05-15 01:09:43', 'female', 'mk1IzbLvvF1V0OeVPh', '704-226-5423', 'palma.wisozk@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(412, 15, 6, 24, 4, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Garnet Tromp', '1988-11-04 23:07:53', 'female', '7WqwX4sJlPBTzAIoRc', '620.887.1736', 'forest80@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(413, 15, 6, 10, 5, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Simeon Kilback', '1988-05-14 22:49:59', 'female', 'trVeYU9TDalo2IHeS1', '+18787287130', 'howell.dejah@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(414, 15, 7, 9, 10, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lyda Langworth', '2001-11-13 19:48:15', 'male', 'WMyYXof2ptQwTe4XX3', '1-651-988-3124', 'pkihn@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(415, 15, 12, 5, 5, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ena Haley', '1993-08-29 15:43:36', 'male', 'Ek9k1qEDAqhmot9E3m', '1-661-267-9359', 'rlindgren@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(416, 15, 11, 2, 2, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jessy Fritsch', '1984-06-21 02:53:35', 'male', 'HlkeAU1MGCpq3vWnJ6', '+1-580-270-4437', 'jfay@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(417, 15, 6, 3, 9, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kyler Feil', '1997-01-10 09:54:08', 'male', 'i74NMef0Bj0mZiyU8B', '469.841.7010', 'ddouglas@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(418, 15, 4, 6, 9, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Pascale Witting', '1990-07-04 22:50:49', 'male', '9hdxKyslb0hUZptERn', '(760) 482-4648', 'ivah.rolfson@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(419, 15, 2, 2, 8, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Carroll Herzog', '1999-01-01 21:25:46', 'male', 'JX1YzlGBVEjQeeZYoN', '947.920.7545', 'pouros.milan@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(420, 15, 7, 18, 8, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Mollie Lind', '1984-10-01 05:43:53', 'male', 'lSMjmowz9oXhHFWyIA', '703.453.3853', 'jesse08@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(421, 15, 3, 13, 8, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Dan Graham DDS', '1987-12-24 02:22:27', 'male', 'g4vY1qNZAx7su6fxaB', '(313) 363-7956', 'garrett22@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(422, 15, 7, 18, 7, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gillian Schaden', '1994-12-22 13:20:35', 'male', 'Uc5ydM4Wzes6A0nUac', '+1-689-434-5722', 'liza.gerlach@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(423, 15, 6, 16, 7, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Paula Corkery PhD', '1999-05-29 10:02:35', 'female', 'uTnJk7xyIoiooofg3t', '+16614992493', 'darryl58@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(424, 15, 1, 17, 2, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hazle Pfeffer', '1999-11-18 11:32:25', 'female', 'gpOGRzVdwZMI9djkur', '+1-262-392-4401', 'hferry@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(425, 15, 11, 17, 3, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Margaret Quitzon MD', '1984-08-19 18:56:27', 'female', '26WcJh5M2m3AKbcl2L', '1-848-603-9411', 'runolfsdottir.dixie@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(426, 15, 2, 19, 2, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Layne Huel', '1990-11-07 11:40:33', 'female', 'TOBPAkibxzb7Cpp5Yu', '(580) 820-5313', 'proob@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(427, 15, 13, 23, 6, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aaron O\'Hara IV', '1994-12-09 16:13:55', 'female', '7b39HmshpXc77fltAR', '463-240-2688', 'seamus.friesen@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(428, 15, 8, 25, 3, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bertha Kreiger', '1993-12-27 03:00:30', 'female', 'g9ARU1OMorZLZhCM9L', '1-307-495-3706', 'ecummings@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(429, 15, 11, 25, 2, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jimmie Ward', '1985-11-11 13:41:48', 'male', 'RLX7tPtuz7DCl5y56E', '978.862.2160', 'grayce75@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(430, 15, 8, 21, 2, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dejuan Sipes', '1997-08-19 01:10:54', 'male', 'Olk4IxEOVtPQUAtgzf', '+1-380-990-9835', 'oadams@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(431, 15, 5, 3, 8, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Anabel Skiles', '1983-06-29 08:47:32', 'male', 'SdHh7B8Dkat7EBGK2x', '1-757-268-6741', 'mdietrich@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(432, 15, 3, 8, 8, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Florencio Yost', '1993-01-08 05:15:34', 'male', 'HWPMEdcD2auHpnSMmR', '+12254324761', 'kschmeler@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(433, 15, 9, 22, 8, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Octavia Heathcote', '1991-12-27 20:33:50', 'male', 'gbGDrMuXUaEiNksBK2', '1-315-418-5310', 'beth48@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(434, 15, 11, 8, 3, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rodrick Dickinson', '1990-01-31 09:30:37', 'female', 'ZBYBXiAOYAWibg9jiM', '(571) 786-4414', 'stark.eva@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(435, 15, 13, 12, 10, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Willow Daugherty V', '2001-11-23 11:25:44', 'female', 'pVwSB7fA1YDh0ZJOvo', '+18186125506', 'bertha.cormier@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(436, 15, 1, 5, 3, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nico Baumbach', '2000-05-26 09:51:48', 'female', 'gtVb6HBBlgP6D6WcW7', '270-795-8356', 'johnston.dana@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(437, 15, 9, 25, 4, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Shaniya Pfeffer', '1982-04-28 14:54:14', 'male', 'SVC6UqHW1LrAbdsGv3', '435.677.1318', 'sipes.rylan@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(438, 15, 11, 14, 6, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Peter Schuppe', '1998-05-26 14:01:45', 'female', 'kMsQVIHsFbOKZQjiPG', '773-610-0575', 'hnader@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(439, 15, 10, 20, 7, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Michel Weissnat MD', '2000-06-29 14:43:34', 'male', '8fsvmyeVgPDAhmIXph', '+1.480.742.6309', 'oren.davis@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(440, 15, 5, 20, 6, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gloria Lakin V', '1984-06-15 14:53:52', 'female', 'qd5BKwh9l77Qww4QOG', '+15759075047', 'wbogan@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(441, 15, 12, 21, 10, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kallie Stark', '1995-08-06 08:04:03', 'female', 'Vnnnjo4EtfkHiqLrCv', '325-828-4705', 'francis.walker@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(442, 15, 3, 19, 9, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dawn Frami', '2000-03-27 14:14:52', 'male', 'pv7e5m1uYfvWrZiyTI', '859-549-3995', 'rosa28@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(443, 15, 2, 18, 2, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Clare Bernhard', '1991-07-28 17:32:04', 'female', '3Ht0pqkNXGTwyCfEqH', '(430) 319-4945', 'ohara.maiya@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(444, 15, 2, 23, 2, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aidan Conroy III', '2000-12-24 19:45:47', 'female', '1eAvscdvF5bMil0hqp', '(302) 773-1820', 'winona22@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(445, 15, 1, 10, 6, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Jackson Bosco II', '1991-01-04 09:42:18', 'female', 'VIeUfb9w2XLg647YgN', '1-973-767-7968', 'laila.corwin@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(446, 15, 13, 7, 9, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cordelia Gaylord', '1982-07-30 22:44:55', 'female', 'sSlH5Rq5JuQJJYi5lg', '+1.502.884.6519', 'jakubowski.maye@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(447, 15, 13, 14, 1, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cullen O\'Kon', '1996-01-06 11:57:40', 'female', 'QbmuhuvwC9zTyeP5VW', '908-602-3545', 'nitzsche.katarina@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(448, 15, 13, 1, 5, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alvina West', '1990-10-20 21:30:23', 'male', 'fcVC9aP1iWOP6TcTOD', '(781) 505-5811', 'price.johnathan@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(449, 15, 3, 18, 1, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Zack Cruickshank II', '1985-10-18 14:44:47', 'female', 'CbJaggPdI9TExNaeB8', '+1 (412) 282-5248', 'torrey84@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(450, 15, 2, 18, 4, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lincoln Ryan II', '1992-11-03 20:00:37', 'female', 'Kup0HegnpdwChsPeeI', '571.771.8588', 'willms.lenore@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38');
INSERT INTO `candidates` (`id`, `role_id`, `job_category_id`, `job_id`, `company_id`, `created_id`, `updated_id`, `pre_medical_id`, `pre_training_id`, `selected_osc_id`, `present_address`, `permanent_address`, `candidate_name`, `candidate_dob`, `candidate_gender`, `passport_number`, `phone_number`, `candidate_email`, `candidate_password`, `country`, `nationality`, `active_status`, `candidate_picture`, `candidate_resume`, `passport`, `pre_medical_certificate`, `pre_traning_certificate`, `created_by`, `updated_by`, `pre_updated_dt`, `pre_medical_report`, `pre_training_report`, `pre_medical_dt`, `pre_training_dt`, `pre_medical_comments`, `pre_training_comments`, `pre_medical_status`, `pre_training_status`, `approval_status`, `payment_assigned`, `status`, `result_status`, `permission_status`, `sending_status`, `offer_letter`, `employer_comments`, `offered_status`, `created_at`, `updated_at`) VALUES
(451, 15, 3, 22, 9, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Shania Nader', '1993-08-07 00:27:05', 'male', 'Z7UJNxCJaOYTw4sJOF', '+18592054477', 'elvera90@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(452, 15, 7, 2, 4, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rossie Oberbrunner', '2000-03-31 18:02:41', 'female', 'wjL3pHORNiC7fcDIEv', '951-658-3167', 'mitchel.dietrich@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(453, 15, 2, 25, 8, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Oren Larson Sr.', '1984-01-03 22:35:56', 'female', 'jGN7myNyhlXcNXt5Cy', '(562) 543-9894', 'jalen.kovacek@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(454, 15, 4, 2, 10, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mabelle Beier', '2001-09-07 04:13:35', 'female', 'XXU2RiLf9pViCKX9zU', '+17479716959', 'lwalker@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(455, 15, 11, 6, 4, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lacey Mills', '1989-05-14 04:37:13', 'female', '8NmVoFBu3Q68hLVYSM', '(458) 243-1562', 'rosa.jaskolski@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(456, 15, 8, 3, 2, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Jimmie Balistreri', '1997-03-14 23:27:10', 'male', 'G7E6vqvSBjtexTfSGU', '646-693-5143', 'benny25@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(457, 15, 1, 15, 6, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Joanie Rau Jr.', '1986-10-14 03:32:44', 'male', '9DPUeye92KdZnfJG7j', '1-561-576-4405', 'jayde57@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(458, 15, 5, 7, 5, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alba Hilpert', '1988-10-28 21:26:08', 'female', 'we5QsMI439tHDRRkgB', '463-835-3309', 'mertie67@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(459, 15, 10, 22, 6, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Karelle Runolfsdottir', '1998-07-20 11:11:57', 'male', 'NqJMOlmgw9ExSjmrkO', '870-367-1601', 'deven.ullrich@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(460, 15, 10, 8, 2, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Camryn Howe', '1993-09-17 20:12:15', 'female', '8jnGYWxibGqYpSULmO', '1-213-561-0711', 'dorthy.haag@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(461, 15, 11, 9, 5, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eva Connelly', '1998-02-05 10:51:04', 'male', 'ZGCZOIEP4r6l1WtTL6', '351-745-8626', 'van.boehm@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(462, 15, 5, 11, 8, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jada Graham II', '1990-03-05 22:04:01', 'female', '8Cu78BD8CUe5KRz5VO', '+1 (701) 591-3783', 'ureilly@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(463, 15, 3, 21, 3, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kristin Nitzsche', '1994-04-17 05:43:01', 'female', 'kfbfEeLcNwAcnvb5qW', '+1-364-303-2286', 'danielle72@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(464, 15, 12, 18, 9, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nicolette Price PhD', '1984-08-27 13:48:26', 'male', 'VLsXUX86XNaQByXBQf', '415-674-6241', 'lowe.naomi@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(465, 15, 2, 22, 2, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'August Kshlerin', '1996-04-20 02:54:22', 'female', 'haMTflBOGSjEW5ACYZ', '1-828-932-8982', 'edd20@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(466, 15, 5, 3, 5, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Larry Green', '1985-05-11 14:41:14', 'female', 'x33WsTKlGTx9OT8iZR', '+1-240-597-3652', 'heloise88@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(467, 15, 6, 18, 8, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Itzel Herman', '1989-03-19 18:30:09', 'male', '2NodX7NzeTWuKREqsN', '1-651-694-1539', 'moriah23@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(468, 15, 13, 18, 2, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Marielle Stamm Jr.', '1985-07-12 19:48:07', 'female', 'yy2UlruMp6PjEd3EtR', '+1 (540) 852-2314', 'leonie10@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(469, 15, 8, 4, 7, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Maudie Ebert', '1982-12-24 18:46:18', 'female', 'XDtQvxJsK3xvV5qYwD', '+1.213.632.7250', 'gerard.little@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(470, 15, 2, 12, 10, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sandra Daniel', '2000-04-30 07:27:24', 'male', '7RKUC8smHHFwJ5bkyc', '754-376-4906', 'breanne52@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(471, 15, 13, 11, 9, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Verna Erdman', '2000-01-20 09:15:17', 'male', 'V9NocYt7thKGHtbO25', '(443) 279-9833', 'wellington.blanda@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(472, 15, 12, 24, 1, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Donald King', '1986-10-25 04:49:22', 'male', 'F80AMgLC3nkHJhIjop', '+1-878-437-3223', 'fheathcote@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(473, 15, 6, 25, 7, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Jazmin Macejkovic PhD', '1993-01-07 10:34:17', 'male', '4s97STnfuq3snjEivZ', '1-626-291-4482', 'johnathon94@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(474, 15, 1, 25, 3, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cole Turcotte', '1993-08-21 18:15:22', 'male', 'ZkvKbgxicOfMDZLgpc', '1-678-302-2338', 'rogers88@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(475, 15, 9, 21, 2, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Vincent O\'Keefe', '1999-06-29 22:18:39', 'female', 'FdbmixGEMXTRdb50Dm', '+1 (559) 551-4666', 'sawayn.peggie@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(476, 15, 3, 22, 3, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Khalid Pagac V', '1987-03-23 22:24:34', 'male', 'I8s3Jn9pyNvK9xywhr', '+15094827817', 'mariano94@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(477, 15, 7, 22, 4, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Delphine Kertzmann Sr.', '2000-12-04 00:05:30', 'female', 'SdLVW8B9POc1buaBVS', '1-901-428-6489', 'uhauck@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(478, 15, 11, 8, 7, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alexandra Kuhic', '1991-09-16 10:42:17', 'male', '7i5DggQsMqn2JMe58h', '(385) 372-4985', 'sallie95@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(479, 15, 12, 10, 8, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Luigi Legros', '1989-06-28 07:47:42', 'female', 'etl35cm5YoS2W5a9Il', '1-240-618-0893', 'charlie48@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(480, 15, 7, 6, 6, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kayla Pfeffer', '1983-01-30 16:03:15', 'female', 'WqzapDltVWs8DS8XYn', '+1-458-319-0255', 'zackery.oberbrunner@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(481, 15, 7, 6, 9, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Amie Beer', '1984-07-25 12:07:05', 'male', 'Lt33LfkF0iKC0jLbVt', '715.860.9041', 'jast.stevie@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(482, 15, 7, 19, 4, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Brittany Smith', '2001-02-27 14:05:08', 'female', 'QmwFc40ggTeWd4VzUL', '762.615.9010', 'greenfelder.angus@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(483, 15, 2, 25, 6, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Zachariah Thompson MD', '1985-06-04 03:12:38', 'female', 'EFiW84igUGsGUKEewY', '1-534-678-4766', 'bins.rick@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(484, 15, 2, 3, 5, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kyla Ortiz', '1990-08-15 08:16:34', 'male', 'JHe7q8x5wGIwNvjdbX', '(762) 632-5370', 'beatty.terrill@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(485, 15, 10, 18, 2, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Amiya Cremin IV', '1996-04-29 13:54:44', 'male', 'zAu7lzJKWODTNE76m8', '(717) 351-7243', 'xnikolaus@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(486, 15, 1, 18, 7, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Keeley Ziemann', '1989-12-11 21:10:46', 'female', 'J3XtlrSUTzfYPf1TgB', '678-868-0184', 'brakus.alayna@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(487, 15, 4, 1, 10, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lyla Franecki III', '1984-01-19 17:53:06', 'female', 'jX8pxKWT7EOlP8i8ZN', '332-840-6070', 'ethyl.schimmel@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(488, 15, 4, 8, 5, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Shania Parker DVM', '1994-08-26 21:16:59', 'female', 'fm1uyhl8o0PLU3Rqco', '928.370.2133', 'kwunsch@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(489, 15, 2, 4, 9, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Araceli Weber', '1990-10-31 22:10:04', 'female', 'GEJXrnoOx9A3OceYic', '+1-530-221-9116', 'princess.deckow@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(490, 15, 9, 6, 2, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alayna Botsford', '1996-09-26 19:01:58', 'female', 'ZxYX6BQzUEyeSC0HMb', '662-215-6085', 'bvonrueden@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(491, 15, 7, 19, 5, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Roxanne Turcotte IV', '1989-01-23 06:20:17', 'female', 'UVjrL6RzFnd7ZF7XlJ', '805-667-8079', 'fbradtke@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(492, 15, 10, 3, 10, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hipolito Runolfsdottir', '1985-03-22 21:40:33', 'male', 'AR9fvNzCWhm4kdCGl2', '973-574-3080', 'joanie69@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(493, 15, 5, 21, 3, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Irving Flatley Sr.', '1995-04-01 22:15:19', 'female', 'wwLimX1g3BYzvu9xPy', '(234) 300-8175', 'cshields@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(494, 15, 2, 16, 7, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marion Ward', '1996-04-30 10:15:13', 'female', 'cHs67uEAQJrq13IAZ3', '+18104743962', 'reyes.bednar@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(495, 15, 11, 4, 1, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rubye Marks', '1991-09-22 02:40:28', 'female', '2TiqDARBf6rcGjDHS5', '1-559-685-4199', 'wmccullough@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(496, 15, 4, 5, 7, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lloyd Skiles', '1987-09-20 12:02:39', 'female', 'Gsjc4OUimiMd41TajP', '202.536.1242', 'mertz.bridget@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(497, 15, 2, 14, 7, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Graciela Simonis PhD', '1996-02-28 16:12:18', 'male', 'nofYqio3ySfN9shctb', '(534) 567-9173', 'misael.larson@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(498, 15, 5, 11, 1, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Otis Kling IV', '1996-10-17 22:08:37', 'female', 'u9aXiMF78mmPwcIl8E', '321.323.6100', 'kunze.karine@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(499, 15, 6, 21, 7, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Teresa Eichmann II', '1985-04-24 09:23:01', 'male', 'QjR7Z2jHo21TWuraR1', '+1-785-348-6630', 'christophe17@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(500, 15, 9, 24, 10, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Carolyne Ernser', '1982-04-28 14:42:43', 'male', '9Rmz6hswQzrDO9cKWc', '1-341-861-5693', 'odie.hegmann@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(501, 15, 12, 10, 6, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Rickie Treutel', '1988-07-25 07:21:04', 'male', 'kF5cloS6O13Vlna5me', '(479) 320-7098', 'queen.kessler@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(502, 15, 10, 2, 4, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Stanford Balistreri', '1985-11-18 13:29:12', 'female', 'PldXRZaB7FLmy02cQl', '+1-858-822-7702', 'prince.howell@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(503, 15, 1, 15, 4, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Adah Schumm', '1984-09-05 12:08:31', 'female', '1UtBFEJSwe0xaUBKws', '+1-661-587-7472', 'brianne31@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(504, 15, 9, 9, 3, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eldred Hermiston', '1995-08-04 04:22:46', 'male', 'pyrQzKpUF6EOrErT3v', '+1.781.944.9679', 'lucious46@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(505, 15, 4, 19, 8, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nora Auer MD', '1996-04-08 04:42:02', 'female', 'Pq4RYQLdDrScdflJKC', '+1 (484) 956-2396', 'vrempel@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(506, 15, 6, 12, 10, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jamarcus Jakubowski', '1998-11-07 20:59:16', 'female', 'mULVIxwkxL8ErXmYFP', '+1 (484) 678-4640', 'bharvey@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(507, 15, 11, 4, 4, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Zetta Willms', '2001-03-03 07:30:30', 'female', 'VfhoMOZ4mds7j9GTKN', '253.245.5727', 'jude78@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(508, 15, 3, 24, 5, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Griffin Ondricka', '1995-04-25 20:12:51', 'male', 'TLbw17T9N5WwUXH7mk', '(820) 836-3781', 'cesar53@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(509, 15, 3, 14, 5, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kendall Ferry', '1991-12-05 10:50:26', 'male', 'K4akpBNQOrbDkCMULF', '+1-380-261-4347', 'kunze.ellsworth@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(510, 15, 2, 15, 2, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Raymond Rodriguez', '1988-07-08 18:18:51', 'female', 'rLTN68iPmDhCZ4tITF', '(423) 349-9977', 'kpfannerstill@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(511, 15, 3, 10, 7, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Timothy Goldner', '1984-05-21 23:20:25', 'female', '5qy0xxAFovukw5dCRn', '+1-407-231-0464', 'fritsch.reba@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(512, 15, 8, 18, 6, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eden Bartoletti', '1996-04-29 23:26:24', 'male', 'NdhlV6vYC1MEKTy4g2', '(210) 572-5244', 'zkris@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(513, 15, 8, 23, 1, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Violette Sauer', '1985-12-21 16:46:47', 'male', '3WxTthcU1kOb0fsmhw', '+1-352-335-9268', 'horace.fisher@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(514, 15, 11, 20, 3, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Arnaldo Grady', '1993-04-20 16:14:54', 'female', 'ub1kPycY0jlmTnokz0', '+1-843-403-7890', 'deion57@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(515, 15, 2, 2, 10, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Araceli Beahan I', '1991-03-27 18:04:42', 'female', 'sbfy10dxfcKHQRs5WL', '507-580-8051', 'martine38@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(516, 15, 11, 13, 3, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lloyd Dickens', '2000-03-01 13:52:43', 'male', '5sACsK7bRAGho09siO', '+1.947.314.0796', 'schamberger.dejuan@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(517, 15, 4, 13, 5, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Danyka Monahan', '1992-01-18 00:44:56', 'female', 'ThYaWyMKtMqnOiGODa', '570-267-8780', 'jones.johnny@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(518, 15, 1, 10, 3, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Beatrice Wiegand', '1990-01-28 14:19:33', 'female', 'KPl29hXlPcjNkPjVqW', '417-615-6039', 'evert.swaniawski@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(519, 15, 9, 20, 8, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marvin Hettinger', '1996-10-14 09:01:25', 'male', 'gcd2EpAV3KtxffepkC', '+1.276.418.9977', 'hadley.breitenberg@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(520, 15, 8, 19, 3, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tierra Harris', '1990-12-26 22:46:24', 'female', 'N1dS4BR2ufwM4Kr6Zq', '(352) 217-1420', 'florencio29@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(521, 15, 7, 10, 5, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Carole Hamill', '1998-08-05 13:15:53', 'male', '1272pJRWxVQNbRuynk', '(540) 369-0023', 'santino56@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(522, 15, 13, 18, 6, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Concepcion Olson', '1996-10-21 21:23:16', 'female', 'PZUoTBnrXUWrelrOs5', '760.436.8129', 'windler.fredrick@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(523, 15, 6, 18, 5, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Adriel Reilly III', '1997-11-11 10:16:16', 'female', 'MBhqy3L5INkFgQUC7W', '+1-559-668-7950', 'ryder38@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(524, 15, 1, 19, 4, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Cristina Hane', '1984-11-18 00:48:09', 'female', '67hx8Sivfr3Qnx2VfI', '+14402247953', 'maggie.hudson@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(525, 15, 10, 6, 3, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Bennett Haag', '1990-01-22 14:22:22', 'male', 'B3AnSe2bXSASiRcWif', '251-939-7009', 'rhianna.pfeffer@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(526, 15, 3, 23, 5, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Reese Tillman', '1991-12-06 04:51:58', 'male', 'tcQX4fk0HS9XokQ8oD', '941-275-0345', 'alesch@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(527, 15, 4, 12, 8, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Claudie Gusikowski', '1982-05-29 23:33:35', 'female', 'sJiWBN5e0pg4iptY4J', '908.948.5505', 'kathleen.eichmann@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(528, 15, 2, 14, 9, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rozella McKenzie', '1990-08-12 13:39:46', 'male', '0dMCXzEsflSWe9QEDV', '270-820-5658', 'maria.waelchi@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(529, 15, 6, 8, 5, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Wilmer Frami', '1983-07-14 01:20:17', 'female', 'U3tz8Sa1mfOvOWk1WH', '669.656.6974', 'julio.gerlach@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(530, 15, 3, 18, 5, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Paolo Bednar', '1982-03-20 23:44:15', 'female', 'yVjeBUaoD5ZKsDE4e4', '+16183234764', 'margaret.jast@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(531, 15, 8, 4, 9, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Karina Blanda', '1999-02-23 15:09:02', 'male', 'Lxd5HYCBKDYF2Ny36S', '1-612-951-6835', 'wisoky.retta@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(532, 15, 7, 13, 1, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Grayce Hauck', '1986-07-21 12:55:29', 'male', 'hhunmLxjeeYCtWRp1f', '+1-915-407-9544', 'marie04@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(533, 15, 7, 11, 8, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kiley Wisoky DDS', '1999-03-27 12:25:05', 'male', 'P3CLFChGHAaEDpcY1U', '312.354.6361', 'benton.thompson@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(534, 15, 10, 10, 9, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Katheryn Stroman', '1985-08-08 13:12:45', 'male', 'Hy3qec2TyclHna4hu5', '(820) 569-5230', 'scarlett02@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(535, 15, 2, 14, 9, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Asa Oberbrunner', '1991-12-07 14:02:05', 'male', 'K1dvWGLb8NrgTMno46', '+1-585-383-6473', 'maverick.cronin@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(536, 15, 4, 16, 2, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Omer Wiza MD', '2000-03-10 21:29:00', 'male', 'R0F8mwey4ltz5MMidl', '1-301-512-3098', 'carlotta.goyette@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(537, 15, 13, 4, 8, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Frank Krajcik', '1990-06-08 05:08:41', 'male', 'oHCXhQitq4VLDCMX6R', '+1.937.422.7475', 'greenfelder.lorenza@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(538, 15, 10, 9, 7, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Carlie O\'Connell PhD', '1984-07-05 09:05:53', 'female', 'DXq3ARGdThwcB4roqZ', '+1-650-599-5242', 'dbernier@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(539, 15, 2, 15, 8, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lisandro Rodriguez', '1989-06-26 11:19:21', 'male', '5YfEQLkyHS2IY9NIAr', '+1 (580) 394-3041', 'terry.kane@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(540, 15, 6, 6, 9, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mauricio Pfeffer DDS', '1986-08-26 13:54:00', 'female', 'gl8sZcZuhcZ5sJIGs9', '503.977.8268', 'otha27@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(541, 15, 5, 21, 2, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Madalyn Kutch Jr.', '1995-11-14 02:25:14', 'female', '9xlnVL7HXy7Y3f8eV7', '+13046403156', 'dallas49@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(542, 15, 7, 22, 8, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dariana Bruen', '1995-03-11 23:38:11', 'female', 'ZLmzmE4BAAmgtCnsnE', '972-721-9091', 'lbalistreri@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(543, 15, 12, 7, 4, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Karli Kreiger', '1997-12-30 16:54:06', 'female', '1DAavkv1WU0KjeH4aM', '949.535.4330', 'xstroman@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(544, 15, 7, 7, 6, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Crystal Ankunding', '1993-12-29 19:57:49', 'male', 'AYWtyT0Wh2zIZzkJLM', '+13857573496', 'karlie.homenick@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(545, 15, 3, 16, 9, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Reva Kris DVM', '1986-09-24 18:24:23', 'female', 'SVEVFoWxGWBbRL4ixq', '934.363.6568', 'axel.hansen@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(546, 15, 6, 25, 6, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Trudie Deckow', '2001-01-13 05:23:04', 'female', 'UiF1R7gvijO2MH1vtW', '309.530.5884', 'wilford.sporer@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(547, 15, 13, 1, 8, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nicola Grant', '1987-06-25 03:08:30', 'male', '73Kxwl2nJZkwj8LCXl', '(678) 262-1294', 'ransom.wolff@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(548, 15, 2, 23, 2, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lonny Ward', '1984-01-25 14:42:03', 'female', 'Yzm4FDAPIWDpDRvwm5', '+1 (781) 870-3562', 'fabian.koss@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(549, 15, 9, 18, 3, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Solon Kemmer II', '1998-07-08 13:14:37', 'female', 'UamjVYZRlJj33poEf0', '1-251-779-0309', 'jan.kerluke@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(550, 15, 4, 12, 4, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Sigurd Dach Sr.', '2002-03-01 05:21:10', 'male', 'fq16oSAg9VvkA33Be6', '+1 (628) 996-2187', 'annamarie.upton@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(551, 15, 9, 19, 2, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Chadd Swift', '1993-10-15 07:36:25', 'female', 'FEcATpvsBrHegTT6Q5', '463-457-5560', 'nina.mcclure@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(552, 15, 3, 23, 9, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Erick Kassulke', '1995-03-22 21:14:27', 'female', 'dw7j9YHfGtg8nP5aSM', '1-952-443-8057', 'wblanda@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(553, 15, 12, 8, 5, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Korey Lang', '1986-02-13 17:10:52', 'male', 'AKpPgYTJXd3IFXaqlE', '336.489.5177', 'bashirian.alec@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(554, 15, 5, 16, 3, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Clemens Green', '1988-02-07 22:31:06', 'male', 'lfVZI4fDBhDHyODIrY', '380.844.9372', 'greenholt.bud@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(555, 15, 1, 6, 6, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Garrison Hills', '1995-04-30 19:53:34', 'female', 'kag809LkyfEnQyPpzH', '+1 (283) 649-6530', 'francisco.rath@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(556, 15, 7, 17, 7, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sydni Turcotte', '1994-08-26 16:44:11', 'male', 'H1HXYUgZAbUhP0W5lS', '646.936.0203', 'lehner.roderick@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(557, 15, 3, 16, 2, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Enrico Collier MD', '2000-02-11 23:08:08', 'female', 'VDfqOSHcwiBkZrrqGG', '+1-270-649-7197', 'chansen@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(558, 15, 4, 4, 7, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Donny Crooks', '1983-11-16 23:22:40', 'female', '1T3w66jiwePe9HpD58', '501-979-7614', 'tbednar@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(559, 15, 4, 4, 10, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Adam Gottlieb', '1992-01-29 05:05:49', 'female', 'BSbvKD8R7N7YcicJDg', '308-640-1469', 'gutmann.lonie@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(560, 15, 4, 20, 2, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Meta Gleichner', '1998-01-10 18:53:52', 'male', 'pVIJhiDsyWYrhi9VV3', '726.409.9768', 'whitney.marvin@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(561, 15, 4, 13, 10, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Selina Bergstrom', '1983-12-16 23:04:50', 'female', 'xQ5sWpBFCM9LY0qSzR', '+1.802.459.2186', 'qmueller@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(562, 15, 6, 3, 10, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lexus Reynolds', '1996-04-20 17:08:23', 'male', 'zVY8TEXqDsq6hFhDLY', '(929) 562-7824', 'otis77@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38');
INSERT INTO `candidates` (`id`, `role_id`, `job_category_id`, `job_id`, `company_id`, `created_id`, `updated_id`, `pre_medical_id`, `pre_training_id`, `selected_osc_id`, `present_address`, `permanent_address`, `candidate_name`, `candidate_dob`, `candidate_gender`, `passport_number`, `phone_number`, `candidate_email`, `candidate_password`, `country`, `nationality`, `active_status`, `candidate_picture`, `candidate_resume`, `passport`, `pre_medical_certificate`, `pre_traning_certificate`, `created_by`, `updated_by`, `pre_updated_dt`, `pre_medical_report`, `pre_training_report`, `pre_medical_dt`, `pre_training_dt`, `pre_medical_comments`, `pre_training_comments`, `pre_medical_status`, `pre_training_status`, `approval_status`, `payment_assigned`, `status`, `result_status`, `permission_status`, `sending_status`, `offer_letter`, `employer_comments`, `offered_status`, `created_at`, `updated_at`) VALUES
(563, 15, 9, 14, 4, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Willow Balistreri', '1988-03-13 03:14:27', 'female', 'GGZavt6GH9UpCv3Tsm', '(240) 837-8399', 'hagenes.dimitri@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(564, 15, 8, 2, 6, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jerald McClure', '1984-03-29 09:34:44', 'female', 'bv3hhTBkOzLRapKkhS', '713.944.2342', 'fadel.ramiro@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(565, 15, 13, 12, 5, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Elisabeth Rolfson DVM', '1988-07-29 06:24:28', 'female', 'BMbsXp4HelGtw564x0', '510-825-6331', 'hassan.corkery@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(566, 15, 10, 16, 9, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ebba Little III', '2001-10-13 09:36:53', 'male', 'k1LFz1l30vUXVs38EK', '+1.580.396.0336', 'kuvalis.murl@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(567, 15, 12, 24, 8, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mavis Aufderhar Jr.', '1992-12-20 05:03:54', 'male', 'DgnMpx8uD6O4uHYpl1', '+1 (678) 338-2673', 'mathias09@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(568, 15, 13, 18, 2, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kaia Mante', '1986-02-15 21:31:51', 'female', 'eetRM4vxYJSBun5ARG', '+1-316-767-0206', 'elwyn.pouros@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(569, 15, 3, 14, 1, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Krystal White DDS', '2000-07-22 16:31:38', 'female', 'fyC2b21A33jBugzKCW', '+1 (341) 822-9427', 'murray75@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(570, 15, 7, 8, 8, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Godfrey Gibson', '1996-12-13 20:16:33', 'male', 'dZ0CAo49FqrOGckZSM', '(785) 619-1170', 'wilfred79@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(571, 15, 5, 10, 10, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Izabella Effertz', '1994-12-19 22:55:55', 'male', 'iX7MyeOGCo8ciSZuF0', '+1 (351) 991-7378', 'ondricka.coralie@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(572, 15, 1, 13, 2, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alessia McLaughlin II', '1995-06-22 21:19:35', 'male', 'Cgp35ka6MDmLeLSgLg', '1-505-453-6728', 'christine33@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(573, 15, 7, 10, 7, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Timothy McCullough PhD', '2002-01-30 16:37:12', 'female', 'FOLWuwTDI6w34yVvov', '+1 (986) 668-3542', 'wunsch.dorthy@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(574, 15, 6, 8, 10, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lynn Schinner', '1986-11-09 01:58:17', 'male', 'BI3AStZAF1EGmNKMBb', '1-360-853-0859', 'jwaelchi@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(575, 15, 2, 12, 1, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sadie Upton I', '2001-04-29 02:45:19', 'female', 'Gpw2qpuDQvYzXMcZEQ', '1-310-731-1864', 'bridgette39@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(576, 15, 13, 19, 3, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Imogene Hessel', '1982-10-09 12:38:44', 'female', 'Z4OY8Fy744slfQKG3h', '1-321-969-9932', 'orn.chet@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(577, 15, 9, 25, 2, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Frances Toy', '1986-03-11 13:47:32', 'female', 'gbmfnQ9Je9gWAsmIOJ', '334.707.3082', 'ashlynn.hammes@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(578, 15, 3, 15, 6, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Everett Goldner DVM', '1999-03-01 10:44:43', 'male', 'noBwUOEbiXF2yMrF6m', '+14453975619', 'madilyn.hoppe@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(579, 15, 6, 23, 6, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Michael Metz', '2000-10-13 22:05:12', 'male', 'oxN1HqfUMs2yluCdwd', '+1 (989) 686-2880', 'ekessler@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(580, 15, 1, 19, 4, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Ofelia Hermiston III', '1998-06-07 13:01:57', 'male', '7EV7fHAaIDICKLnX5E', '+1-402-521-7609', 'ralph42@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(581, 15, 7, 25, 8, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cheyenne Rempel', '1991-01-20 17:13:14', 'female', '1qALhECSIUI8nLC0Yg', '1-775-587-8437', 'egerlach@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(582, 15, 12, 25, 2, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Bernie Lang Jr.', '2000-09-30 05:51:09', 'male', 'C2A9C9E0A9OQ1az4dr', '209.243.8966', 'lmaggio@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(583, 15, 12, 9, 8, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Zelma Daugherty', '1986-11-26 09:04:08', 'male', '2XrrOHHwM1fbZS3SVj', '+1-765-254-3867', 'stiedemann.robb@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(584, 15, 8, 17, 7, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Neoma Hills', '1998-05-12 16:44:52', 'female', 'e2DWpfkNOQId10WfEQ', '757.460.1846', 'ray.hackett@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(585, 15, 8, 18, 10, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Afton Johnson', '1998-06-01 08:02:12', 'male', '2wMxGgd8kp3P79n20E', '571.575.5214', 'jlakin@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(586, 15, 8, 16, 1, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kailee Schinner', '1989-11-03 22:07:36', 'female', 'UqtZu2F7o9eMLxqTEr', '+1 (769) 697-9218', 'esmeralda.bartell@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(587, 15, 1, 18, 10, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Georgianna Hettinger', '1997-10-23 23:57:24', 'male', '3XCO3w1E2bTgqFPvEL', '458.839.9706', 'mason.dach@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(588, 15, 5, 17, 5, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Annamarie McDermott', '1996-06-10 17:28:11', 'male', 'DrTdi3n7V5D3Tf9lAV', '206.739.8296', 'lleannon@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(589, 15, 8, 15, 1, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ephraim Bogan IV', '1999-09-18 15:00:15', 'female', 'VgGsdp1FNNL8x5jIpS', '+1-260-849-5845', 'edd.rath@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(590, 15, 2, 20, 9, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Bo Flatley II', '1991-07-10 09:04:50', 'male', 'T0lRzYO3E29g81o0LD', '+1.207.288.5846', 'schiller.nettie@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(591, 15, 2, 14, 8, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Maurice Hansen Sr.', '2001-07-30 05:36:59', 'female', '24Gbx1cO2ABv82qHoi', '1-954-487-4859', 'rjacobson@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(592, 15, 3, 5, 6, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kacey Upton', '1986-04-16 21:22:20', 'female', 'jP5294eUg3ytoWJuja', '+1-272-967-8001', 'leatha.goyette@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(593, 15, 10, 23, 1, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Samanta Marvin', '1997-07-31 20:01:36', 'male', '3SaGxG2Rp8m8cHpkjT', '240-268-4445', 'abauch@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(594, 15, 9, 6, 7, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Carlee Schuster I', '1992-01-26 13:45:46', 'male', 'sorCTrxdwFqVDhFRfz', '276-222-5475', 'schmitt.celia@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(595, 15, 2, 16, 3, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ethel Schowalter', '1988-03-04 05:47:39', 'female', 'tol9ehBr8vI0CS0mwr', '(678) 372-5898', 'lmosciski@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(596, 15, 3, 3, 3, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jayden Labadie', '1999-01-05 20:37:44', 'male', 'nIhfkPn0qVgQg0dEkK', '959.292.2696', 'bmraz@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(597, 15, 6, 8, 9, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Clotilde Hilpert', '1992-07-02 01:02:22', 'male', 'JRHOXUdKiUL85OTsc9', '(682) 575-4264', 'williamson.abdiel@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(598, 15, 13, 25, 10, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Garrick Cummerata', '2001-11-29 14:41:17', 'male', 'igl3bGFrXCiMpTiYVe', '+1.315.763.6213', 'jast.carroll@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(599, 15, 11, 21, 1, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kristy Ryan', '1993-05-16 04:11:44', 'female', 'QxSX384iZhc4A9JBpG', '+16816505830', 'cjenkins@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(600, 15, 1, 1, 5, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dawson Willms', '1983-08-07 12:42:23', 'male', 'diWzZT61uhv8BvzOeP', '239-721-9608', 'conn.manley@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(601, 15, 11, 14, 8, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gilda Hane', '1985-06-03 18:06:59', 'female', 'P1xXRJwu5JcZaqCq1X', '1-470-623-5036', 'nellie20@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(602, 15, 3, 18, 7, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Hazel Reinger', '1991-02-13 03:28:24', 'female', 'BFiWJvYxPuRzVc8vS4', '239.712.9379', 'lockman.aidan@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(603, 15, 10, 15, 8, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Meagan Botsford', '1985-06-22 22:23:59', 'female', 'KsX0M8BOGAhBZIGP4n', '435-678-5689', 'ibartoletti@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(604, 15, 6, 17, 9, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sandra Franecki', '1987-09-23 10:19:50', 'female', 'ifrsVgoZ6Pch9z390l', '(484) 833-7897', 'dangelo15@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(605, 15, 1, 12, 2, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Neha DuBuque', '1987-12-30 09:31:37', 'male', '62Et437Knyz7XMcYAz', '678-609-0010', 'bartholome.hyatt@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(606, 15, 12, 5, 6, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Esteban Effertz', '1991-04-07 21:33:53', 'female', 'sgKbl0JEpFXq4QJ0iQ', '430.291.7664', 'gmitchell@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(607, 15, 1, 25, 1, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Hertha Cassin', '1998-02-16 18:16:06', 'male', '5TV82TaqAYQPSycNg0', '(283) 869-6018', 'aric.stehr@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(608, 15, 9, 15, 2, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Matteo Pouros', '1985-07-30 04:54:36', 'female', 'xYGDwRiQIU3YwLx4Lt', '+19287976427', 'maverick90@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(609, 15, 3, 2, 1, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Geo Hills', '1998-03-02 16:32:37', 'female', 'Fs2bNv1gMj3FJwQQvR', '(904) 461-4276', 'nicholaus67@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(610, 15, 9, 7, 1, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Madisyn Nitzsche', '1994-10-25 08:33:48', 'female', 'DsIigqbZ53rIAulpS9', '475.780.2582', 'guillermo27@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(611, 15, 3, 24, 1, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Jamarcus Osinski Sr.', '1991-01-12 21:29:51', 'male', 'Xj0agditYgnXK6nuK0', '1-509-635-6932', 'will.vergie@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(612, 15, 4, 14, 8, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jodie Hermann', '1994-11-13 08:46:44', 'female', 'HYCcrXPJSQ6GdImt5M', '+1-458-283-1514', 'silas13@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(613, 15, 3, 8, 4, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Matt Marquardt I', '1999-10-31 15:15:08', 'female', 'RmIRi0ZOQAYRprGx2b', '+1-267-853-6984', 'predovic.vernice@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(614, 15, 12, 17, 7, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Sarai Gleason', '1997-06-14 07:10:47', 'female', 'bhY6qOL0426OuUJMJB', '973-422-3539', 'jones.aaliyah@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(615, 15, 4, 5, 5, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Katrina Carter DVM', '1983-03-13 19:06:27', 'female', 'jZSneWtbLH6Ft0JgKr', '1-570-603-3075', 'vgottlieb@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(616, 15, 4, 8, 6, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Gisselle Luettgen IV', '1996-07-24 16:39:07', 'female', '8VQq6VrormtxHa0vcx', '1-469-676-0439', 'wintheiser.susan@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(617, 15, 4, 22, 9, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Soledad Rutherford V', '2000-01-08 13:53:57', 'female', 'FDBSpii3dPDIhznMvr', '937-914-4043', 'jacobi.sid@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(618, 15, 9, 7, 10, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eugene Kozey', '1991-12-07 04:33:11', 'male', '0sZWuU0VGGP0xhvLTb', '+1 (310) 771-0465', 'lauriane.macejkovic@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(619, 15, 7, 11, 3, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Zelma Leffler', '1999-12-26 07:58:15', 'female', 'Qb6gBeIRUijMTI1eYx', '+1-717-930-9090', 'adelle51@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(620, 15, 1, 7, 1, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Nadia Larkin', '1987-04-13 03:04:24', 'male', '1QoSDKbrKFPneIFBDM', '(925) 815-0457', 'waelchi.darlene@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(621, 15, 12, 19, 1, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Esther Kilback MD', '1994-06-26 18:16:47', 'female', 'xogSOvSPs0n24ngBuv', '337-900-4519', 'keagan30@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(622, 15, 2, 21, 1, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Lina Okuneva', '1995-10-24 22:18:09', 'male', 'gLLNSmR6XaH4OaVmpr', '+1 (614) 980-2313', 'leta14@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(623, 15, 8, 25, 6, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Blake Johns', '1999-08-14 05:28:06', 'male', 'SlpBBKXaeZnjVvab4a', '940-577-4220', 'khalid.wilderman@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(624, 15, 5, 25, 10, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Brennan Hills', '1991-04-17 19:50:14', 'male', 'x0Bf2wW6YMdja8SKr9', '(862) 692-5085', 'ispencer@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(625, 15, 6, 22, 2, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Charlene Sanford', '2000-04-04 01:01:42', 'female', '72j39sF4DETWk4wvS4', '203-948-0801', 'stracke.ismael@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:38', '2022-03-07 12:14:38'),
(626, 15, 11, 14, 7, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jonatan Schiller DVM', '1996-03-09 16:46:11', 'female', 'DUxOA6Ny10OFy0nSRC', '1-737-260-3470', 'xschaefer@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(627, 15, 6, 17, 10, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Arthur Runolfsson', '2000-11-17 22:41:33', 'male', 'Lk6Kz7jKXmnxcrhO0b', '(234) 573-6366', 'gavin64@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(628, 15, 12, 15, 2, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Asa Greenfelder II', '1998-10-17 13:04:45', 'female', 'Y61caKoKTpRNNUMoBw', '+14756899273', 'uvolkman@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(629, 15, 1, 13, 2, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Issac Kessler DDS', '1999-04-06 04:07:50', 'male', 'VtL9G9WOjc7vyCFyaA', '614.289.3715', 'tatum.williamson@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(630, 15, 3, 3, 3, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Ara Hartmann III', '1993-03-16 01:38:06', 'female', 'L7fIy50DQ2X7Easi51', '682-599-6922', 'yflatley@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(631, 15, 9, 1, 6, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Teresa Crist', '1998-02-04 11:47:53', 'male', 'Qv1IvkYQDkRf90LxjA', '1-907-582-6025', 'schiller.bridget@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(632, 15, 11, 22, 2, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Avis Bayer', '1984-10-30 01:34:19', 'female', 'C1FMFgiTXJd7KLmA34', '+13254269946', 'vincenzo74@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(633, 15, 1, 21, 8, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Andreanne Hickle', '1998-11-28 08:22:40', 'male', 'NIXbYF1792gHrr06YE', '458.667.4261', 'bins.thora@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(634, 15, 4, 25, 5, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Houston Marks Sr.', '1987-03-28 08:32:02', 'female', 'ydHDbSglCVRmMhE79D', '(469) 450-9710', 'jodie07@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(635, 15, 11, 16, 2, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Cloyd Bruen DDS', '1999-08-09 11:24:58', 'male', 'zEiBxn8G2ArNMC7gD6', '218.953.6037', 'sstanton@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(636, 15, 11, 23, 8, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Name Beier', '2001-12-15 01:40:05', 'male', '9YiEBXfJvxZ818J1nM', '616.747.3033', 'bert.spinka@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(637, 15, 3, 8, 4, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Eda Grady II', '1987-03-27 00:23:57', 'female', 'wKceLxqB8tuNJS6xWa', '(667) 729-3648', 'tabitha.macejkovic@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(638, 15, 10, 25, 5, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Ian Predovic II', '1991-09-16 01:20:12', 'female', 'kZ2JeXkb9sr2hLiJUe', '(689) 273-8644', 'erica44@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(639, 15, 10, 12, 4, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Euna Bernhard', '1996-09-08 17:32:30', 'male', 'NI9WmMiSpEY2xSl2vV', '539.580.1475', 'mitchell.ephraim@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(640, 15, 9, 12, 10, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Otis Ebert III', '1988-09-17 22:21:01', 'male', 'RlSrPA4WOJByxjXLUY', '+15313574851', 'thea.terry@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(641, 15, 12, 16, 9, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ellie Hauck', '1995-02-10 23:28:10', 'female', 'R3dxa7tFkHhWjIC6yj', '610-815-8203', 'orn.tristian@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(642, 15, 12, 20, 8, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Leopoldo Will II', '1996-10-10 04:43:54', 'female', 'l6v7PrQzdQnxCdYoTn', '(641) 697-8435', 'cale91@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(643, 15, 10, 25, 6, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Aletha Tremblay', '1984-09-08 18:19:09', 'female', '5FOyWriLkIMWTk0kw8', '(854) 484-9310', 'rfunk@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(644, 15, 4, 19, 7, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Aidan Schaefer', '1986-04-12 09:56:12', 'male', 'CXXSnAQb4lxYwY3SDS', '+12814010967', 'pharvey@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(645, 15, 7, 19, 1, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Camille Walker', '1983-10-26 23:13:54', 'male', 'eyxxD36AQLYA9PLQNf', '+1-754-202-2756', 'hoppe.bethany@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(646, 15, 9, 3, 6, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Koby Jaskolski DDS', '1982-05-07 19:40:48', 'female', 'bUKgGxkIFPc66FJzaP', '+1-270-221-5081', 'batz.holden@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(647, 15, 5, 20, 2, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Berniece Carter DVM', '1984-07-15 00:30:39', 'male', 'EaOjb8rKkifyr0UuS6', '623.439.4932', 'hegmann.bridgette@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(648, 15, 5, 20, 3, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Columbus Bins', '1987-05-27 10:10:03', 'female', 'ZSn8qsrr5QNli3EWP0', '+1-479-455-5776', 'hane.alice@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(649, 15, 1, 24, 8, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nellie Wuckert', '1984-01-12 15:24:27', 'male', 'EkBJ5Yw2uvpdawi34J', '1-636-718-2719', 'wilma.huel@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(650, 15, 1, 10, 2, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Velva Considine PhD', '1986-02-09 11:18:51', 'male', 'tpKKAHrSiFK28hBhkK', '417-553-2024', 'anderson.joanne@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(651, 15, 1, 17, 2, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Makenna Labadie', '2000-08-21 14:11:49', 'male', 'cdyvNAooVIzjopXSKO', '386.304.9274', 'rwindler@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(652, 15, 9, 9, 10, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Dasia Herman PhD', '1993-08-07 03:36:03', 'male', 'wU5Hw2InSDrM6QVUjk', '+16515190292', 'noah79@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(653, 15, 6, 16, 2, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Jared Ratke IV', '2001-11-03 22:29:08', 'female', 'ImHyqd1qHEFSEHzDs4', '(586) 446-1215', 'hermiston.emelia@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(654, 15, 11, 15, 5, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Benton Roberts', '1992-05-11 16:23:27', 'male', 'dcT9SORdxc5YyQUvvC', '(316) 900-4509', 'bill.hahn@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(655, 15, 12, 4, 3, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Stanford Block I', '1985-01-27 09:04:17', 'female', '5LBv0ym5ZyIBoqWuyg', '+1-320-919-8399', 'annamae95@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(656, 15, 11, 23, 8, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Markus Schmitt', '1993-05-31 07:49:10', 'female', 'bMZSaOXFuF5tJ2i1L1', '+1.385.229.0745', 'schaefer.oma@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(657, 15, 13, 22, 10, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Raina Labadie', '1983-06-27 00:12:24', 'male', '8JL075cXVAdYSpAv4t', '915.679.6347', 'debert@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(658, 15, 10, 4, 4, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Theresia Bechtelar', '1993-08-28 16:06:46', 'female', 'JDbWP0NwZOHXcswsmU', '651.927.5891', 'jermey.davis@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(659, 15, 11, 21, 1, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Myles Prosacco', '1988-01-01 22:10:15', 'female', 'hEgPTsSx6UF9fo85Am', '757.903.8154', 'larson.gertrude@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(660, 15, 12, 20, 1, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ryann Davis', '1982-11-22 21:58:34', 'female', 'tJ944U5lBnWkiBPUoo', '(325) 860-8889', 'waelchi.hoyt@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(661, 15, 7, 17, 4, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Candida McLaughlin', '1991-07-12 16:05:02', 'male', 'XCloqML5n3xwfsNXQC', '(520) 357-4541', 'edwin.hahn@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(662, 15, 8, 5, 5, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Spencer Kiehn', '1993-06-07 07:18:03', 'female', 'YDiVJlvB5mlTcPfm3U', '321-350-0443', 'schoen.laurine@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(663, 15, 4, 23, 6, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alfredo Lakin IV', '1987-01-26 12:49:31', 'female', 'RkBfIndw9C7DaRBCsW', '(716) 689-7963', 'aurelie11@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(664, 15, 3, 12, 3, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Loraine Lakin', '1984-01-05 18:52:43', 'male', 'HGVNwoAQEsD11a0d4U', '+1.386.858.5601', 'emmanuel.metz@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(665, 15, 11, 18, 4, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prudence Spinka', '1992-02-10 13:08:11', 'male', '818Xy2BypOg3rN4dlN', '575-789-0556', 'jayden04@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(666, 15, 6, 5, 10, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Miller Greenfelder', '1995-11-09 01:54:51', 'male', 'FwHFGFro7rJ2Gr72Ct', '(828) 577-2022', 'imani81@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(667, 15, 6, 24, 8, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Delphine Koss', '1991-07-02 03:42:28', 'female', 'iZNErwWQ1hTsNSfQpj', '1-689-312-5555', 'alf.skiles@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(668, 15, 3, 18, 6, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mitchell Wisozk', '1998-07-28 22:56:56', 'female', 'FQNLMZ0KtLnbo73bNa', '+1.480.890.0739', 'romaguera.alvena@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(669, 15, 9, 10, 5, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Matilde Graham V', '1993-05-25 14:13:50', 'female', 'QGAA09JwfvGEVZ4LEN', '(775) 681-5069', 'rau.elfrieda@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(670, 15, 11, 2, 6, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Liliane Braun', '1996-12-16 04:58:34', 'male', '3JDRdKO9yhIt6utY0D', '1-440-457-5470', 'abdul32@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(671, 15, 8, 15, 5, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ewald Stehr', '1999-03-05 18:02:43', 'female', 'Avx6kprqA2XUJyITLF', '+1.650.776.0530', 'lucy.krajcik@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(672, 15, 1, 9, 10, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jacinthe Hessel', '1993-10-03 02:28:12', 'female', 'e0TzaKO7hm2fifinid', '(240) 866-3750', 'orie.abernathy@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(673, 15, 4, 4, 8, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Mark McKenzie', '1989-03-21 22:37:45', 'female', '4h9MYkLdKiaqqpVYGG', '+1-443-842-8806', 'cronin.maximo@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(674, 15, 8, 7, 8, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kari Willms', '2000-07-18 20:44:22', 'female', 'Ktc6Eq6xqYPlTj08tA', '+1-212-793-5439', 'bridgette06@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39');
INSERT INTO `candidates` (`id`, `role_id`, `job_category_id`, `job_id`, `company_id`, `created_id`, `updated_id`, `pre_medical_id`, `pre_training_id`, `selected_osc_id`, `present_address`, `permanent_address`, `candidate_name`, `candidate_dob`, `candidate_gender`, `passport_number`, `phone_number`, `candidate_email`, `candidate_password`, `country`, `nationality`, `active_status`, `candidate_picture`, `candidate_resume`, `passport`, `pre_medical_certificate`, `pre_traning_certificate`, `created_by`, `updated_by`, `pre_updated_dt`, `pre_medical_report`, `pre_training_report`, `pre_medical_dt`, `pre_training_dt`, `pre_medical_comments`, `pre_training_comments`, `pre_medical_status`, `pre_training_status`, `approval_status`, `payment_assigned`, `status`, `result_status`, `permission_status`, `sending_status`, `offer_letter`, `employer_comments`, `offered_status`, `created_at`, `updated_at`) VALUES
(675, 15, 4, 9, 5, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Arielle Zemlak', '1982-10-20 22:39:05', 'female', 'W8kaMMhejhJ8uuoOjj', '+1-484-695-9985', 'anthony24@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(676, 15, 10, 9, 6, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Natalie Hamill V', '1991-11-15 16:55:54', 'male', 'lkmAqXSTePq1Zwqu2Q', '680-746-7015', 'amanda.greenfelder@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(677, 15, 3, 5, 9, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Arnoldo Orn', '1989-04-01 05:10:29', 'male', 'AKa0JnhGDOzMdbnOoE', '(727) 390-3336', 'sydnee23@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(678, 15, 8, 11, 7, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Harmony Dibbert', '1984-12-01 09:16:33', 'female', '11aNnT2IxxDP8sK6A9', '+1 (346) 472-4606', 'ryan.greg@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(679, 15, 9, 5, 7, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Georgette Lueilwitz', '2001-06-16 14:21:30', 'female', '1aUs6sxzXzTexDLkfH', '+1.256.407.8544', 'cooper.bechtelar@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(680, 15, 9, 24, 4, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rodger Abshire IV', '1993-01-11 05:07:50', 'female', 'r1Ak3WZ65QonJGfHNp', '+1-458-721-1870', 'casper33@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(681, 15, 4, 15, 2, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Minerva Zboncak', '1982-07-17 23:02:41', 'female', '1K65T2NIIxx7AUhR01', '520.991.4433', 'kayla.hammes@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(682, 15, 1, 18, 4, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Daryl Blanda', '1992-05-19 03:31:50', 'male', 'glFEMVSoZA7wYeMI0F', '386-882-2042', 'frida79@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(683, 15, 9, 3, 7, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jermaine Hill', '1998-08-16 13:43:43', 'female', 'oANzK4o8oEKCDi6Lm3', '+1 (585) 922-5508', 'roger.sanford@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(684, 15, 2, 1, 6, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Santiago Ebert', '1983-10-24 04:57:38', 'male', 'rvQ1aJIRVnZyPdSIKr', '239-735-3820', 'keaton92@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(685, 15, 9, 3, 3, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lane Leannon', '1990-01-13 14:24:53', 'female', 'Pf5FCJBX6S9tI3SAla', '1-551-343-8797', 'kovacek.izaiah@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(686, 15, 13, 14, 8, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Giovani Rempel Jr.', '1984-03-06 16:52:27', 'female', 'mkoyMBiubtZSLbZN9u', '(906) 777-8121', 'rosalyn62@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(687, 15, 12, 25, 5, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Heather Feest', '1985-04-04 09:57:38', 'female', '4OXpw62tJ6I8ZqBYza', '1-346-752-4304', 'else.kuhic@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(688, 15, 5, 13, 10, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eddie Eichmann', '1983-03-10 12:54:12', 'female', 'TzcDV0YWzR0Ko7aOjd', '1-501-263-3436', 'alexis.zemlak@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(689, 15, 4, 7, 10, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Edwin Rippin', '1987-07-22 06:38:26', 'female', 'FfjucZyQoTixnPuGWS', '+13098095313', 'lloyd94@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(690, 15, 2, 17, 5, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Oren Schultz III', '1987-12-10 10:15:36', 'male', 'OdPk3RJUGitR0dssg2', '1-657-941-3790', 'cathy.lueilwitz@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(691, 15, 3, 21, 7, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Amara Barrows', '1998-11-22 01:59:52', 'female', 'DnRPV3ydqqJ0zOt7F1', '+1 (432) 280-9286', 'cbashirian@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(692, 15, 11, 9, 10, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Tiara Gutmann Sr.', '2000-01-08 14:06:53', 'male', 'jg3Gi18QqEXA8C2wja', '646-815-8937', 'jhuel@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(693, 15, 6, 24, 2, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Opal Zieme', '1988-10-02 00:44:35', 'female', '3NrRShwwdaYkwSSQAU', '+1.971.416.7678', 'dspinka@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(694, 15, 1, 17, 3, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Karl Vandervort', '1986-10-15 10:46:11', 'male', '0lG6wpWj31m1tEHqjv', '+1 (678) 366-4893', 'uschroeder@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(695, 15, 3, 7, 4, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Esperanza Braun', '2000-02-03 18:56:26', 'male', 'iyiH2k9selv4eBvnv5', '+13239657456', 'schuster.karina@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(696, 15, 8, 14, 9, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nikki Hagenes Sr.', '1986-06-18 18:05:20', 'female', 'NQYutO6N68APZlZOPq', '+1-617-602-3940', 'brooklyn51@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(697, 15, 10, 17, 4, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Edwina Thiel', '1988-08-10 17:34:26', 'male', 'yQxXPJWznyeapSD4HO', '+1.754.222.8104', 'trystan.kilback@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(698, 15, 12, 15, 8, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cheyenne Kerluke', '1995-01-05 06:19:39', 'female', 'FQQD3ehdjKevc0j8DI', '1-828-826-5834', 'mathias56@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(699, 15, 12, 10, 6, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Verla Weimann', '1999-02-09 03:15:38', 'female', 'QK7JgIwu7h3cWzJCp2', '(410) 402-0063', 'tarmstrong@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(700, 15, 7, 21, 8, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Morris Terry IV', '1996-10-08 15:41:41', 'male', 'DpDz7Jfwi6nBGm9718', '1-937-723-3283', 'nathen17@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(701, 15, 12, 24, 5, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ashtyn Bradtke', '1989-09-22 08:33:21', 'female', 'J0tDAxd5SBAgtxdaR8', '+17853784547', 'jmoore@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(702, 15, 1, 15, 3, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lela Buckridge', '1987-06-06 17:34:30', 'female', 'VBzhIhD0Ymd3qlk7j7', '956-866-2882', 'julianne22@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(703, 15, 8, 12, 9, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Mateo Leannon PhD', '1991-02-11 05:09:07', 'male', 'ENkbVXSFrgGUaCespK', '680.786.8903', 'wherman@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(704, 15, 6, 12, 9, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Camron Funk', '1985-01-14 01:31:31', 'male', 'UhXN0Trgy74iBsp8KF', '(832) 203-9849', 'jack22@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(705, 15, 3, 6, 2, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Juvenal Schamberger DDS', '1997-03-05 03:47:54', 'male', 'C4Sfra73Od6c4MhwuB', '+1.248.516.5723', 'uschaefer@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(706, 15, 5, 1, 2, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Terence Goodwin', '1990-08-12 04:24:34', 'male', 'PJVYBLNfon6f42REF9', '+1-443-828-8419', 'abernier@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(707, 15, 1, 4, 9, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Avery Little V', '1993-04-18 08:50:16', 'female', '3pd78fffThEgbfgWsq', '+1 (689) 618-1924', 'vance59@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(708, 15, 1, 8, 9, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kaelyn Kuhlman', '2001-06-05 09:14:07', 'male', 'S34z8UQNnhaq6vnxzU', '+19345168258', 'ahmad.labadie@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(709, 15, 11, 19, 7, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Paige Russel', '1988-03-15 11:17:36', 'male', '9OL6GxLqkHZtSnPfj8', '781.384.0615', 'rusty.nikolaus@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(710, 15, 3, 20, 3, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Thad Balistreri', '1989-02-14 13:06:19', 'female', 'cGCVsvM3aeVao80lJJ', '513.505.6882', 'noelia.schaden@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(711, 15, 9, 14, 1, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Earnest Boehm Sr.', '2000-08-25 10:26:31', 'male', 'PNDcXxZUnvHIFXGEOl', '631-308-2561', 'nyah.smith@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(712, 15, 2, 4, 10, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Heloise Farrell', '1999-08-09 23:06:38', 'female', 'UG9IFlSK7MdrTvGJoQ', '(919) 957-9423', 'myles63@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(713, 15, 10, 11, 1, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Leonora Greenholt', '1986-12-06 10:34:15', 'female', 'ysW7SVBmt8mVYtAoMT', '+1 (602) 595-8553', 'nbechtelar@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(714, 15, 10, 12, 8, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Colby Steuber', '1993-10-09 20:58:32', 'female', 'SqSNm0TbJh3JhY030f', '(878) 401-4947', 'lucius.mosciski@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(715, 15, 6, 2, 2, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jakob Nitzsche III', '1987-09-29 14:11:04', 'female', 'rojI318MXmxj5Pr4Va', '(510) 742-4679', 'hilbert.murphy@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(716, 15, 7, 9, 10, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gina Ledner', '1985-03-20 21:01:28', 'male', 'RuAo8QMwd4pMNsNkHD', '325.290.4757', 'jackie55@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(717, 15, 7, 20, 8, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Guadalupe Price II', '1995-11-10 14:31:42', 'male', 'xZBQREfDLcu53UvBXr', '+1-828-819-6543', 'florida.dickens@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(718, 15, 1, 14, 3, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marcia Hand', '1992-07-22 10:36:33', 'male', '9w2pB9x9wlvy9aMr78', '(240) 687-9247', 'naomie.wilderman@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(719, 15, 13, 4, 1, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Providenci Grady', '2002-02-02 22:38:48', 'female', 'vfy5Stfc5GbDgkzGD7', '620.769.4669', 'ydooley@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(720, 15, 5, 2, 4, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. London Rath I', '1999-08-28 16:00:32', 'female', 'rZ3yA1IMdtTdRVgqbG', '410.200.1620', 'marcella89@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(721, 15, 10, 6, 3, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Agustin Hamill DVM', '1983-03-28 18:58:46', 'female', 'GL9o4sBJ6jySPDfAKv', '1-520-882-9053', 'ivory76@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(722, 15, 2, 15, 1, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jayce Schultz', '1989-10-28 13:19:20', 'male', 'WTweRwpziQcDuYYOZO', '(630) 735-5399', 'elna.parker@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(723, 15, 6, 23, 8, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Vladimir Leffler V', '1984-01-13 04:15:27', 'male', '8rrQ66QzYxBiaWagt7', '763-649-3718', 'marlen85@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(724, 15, 11, 7, 4, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Leonor Lockman', '1998-11-28 02:42:36', 'female', 'BXJZq2jPGpb40HEC1F', '351-663-8826', 'fdaniel@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(725, 15, 2, 23, 5, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Terrence Predovic Jr.', '2000-10-14 11:33:57', 'female', '0K7n90Y7fktWIbd7PO', '(540) 951-1971', 'laury.ullrich@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(726, 15, 12, 15, 4, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Zoey Casper', '1982-06-07 01:36:10', 'female', 'RvTv50ZGusoyyqcJHS', '1-541-724-0745', 'hkeebler@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(727, 15, 11, 1, 7, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Mafalda Murray', '1995-12-04 17:22:44', 'female', 'zOq0Z21uyq0u4D7Jzd', '810-730-2344', 'iconnelly@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(728, 15, 2, 10, 7, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Garrison Vandervort', '1998-01-03 03:45:23', 'male', 'EBIgwFy0iKB5yl24Uz', '+1.929.988.2235', 'trace.renner@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(729, 15, 5, 16, 2, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ralph Torp', '1983-07-25 11:16:17', 'female', 'MESjM8sdE8cYeOP2II', '623.755.7845', 'lowell.hahn@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(730, 15, 12, 5, 4, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mauricio Rath Sr.', '1990-08-20 12:57:01', 'male', 'OLhqHt1vkl2ZFUOgum', '628.472.9880', 'lelah.quitzon@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(731, 15, 2, 20, 2, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Cody Schmidt PhD', '1983-03-27 01:11:54', 'male', 'sJqf8mI6gPYrHJv2vR', '628-992-7154', 'pollich.bradley@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(732, 15, 10, 10, 3, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dedrick Corwin', '1996-02-26 20:28:27', 'female', 'URL7hrFtXpEMe6bOiz', '575-305-3718', 'okrajcik@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(733, 15, 9, 9, 6, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Maxine Hammes', '1994-05-07 19:24:46', 'female', 'VF7Nj5igq2xAAKPVMo', '1-347-633-8247', 'boehm.laura@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(734, 15, 5, 4, 6, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Therese Morissette MD', '1999-01-05 07:51:17', 'female', '7hEjMofxkvMiEXHCas', '(854) 302-0785', 'parker.khalil@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(735, 15, 13, 1, 6, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Abelardo White', '2001-06-10 22:02:32', 'male', 'Ipr3LEMTXfPbfgjGBR', '973-830-5695', 'oschowalter@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(736, 15, 4, 20, 5, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gabrielle Cassin', '1985-10-01 08:06:55', 'male', 'DJtaPVXzavxlyd1XPc', '279.809.8329', 'lesch.raina@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(737, 15, 2, 13, 10, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Freda Kovacek', '1988-01-18 16:38:54', 'male', 'chx2e5z1vHvlOckd6l', '+1.740.510.7072', 'shana.ratke@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(738, 15, 6, 2, 10, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Lauren Fisher', '1997-11-28 14:16:10', 'female', 'PF7h7Vv9mzBZMIkS9x', '(804) 783-1842', 'hframi@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(739, 15, 3, 12, 8, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Fay McKenzie', '1985-11-01 01:33:59', 'female', '73gfUr4imKzUP6nWYW', '(269) 675-5115', 'hector68@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(740, 15, 4, 8, 8, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Eden Mann', '1997-07-21 19:57:06', 'male', 'p6f1ZHQ93BxYe80hH6', '+1-530-432-0731', 'larkin.kelvin@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(741, 15, 5, 3, 2, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kiel Halvorson', '1986-08-16 07:12:03', 'female', 'husgT77N1BluqaxarW', '272.880.7962', 'freddy23@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(742, 15, 10, 2, 2, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Raphaelle Nitzsche', '1992-04-19 18:50:08', 'female', 'pTB3MU7YNXZH9gbCvL', '908.322.8536', 'ansley77@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(743, 15, 4, 15, 6, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ivory Schmitt', '1991-10-07 07:12:34', 'female', 'KwmZ4yh72FNz9GUfOu', '857.887.7437', 'jolie.bailey@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(744, 15, 13, 1, 2, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Shanna Dibbert', '2000-08-02 11:01:35', 'female', 'dhIDXq7fEJjUfCV1Pp', '360-672-1433', 'tad.bednar@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(745, 15, 7, 7, 6, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Marlin Jones IV', '1993-05-26 23:51:38', 'female', '0WTBuEGzXIlBRhLEPA', '913.564.8733', 'fhane@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(746, 15, 4, 12, 2, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Faye Torp', '1992-06-14 15:25:33', 'male', '21ZarHfXnLnHIgCCop', '843.989.5091', 'annabelle97@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(747, 15, 7, 11, 7, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sarina King', '1983-10-15 02:37:40', 'female', 'g1sHvsKMrJtqfNPZXQ', '660.889.9015', 'roberts.scot@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(748, 15, 5, 7, 1, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Rozella Willms', '1989-11-02 16:34:33', 'female', 'OUSMN7git1MJqPGaBG', '+14428204142', 'ardith.abbott@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(749, 15, 7, 6, 1, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ike Labadie', '1985-12-09 21:48:33', 'female', 'XT0NACzvExmJyW08fb', '+1.775.297.5587', 'evans25@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(750, 15, 1, 8, 2, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Shanelle Effertz', '1991-10-12 09:54:43', 'male', 'drZwGiF4t08XEhLEJ7', '+12243561685', 'augustine.koss@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(751, 15, 5, 20, 2, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Josiane Hettinger', '1996-07-16 05:56:24', 'female', 'gFardJa0xDYSCIALfb', '432.478.7094', 'marlon24@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(752, 15, 8, 11, 2, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Christelle Nitzsche', '1989-07-13 18:54:15', 'female', 'EHim8GZuCSS4nLoswP', '+1-973-592-8857', 'annabelle43@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(753, 15, 5, 24, 1, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Brady Macejkovic IV', '1994-07-07 14:43:33', 'male', 'jBopM5xKaB6kBpYi5h', '712-599-1566', 'bryana.jacobs@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(754, 15, 4, 14, 1, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miguel Baumbach DVM', '1992-03-02 17:38:14', 'male', 'AEMRak4QK6gbqeHqFE', '203.943.3644', 'ykulas@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(755, 15, 6, 11, 8, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Bernie Ruecker', '1987-12-26 14:22:30', 'female', 'THipxlpQZPvcuu0DvU', '+1.810.502.0270', 'leffler.petra@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(756, 15, 13, 25, 1, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Jarrett Olson', '1996-01-28 12:32:51', 'male', '3olxY6oewNJNIdQIwN', '1-610-965-5845', 'cleve84@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(757, 15, 12, 16, 8, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Guadalupe Wiza', '1999-03-21 06:03:34', 'male', 'VTLNsFPouSMBzvmt5u', '+1-657-666-9493', 'fermin.anderson@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(758, 15, 9, 22, 10, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Branson McClure', '2001-08-17 14:55:09', 'male', 'cKEavBS3yx87HtYv55', '+1 (989) 362-2430', 'stehr.ludwig@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(759, 15, 8, 9, 1, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jovani Fahey', '1987-02-22 14:53:31', 'female', 'iy76abpx1VGeDUCbg0', '+1.909.661.9571', 'jennifer91@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(760, 15, 1, 9, 7, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ramona Schmeler', '1986-03-15 01:26:15', 'female', 'MQp8CfheTGbVwPO9dB', '1-915-870-2212', 'garret58@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(761, 15, 1, 14, 9, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ronaldo Vandervort', '1997-09-27 01:34:45', 'female', 'jRj2oLGoVMTI0yknID', '+1-207-574-8639', 'uhansen@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(762, 15, 10, 25, 6, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jennifer Pacocha II', '1991-06-02 00:52:36', 'male', 'EFQe5LaD35gCTa2jnj', '682-677-7341', 'rupert88@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(763, 15, 5, 19, 1, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Rosendo Parisian', '1989-12-10 23:27:24', 'female', 'f9MACfAYpqQbOemBnu', '(805) 935-0966', 'ashtyn25@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(764, 15, 3, 3, 10, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Gail Reilly', '1995-04-23 06:32:34', 'female', 'iBni4LXCFSmxCePBvv', '+1.737.621.9524', 'maegan.gulgowski@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(765, 15, 10, 15, 1, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Gilda Collier', '1986-05-10 11:19:22', 'female', 'hfuqgSnrijByDUm1rZ', '+1-341-996-4195', 'conner.bayer@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(766, 15, 12, 15, 10, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Samanta Sanford', '1998-10-24 01:18:35', 'female', 'ScrdcaniS2FnL3d94j', '(339) 666-5749', 'mina.halvorson@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(767, 15, 5, 16, 2, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Maggie Wiegand', '1988-11-01 16:32:14', 'female', 'hd8rrqeERcDfmaKIOS', '(386) 786-0670', 'kaci.mccullough@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(768, 15, 13, 10, 10, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Kory Mante Jr.', '1985-09-16 09:37:05', 'female', 'EYjVP5OD7zh9IowPMw', '1-320-707-6713', 'mozelle.dare@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(769, 15, 3, 10, 5, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Madaline Roob I', '1998-11-14 19:38:05', 'male', '6oukQHbzgMrh1GGDcE', '1-980-692-9631', 'alan.ledner@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(770, 15, 4, 16, 2, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Zack Parisian', '1993-05-14 22:44:09', 'female', 'N0dvUhUkGgEKUeoCqJ', '757.398.4939', 'kulas.asia@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(771, 15, 2, 15, 1, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Layla Barrows', '1997-09-09 12:29:46', 'male', 'qp5ZwcMCzoGEX9lD1d', '+1-650-935-2129', 'nicolas.celestine@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(772, 15, 4, 13, 8, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alene Jacobi DDS', '1983-04-05 22:36:41', 'male', '38BMsFFE2sESHXLAvt', '1-225-532-6442', 'montana00@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(773, 15, 3, 24, 9, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Kassandra Hilpert', '1997-07-08 19:36:10', 'male', 'L6rEcljat9st0BbKHf', '341.805.2577', 'jerrold56@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(774, 15, 2, 9, 10, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Julien Lind', '1983-08-03 12:46:34', 'female', '16O0DKmMvrMF4m5Jqc', '754-846-3708', 'carter.wuckert@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(775, 15, 2, 25, 6, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dr. Elenora Brown', '1993-09-13 17:35:48', 'female', '9lGtOP0cUuFKLVULNP', '(878) 273-6088', 'kaylah52@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(776, 15, 5, 21, 6, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Winnifred Klein II', '1999-09-19 18:15:34', 'male', 'qJj1chn0gm6fx8Go0v', '+18704495228', 'herman.schinner@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(777, 15, 9, 5, 3, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Lupe Ritchie', '1993-07-27 14:37:21', 'female', 'haHIi8g1fVYY3JZFeV', '1-463-905-1806', 'malika.kreiger@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(778, 15, 7, 10, 7, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sally Stehr', '1991-12-30 04:23:10', 'male', 'IHO19DmxXrU0oAMbUu', '773.878.4159', 'marianna.dicki@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(779, 15, 12, 18, 3, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Bianka Gaylord IV', '2001-04-21 17:21:49', 'female', 'HD6v5bd4Lof1tLq6mu', '1-480-935-2927', 'udickinson@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(780, 15, 4, 3, 10, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Joesph Goodwin', '1986-01-28 06:42:50', 'male', '24TZgeVvLe8v8EN5GB', '252-449-1498', 'julia75@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(781, 15, 3, 21, 6, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alfred Doyle', '1986-10-21 13:28:27', 'male', 'ka0Ol4e6gMqPWnjpl6', '1-540-334-5039', 'stamm.erwin@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(782, 15, 7, 2, 1, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Anna Stracke', '1994-03-27 17:22:21', 'female', 'zrkufU7MmTDi4kXyW0', '+1-763-332-7343', 'gbahringer@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(783, 15, 3, 11, 2, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Beverly Barton', '2000-01-02 03:27:09', 'male', 'DDjzKBuRaTFwMsOmbm', '731.381.3251', 'huels.jerry@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(784, 15, 7, 19, 3, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dameon Mills', '1991-01-22 19:11:31', 'male', 'Kx0JTcFeP7ddNP1sYR', '530.974.2038', 'israel.batz@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(785, 15, 10, 15, 1, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Jovani Jacobs I', '1986-01-28 19:45:24', 'female', 'p2ClubjvSzUcDuyS0j', '330.542.5931', 'runolfsdottir.ralph@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(786, 15, 9, 23, 9, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Marge Berge', '1998-04-22 06:05:03', 'female', 'C16csrMjNvLW6K4PHi', '947-801-8813', 'hammes.cristobal@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39');
INSERT INTO `candidates` (`id`, `role_id`, `job_category_id`, `job_id`, `company_id`, `created_id`, `updated_id`, `pre_medical_id`, `pre_training_id`, `selected_osc_id`, `present_address`, `permanent_address`, `candidate_name`, `candidate_dob`, `candidate_gender`, `passport_number`, `phone_number`, `candidate_email`, `candidate_password`, `country`, `nationality`, `active_status`, `candidate_picture`, `candidate_resume`, `passport`, `pre_medical_certificate`, `pre_traning_certificate`, `created_by`, `updated_by`, `pre_updated_dt`, `pre_medical_report`, `pre_training_report`, `pre_medical_dt`, `pre_training_dt`, `pre_medical_comments`, `pre_training_comments`, `pre_medical_status`, `pre_training_status`, `approval_status`, `payment_assigned`, `status`, `result_status`, `permission_status`, `sending_status`, `offer_letter`, `employer_comments`, `offered_status`, `created_at`, `updated_at`) VALUES
(787, 15, 13, 12, 3, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nasir Robel', '1989-05-04 03:03:08', 'male', 'bKbkWoRXu6nHz4kOqv', '212-291-0628', 'emil35@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(788, 15, 6, 4, 1, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Abigayle Connelly', '1991-12-16 11:44:41', 'male', 'PWHJsgt3N4bVLIfGzV', '+1-747-498-9010', 'akonopelski@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(789, 15, 10, 14, 6, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tressa Corkery', '1982-05-03 12:30:47', 'female', 'LiyuYQtUgAuaXf4hh6', '1-509-509-2669', 'whitney63@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(790, 15, 11, 4, 10, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ariane Buckridge', '2000-12-18 04:42:21', 'male', 'JA6rGaVSGVwUTyQYIf', '+1 (432) 208-2314', 'gcrist@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(791, 15, 3, 21, 7, 28, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Cleve McCullough', '1991-08-03 00:14:01', 'female', '1d4Qhq0Cu7TQQ0xSef', '+12184836140', 'rigoberto.white@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(792, 15, 4, 6, 5, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Renee Doyle', '1983-05-15 19:45:32', 'female', '6KluYcp5ipECvhzXmN', '952-451-7284', 'margarett.kub@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(793, 15, 1, 3, 1, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Walton O\'Kon', '1996-03-05 04:45:39', 'male', 'xa97SC1PXKWLavGuSq', '+1 (704) 238-5982', 'srutherford@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(794, 15, 8, 22, 10, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Josh Kutch', '1990-09-09 15:42:09', 'female', 'EfuCDMGpB7jOrAKNF2', '+1 (859) 786-6952', 'qward@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(795, 15, 7, 23, 3, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Sid Reichel', '1991-06-16 13:33:59', 'male', 'aSFfe8DapMv7ilOeMk', '(740) 956-1488', 'carter.monte@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(796, 15, 2, 7, 5, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Tillman Von', '1993-11-16 21:50:57', 'female', 'LQxhUDGjedzqysFaR4', '(430) 997-0767', 'brakus.ewald@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(797, 15, 11, 17, 1, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Patricia Predovic', '1993-09-12 21:02:03', 'female', 'HbGtmHqnuXk0x45cFQ', '(838) 275-1440', 'gutmann.emerald@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(798, 15, 1, 12, 3, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Miss Nedra Lubowitz', '1988-10-08 22:37:50', 'female', 'hMIpDbcd9IIsjvHKGf', '478-645-4326', 'dangelo.braun@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(799, 15, 3, 14, 4, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Pinkie Hayes', '1984-11-29 10:15:42', 'female', 'jJ0n5nYGeASGmj0VVB', '1-480-830-8958', 'cdare@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(800, 15, 12, 17, 7, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Nichole Gibson V', '1989-11-30 06:08:31', 'female', 'k3IIOG4zPoXnQ0p3II', '423.710.1372', 'otto44@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(801, 15, 13, 9, 1, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Candido Leffler', '2001-01-10 14:32:13', 'female', '8WUf5vTqjXpw2qT9E4', '802.978.0262', 'lakin.carmela@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(802, 15, 4, 9, 9, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Darren Stroman', '1982-12-08 18:24:48', 'female', 'lySIHVzEOhx0gD4TTt', '(424) 607-7316', 'cstiedemann@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(803, 15, 10, 23, 8, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Harmon Oberbrunner', '1985-09-10 12:06:24', 'male', 'QrMaeoYYwLhKAnYfY7', '618-624-0296', 'arnold09@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(804, 15, 11, 8, 4, 32, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Patsy Feil', '1999-12-04 10:17:51', 'male', 'pRdya04TqkrslDHWIf', '406-420-7839', 'bartell.emmett@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(805, 15, 7, 14, 4, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Jaydon Feeney', '2001-05-26 22:45:19', 'female', 'qOzC6iymCnUOvu2OhO', '734-206-5985', 'schulist.maxime@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(806, 15, 7, 15, 6, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Dashawn Doyle', '1982-08-20 11:38:06', 'female', 'xz79Cp5oVtEEo01xhC', '1-682-538-9756', 'wilkinson.christa@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(807, 15, 2, 22, 9, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Ms. Shea Anderson DVM', '1988-01-13 05:51:31', 'female', '4WxB4lSPizSUdz4muX', '(520) 782-7236', 'zstreich@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(808, 15, 2, 21, 4, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Estevan Kihn', '1982-09-15 11:41:55', 'female', 'WLRzvlzLOl01IAoS44', '920-583-4532', 'julien.strosin@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(809, 15, 2, 24, 1, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Daphney Mertz DDS', '1992-05-20 22:13:35', 'female', 'PhyvEwqWh7tEyOylVw', '1-530-571-2700', 'witting.kaley@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(810, 15, 1, 5, 8, 29, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Alivia Hickle MD', '1991-08-29 09:53:37', 'male', 'RkJVJXlE0jRx9WpWu1', '+14074752069', 'garrett24@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(811, 15, 1, 2, 5, 30, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Tressa Botsford PhD', '1984-08-20 18:03:37', 'male', 'PAUinI6XRzEidfJthB', '+1-458-327-3605', 'rgleichner@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(812, 15, 4, 5, 2, 31, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Violette Koepp I', '2001-06-20 07:21:23', 'male', '6FSd0l7SMKCABeaovp', '1-541-300-6321', 'quinton.runolfsdottir@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(813, 15, 4, 3, 7, 33, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Karli Schinner', '1999-08-10 01:12:18', 'male', '77PJx0yG8lz9ScXKLP', '+1 (631) 931-5357', 'raegan50@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(814, 15, 6, 13, 10, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Rod Jenkins', '1987-07-24 21:21:51', 'female', 'OAuOrsr8aOcbCOG7rV', '+1 (949) 303-4694', 'gjenkins@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(815, 15, 1, 16, 5, 37, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mr. Donato Trantow', '1985-09-16 23:24:29', 'male', '8HeAhLqiLVUc639wfR', '+1-985-529-9463', 'gleason.jamil@example.org', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 0, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(816, 15, 6, 19, 7, 34, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Evans Hessel', '1991-05-10 05:56:16', 'male', 'VXNRlxW3N4IlCeqhtS', '+1-478-728-3229', 'percival.roberts@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(817, 15, 5, 18, 10, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Wyatt Eichmann', '1983-04-26 21:10:36', 'male', '2fMisuEkSIR4DkYtcN', '+13126326006', 'angus.parisian@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 1, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(818, 15, 12, 15, 7, 36, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Prof. Francis Schuster', '1987-12-15 16:13:33', 'male', 'FdnwLKo88ZOWLHbuV4', '1-640-816-0586', 'cicero.goldner@example.net', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39'),
(819, 15, 4, 9, 5, 35, NULL, NULL, NULL, NULL, 'dhaka bangladesh', 'dhaka bangladesh', 'Mrs. Emma Gutkowski', '1991-05-21 00:13:27', 'male', 'PasOtJrNOTEaAHce9P', '662-434-8095', 'efren.gorczany@example.com', NULL, NULL, 'bangladesh', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', 'New', 2, NULL, NULL, NULL, 1, '2022-03-07 12:14:39', '2022-03-07 12:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `change_employer_services`
--

CREATE TABLE `change_employer_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
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
(1, 13, 8, 6, '306037', NULL, 'Demo Comments', 'Open', 'Open', 12, 15, 'Banani Dhaka', 'Door delivery', NULL, 16, NULL, '2022-03-07 12:14:40', NULL),
(2, 17, 8, 6, '422806', NULL, 'Demo Comments', 'Open', 'Open', 14, 18, 'Banani Dhaka', 'Door delivery', NULL, 16, NULL, '2022-03-07 12:14:40', NULL),
(3, 12, 8, 6, '158266', NULL, 'Demo Comments', 'Open', 'Open', 19, 15, 'Banani Dhaka', 'Door delivery', NULL, 13, NULL, '2022-03-07 12:14:40', NULL),
(4, 12, 8, 6, '472282', NULL, 'Demo Comments', 'Open', 'Open', 15, 11, 'Banani Dhaka', 'Door delivery', NULL, 17, NULL, '2022-03-07 12:14:40', NULL),
(5, 11, 8, 6, '265231', NULL, 'Demo Comments', 'Open', 'Open', 15, 12, 'Banani Dhaka', 'Door delivery', NULL, 19, NULL, '2022-03-07 12:14:40', NULL),
(6, 16, 8, 6, '172208', NULL, 'Demo Comments', 'Open', 'Open', 16, 15, 'Banani Dhaka', 'Door delivery', NULL, 12, NULL, '2022-03-07 12:14:40', NULL),
(7, 12, 8, 6, '135648', NULL, 'Demo Comments', 'Open', 'Open', 12, 15, 'Banani Dhaka', 'Door delivery', NULL, 16, NULL, '2022-03-07 12:14:40', NULL),
(8, 14, 8, 6, '355145', NULL, 'Demo Comments', 'Open', 'Open', 17, 16, 'Banani Dhaka', 'Door delivery', NULL, 18, NULL, '2022-03-07 12:14:40', NULL),
(9, 12, 8, 6, '465473', NULL, 'Demo Comments', 'Open', 'Open', 16, 19, 'Banani Dhaka', 'Door delivery', NULL, 12, NULL, '2022-03-07 12:14:40', NULL);

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
(1, 15, 8, 6, '499855', 'Demo Services', 287.00, 'Door delivery', 54.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 18, NULL, '2022-03-07 12:14:39', NULL),
(2, 17, 8, 6, '114123', 'Demo Services', 481.00, 'Door delivery', 58.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 15, NULL, '2022-03-07 12:14:39', NULL),
(3, 14, 8, 6, '286468', 'Demo Services', 431.00, 'Door delivery', 55.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 19, NULL, '2022-03-07 12:14:39', NULL),
(4, 11, 8, 6, '171704', 'Demo Services', 360.00, 'Door delivery', 51.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 15, NULL, '2022-03-07 12:14:39', NULL),
(5, 11, 8, 6, '495966', 'Demo Services', 144.00, 'Door delivery', 56.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 18, NULL, '2022-03-07 12:14:40', NULL),
(6, 19, 8, 6, '396039', 'Demo Services', 328.00, 'Door delivery', 56.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 18, NULL, '2022-03-07 12:14:40', NULL),
(7, 13, 8, 6, '271156', 'Demo Services', 266.00, 'Door delivery', 52.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 16, NULL, '2022-03-07 12:14:40', NULL),
(8, 13, 8, 6, '301217', 'Demo Services', 452.00, 'Door delivery', 60.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 16, NULL, '2022-03-07 12:14:40', NULL),
(9, 17, 8, 6, '263952', 'Demo Services', 297.00, 'Door delivery', 56.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 17, NULL, '2022-03-07 12:14:40', NULL);

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
(1, 16, 8, 6, 'Demo candidate 11', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 15, NULL, '2022-03-07 12:14:40', NULL),
(2, 12, 8, 6, 'Demo candidate 12', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 12, NULL, '2022-03-07 12:14:40', NULL),
(3, 16, 8, 6, 'Demo candidate 13', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 19, NULL, '2022-03-07 12:14:40', NULL),
(4, 15, 8, 6, 'Demo candidate 14', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 14, NULL, '2022-03-07 12:14:40', NULL),
(5, 16, 8, 6, 'Demo candidate 15', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 12, NULL, '2022-03-07 12:14:40', NULL),
(6, 13, 8, 6, 'Demo candidate 16', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 19, NULL, '2022-03-07 12:14:40', NULL),
(7, 19, 8, 6, 'Demo candidate 17', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 15, NULL, '2022-03-07 12:14:40', NULL),
(8, 11, 8, 6, 'Demo candidate 18', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 15, NULL, '2022-03-07 12:14:40', NULL),
(9, 12, 8, 6, 'Demo candidate 19', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 11, NULL, '2022-03-07 12:14:40', NULL);

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
(1, 1, 'kamrulGroup0', 'kamrul Group 0', 'company0@gmail.com', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(2, 2, 'kamrulGroup1', 'kamrul Group 1', 'company1@gmail.com', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(3, 3, 'kamrulGroup2', 'kamrul Group 2', 'company2@gmail.com', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(4, 4, 'kamrulGroup3', 'kamrul Group 3', 'company3@gmail.com', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(5, 5, 'kamrulGroup4', 'kamrul Group 4', 'company4@gmail.com', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(6, 6, 'kamrulGroup5', 'kamrul Group 5', 'company5@gmail.com', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(7, 7, 'kamrulGroup6', 'kamrul Group 6', 'company6@gmail.com', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(8, 8, 'kamrulGroup7', 'kamrul Group 7', 'company7@gmail.com', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(9, 9, 'kamrulGroup8', 'kamrul Group 8', 'company8@gmail.com', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(10, 10, 'kamrulGroup9', 'kamrul Group 9', 'company9@gmail.com', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34');

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
(2, '355', 'Albania(+355)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(3, '213', 'Algeria (+213)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(4, '684', 'American Samoa(+684)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(5, '376', 'Andorra (+376)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(6, '244', 'Angola (+244)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(7, '1264', 'Anguilla (+1264)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(8, '672', 'Antarctica(+672)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(9, '1268', 'Antigua & Barbuda (+1268)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(10, '54', 'Argentina (+54)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(11, '374', 'Armenia (+374)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(12, '297', 'Aruba (+297)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(13, '61', 'Australia (+61)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(14, '43', 'Austria (+43)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(15, '994', 'Azerbaijan (+994)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(16, '1242', 'Bahamas (+1242)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(17, '973', 'Bahrain (+973)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(18, '880', 'Bangladesh (+880)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(19, '1246', 'Barbados (+1246)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(20, '375', 'Belarus (+375)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(21, '32', 'Belgium (+32)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(22, '501', 'Belize (+501)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(23, '229', 'Benin (+229)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(24, '1441', 'Bermuda (+1441)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(25, '975', 'Bhutan (+975)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(26, '591', 'Bolivia (+591)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(27, '387', 'Bosnia Herzegovina (+387)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(28, '267', 'Botswana (+267)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(30, '55', 'Brazil (+55)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(31, '246', 'British Indian Ocean Territory(+246)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(32, '673', 'Brunei (+673)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(33, '359', 'Bulgaria (+359)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(34, '226', 'Burkina Faso (+226)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(35, '257', 'Burundi (+257)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(36, '855', 'Cambodia (+855)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(37, '237', 'Cameroon (+237)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(38, '1', 'Canada (+1)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(39, '238', 'Cape Verde Islands (+238)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(40, '1345', 'Cayman Islands (+1345)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(41, '236', 'Central African Republic (+236)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(42, '235', 'Chad(+235)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(43, '56', 'Chile (+56)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(44, '86', 'China (+86)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(47, '57', 'Colombia (+57)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(48, '269', 'Comoros (+269)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(49, '242', 'Congo (+242)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(50, '243', 'Congo The Democratic Republic Of The(+243)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(51, '682', 'Cook Islands (+682)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(52, '506', 'Costa Rica (+506)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(53, '225', 'Cote D\'Ivoire (Ivory Coast)(+225)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(54, '385', 'Croatia (+385)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(55, '53', 'Cuba (+53)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(56, '90392', 'Cyprus North (+90392)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(57, '42', 'Czech Republic (+42)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(58, '45', 'Denmark (+45)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(59, '253', 'Djibouti (+253)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(60, '1809', 'Dominica (+1809)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(62, '670', 'East Timor(+670)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(63, '593', 'Ecuador (+593)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(64, '20', 'Egypt (+20)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(65, '503', 'El Salvador (+503)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(66, '240', 'Equatorial Guinea (+240)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(67, '291', 'Eritrea (+291)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(68, '372', 'Estonia (+372)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(69, '251', 'Ethiopia (+251)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(71, '500', 'Falkland Islands (+500)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(72, '298', 'Faroe Islands (+298)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(73, '679', 'Fiji (+679)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(74, '358', 'Finland (+358)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(75, '33', 'France (+33)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(76, '594', 'French Guiana (+594)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(77, '689', 'French Polynesia (+689)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(78, '262', 'French Southern Territories(262)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(79, '241', 'Gabon (+241)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(80, '220', 'Gambia (+220)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(81, '7880', 'Georgia (+7880)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(82, '49', 'Germany (+49)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(83, '233', 'Ghana (+233)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(84, '350', 'Gibraltar (+350)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(85, '30', 'Greece (+30)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(86, '299', 'Greenland (+299)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(87, '1473', 'Grenada (+1473)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(88, '590', 'Guadeloupe (+590)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(89, '671', 'Guam (+671)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(90, '502', 'Guatemala (+502)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(91, '44', 'Guernsey and Alderney(44 1481)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(92, '224', 'Guinea (+224)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(93, '245', 'Guinea - Bissau (+245)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(94, '592', 'Guyana (+592)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(95, '509', 'Haiti (+509)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(97, '504', 'Honduras (+504)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(98, '852', 'Hong Kong (+852)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(99, '36', 'Hungary (+36)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(100, '354', 'Iceland (+354)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(101, '91', 'India (+91)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(102, '62', 'Indonesia (+62)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(103, '98', 'Iran (+98)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(104, '964', 'Iraq (+964)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(105, '353', 'Ireland (+353)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(106, '972', 'Israel (+972)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(107, '39', 'Italy (+39)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(108, '1876', 'Jamaica (+1876)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(109, '81', 'Japan (+81)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(111, '962', 'Jordan (+962)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(112, '7', 'Kazakhstan (+7)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(113, '254', 'Kenya (+254)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(114, '686', 'Kiribati (+686)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(115, '850', 'Korea North (+850)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(116, '82', 'Korea South (+82)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(117, '965', 'Kuwait (+965)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(118, '996', 'Kyrgyzstan (+996)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(119, '856', 'Laos (+856)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(120, '371', 'Latvia (+371)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(121, '961', 'Lebanon (+961)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(122, '266', 'Lesotho (+266)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(123, '231', 'Liberia (+231)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(124, '218', 'Libya (+218)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(125, '417', 'Liechtenstein (+417)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(126, '370', 'Lithuania (+370)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(127, '352', 'Luxembourg (+352)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(128, '853', 'Macao (+853)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(129, '389', 'Macedonia (+389)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(130, '261', 'Madagascar (+261)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(131, '265', 'Malawi (+265)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(132, '60', 'Malaysia (+60)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(133, '960', 'Maldives (+960)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(134, '223', 'Mali (+223)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(135, '356', 'Malta (+356)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(137, '692', 'Marshall Islands (+692)', 'active', '2022-03-07 12:14:33', '2022-03-07 12:14:33'),
(138, '596', 'Martinique (+596)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(139, '222', 'Mauritania (+222)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(140, '230', 'Mauritius(+230)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(142, '52', 'Mexico (+52)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(143, '691', 'Micronesia (+691)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(144, '373', 'Moldova (+373)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(145, '377', 'Monaco (+377)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(146, '976', 'Mongolia (+976)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(147, '1664', 'Montserrat (+1664)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(148, '212', 'Morocco (+212)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(149, '258', 'Mozambique (+258)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(150, '95', 'Myanmar(+95)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(151, '264', 'Namibia (+264)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(152, '674', 'Nauru (+674)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(153, '977', 'Nepal (+977)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(154, '599', 'Netherlands Antilles(+599)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(155, '31', 'Netherlands (+31)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(156, '687', 'New Caledonia (+687)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(157, '64', 'New Zealand (+64)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(158, '505', 'Nicaragua (+505)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(159, '227', 'Niger (+227)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(160, '234', 'Nigeria (+234)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(161, '683', 'Niue (+683)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(164, '47', 'Norway (+47)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(165, '968', 'Oman (+968)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(166, '92', 'Pakistan(+92)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(167, '680', 'Palau (+680)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(168, '970', 'Palestinian Territory Occupied(+970)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(169, '507', 'Panama (+507)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(170, '675', 'Papua New Guinea (+675)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(171, '595', 'Paraguay (+595)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(172, '51', 'Peru (+51)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(173, '63', 'Philippines (+63)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(175, '48', 'Poland (+48)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(176, '351', 'Portugal (+351)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(177, '1787', 'Puerto Rico (+1787)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(178, '974', 'Qatar (+974)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(180, '40', 'Romania (+40)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(182, '250', 'Rwanda (+250)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(183, '290', 'St. Helena (+290)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(184, '1869', 'St. Kitts (+1869)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(185, '1758', 'Saint Lucia(+1758)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(186, '508', 'Saint Pierre and Miquelon(+508)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(187, '1784', 'Saint Vincent And The Grenadines(+1784)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(188, '685', 'Samoa(+685)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(189, '378', 'San Marino (+378)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(190, '239', 'Sao Tome & Principe (+239)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(191, '966', 'Saudi Arabia (+966)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(192, '221', 'Senegal (+221)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(193, '381', 'Serbia(+381)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(194, '248', 'Seychelles (+248)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(195, '232', 'Sierra Leone (+232)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(196, '65', 'Singapore (+65)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(197, '421', 'Slovak Republic (+421)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(198, '386', 'Slovenia (+386)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(200, '677', 'Solomon Islands (+677)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(201, '252', 'Somalia (+252)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(202, '27', 'South Africa (+27)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(204, '211', 'South Sudan(+211)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(205, '34', 'Spain (+34)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(206, '94', 'Sri Lanka (+94)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(207, '249', 'Sudan (+249)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(208, '597', 'Suriname (+597)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(210, '268', 'Swaziland (+268)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(211, '46', 'Sweden (+46)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(212, '41', 'Switzerland (+41)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(213, '963', 'Syria(+963)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(214, '886', 'Taiwan (+886)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(216, '255', 'Tanzania(+255)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(217, '66', 'Thailand (+66)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(218, '228', 'Togo (+228)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(219, '690', 'Tokelau(+690)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(220, '676', 'Tonga (+676)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(221, '1868', 'Trinidad & Tobago (+1868)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(222, '216', 'Tunisia (+216)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(223, '90', 'Turkey (+90)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(225, '1649', 'Turks & Caicos Islands (+1649)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(226, '688', 'Tuvalu (+688)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(227, '256', 'Uganda (+256)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(228, '380', 'Ukraine (+380)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(229, '971', 'United Arab Emirates (+971)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(233, '598', 'Uruguay (+598)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(235, '678', 'Vanuatu (+678)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(236, '379', 'Vatican City (+379)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(237, '58', 'Venezuela (+58)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(238, '84', 'Vietnam (+84)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(241, '681', 'Wallis & Futuna (+681)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(243, '969', 'Yemen (North)(+969)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(244, '38', 'Yugoslavia(+38)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(245, '260', 'Zambia (+260)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(246, '263', 'Zimbabwe (+263)', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
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
(1, 6, 'Demo candidate 11', 'Demo Co. name 11', 'Demo name 11', 'Brother', NULL, '1742', '2027-03-07 18:14:40', '1324', '2027-03-07 18:14:40', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '18177756', 'Demo Comments', 'Open', '13', NULL, '2022-03-07 12:14:40', NULL),
(2, 6, 'Demo candidate 12', 'Demo Co. name 12', 'Demo name 12', 'Brother', NULL, '1460', '2027-03-07 18:14:40', '1455', '2027-03-07 18:14:40', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '15876474', 'Demo Comments', 'Open', '13', NULL, '2022-03-07 12:14:40', NULL),
(3, 6, 'Demo candidate 13', 'Demo Co. name 13', 'Demo name 13', 'Brother', NULL, '1883', '2027-03-07 18:14:40', '1717', '2027-03-07 18:14:40', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '16170904', 'Demo Comments', 'Open', '16', NULL, '2022-03-07 12:14:40', NULL),
(4, 6, 'Demo candidate 14', 'Demo Co. name 14', 'Demo name 14', 'Brother', NULL, '1966', '2027-03-07 18:14:40', '1117', '2027-03-07 18:14:40', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '17674776', 'Demo Comments', 'Open', '14', NULL, '2022-03-07 12:14:40', NULL),
(5, 6, 'Demo candidate 15', 'Demo Co. name 15', 'Demo name 15', 'Brother', NULL, '1494', '2027-03-07 18:14:40', '1137', '2027-03-07 18:14:40', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '15800366', 'Demo Comments', 'Open', '11', NULL, '2022-03-07 12:14:40', NULL),
(6, 6, 'Demo candidate 16', 'Demo Co. name 16', 'Demo name 16', 'Brother', NULL, '1301', '2027-03-07 18:14:40', '1248', '2027-03-07 18:14:40', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '16437685', 'Demo Comments', 'Open', '16', NULL, '2022-03-07 12:14:40', NULL),
(7, 6, 'Demo candidate 17', 'Demo Co. name 17', 'Demo name 17', 'Brother', NULL, '1349', '2027-03-07 18:14:40', '1867', '2027-03-07 18:14:40', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '14325201', 'Demo Comments', 'Open', '18', NULL, '2022-03-07 12:14:40', NULL),
(8, 6, 'Demo candidate 18', 'Demo Co. name 18', 'Demo name 18', 'Brother', NULL, '1910', '2027-03-07 18:14:40', '1554', '2027-03-07 18:14:40', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '17709266', 'Demo Comments', 'Open', '19', NULL, '2022-03-07 12:14:40', NULL),
(9, 6, 'Demo candidate 19', 'Demo Co. name 19', 'Demo name 19', 'Brother', NULL, '1049', '2027-03-07 18:14:40', '1983', '2027-03-07 18:14:40', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '19375174', 'Demo Comments', 'Open', '17', NULL, '2022-03-07 12:14:40', NULL);

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
(1, 'vRSxY5R6OB', 'active', NULL, NULL),
(2, 'hgCQl4PyZj', 'active', NULL, NULL),
(3, 'WOSTWnaJC1', 'active', NULL, NULL),
(4, 'o27J2jFnmw', 'active', NULL, NULL),
(5, 'U6oPziNomU', 'active', NULL, NULL),
(6, 'hgZAu6Xze4', 'active', NULL, NULL),
(7, 'pwxXO5mcUS', 'active', NULL, NULL),
(8, '9W322fBtWh', 'active', NULL, NULL),
(9, 'UdqDpwy3Lc', 'active', NULL, NULL),
(10, 'jwLkvsdGRE', 'active', NULL, NULL),
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
(1, 19, 6, 6, 'Demo Candidate 0', 'Demo Company 0', '25086', '21223', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-07 12:14:39', NULL),
(2, 15, 6, 6, 'Demo Candidate 1', 'Demo Company 1', '5442', '37291', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-07 12:14:39', NULL),
(3, 11, 6, 6, 'Demo Candidate 2', 'Demo Company 2', '21302', '11625', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-07 12:14:39', NULL),
(4, 19, 6, 6, 'Demo Candidate 3', 'Demo Company 3', '13215', '5759', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-07 12:14:39', NULL),
(5, 13, 6, 6, 'Demo Candidate 4', 'Demo Company 4', '7736', '5268', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-07 12:14:39', NULL),
(6, 13, 6, 6, 'Demo Candidate 5', 'Demo Company 5', '43220', '14099', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-07 12:14:39', NULL),
(7, 18, 6, 6, 'Demo Candidate 6', 'Demo Company 6', '6406', '39877', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-07 12:14:39', NULL),
(8, 14, 6, 6, 'Demo Candidate 7', 'Demo Company 7', '48974', '13253', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-07 12:14:39', NULL),
(9, 18, 6, 6, 'Demo Candidate 8', 'Demo Company 8', '33429', '10631', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-07 12:14:39', NULL),
(10, 17, 6, 6, 'Demo Candidate 9', 'Demo Company 9', '7175', '43080', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-07 12:14:39', NULL);

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
(1, 19, 8, 6, 'Demo service 11', '10573667', NULL, 'Demo Comments', 'Open', '13', NULL, '2022-03-07 12:14:40', NULL),
(2, 14, 8, 6, 'Demo service 12', '18407918', NULL, 'Demo Comments', 'Open', '12', NULL, '2022-03-07 12:14:40', NULL),
(3, 16, 8, 6, 'Demo service 13', '18822909', NULL, 'Demo Comments', 'Open', '16', NULL, '2022-03-07 12:14:40', NULL),
(4, 14, 8, 6, 'Demo service 14', '10005170', NULL, 'Demo Comments', 'Open', '14', NULL, '2022-03-07 12:14:40', NULL),
(5, 15, 8, 6, 'Demo service 15', '17907142', NULL, 'Demo Comments', 'Open', '13', NULL, '2022-03-07 12:14:40', NULL),
(6, 11, 8, 6, 'Demo service 16', '15418148', NULL, 'Demo Comments', 'Open', '16', NULL, '2022-03-07 12:14:40', NULL),
(7, 15, 8, 6, 'Demo service 17', '18537666', NULL, 'Demo Comments', 'Open', '19', NULL, '2022-03-07 12:14:40', NULL),
(8, 13, 8, 6, 'Demo service 18', '15369523', NULL, 'Demo Comments', 'Open', '18', NULL, '2022-03-07 12:14:40', NULL),
(9, 19, 8, 6, 'Demo service 19', '13130302', NULL, 'Demo Comments', 'Open', '12', NULL, '2022-03-07 12:14:40', NULL);

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
(1, 12, 8, 6, 'Demo service 11', 'Demo Comments', 'Approved', 'Approved', '105', 1056.00, 'Dhaka bonani', NULL, 'Door delivery', '13', NULL, '2022-03-07 12:14:40', NULL),
(2, 13, 8, 6, 'Demo service 12', 'Demo Comments', 'Approved', 'Approved', '166', 1609.00, 'Dhaka bonani', NULL, 'Door delivery', '14', NULL, '2022-03-07 12:14:40', NULL),
(3, 18, 8, 6, 'Demo service 13', 'Demo Comments', 'Approved', 'Approved', '166', 1099.00, 'Dhaka bonani', NULL, 'Door delivery', '15', NULL, '2022-03-07 12:14:40', NULL),
(4, 11, 8, 6, 'Demo service 14', 'Demo Comments', 'Approved', 'Approved', '132', 1301.00, 'Dhaka bonani', NULL, 'Door delivery', '14', NULL, '2022-03-07 12:14:40', NULL),
(5, 18, 8, 6, 'Demo service 15', 'Demo Comments', 'Approved', 'Approved', '198', 1768.00, 'Dhaka bonani', NULL, 'Door delivery', '16', NULL, '2022-03-07 12:14:40', NULL),
(6, 15, 8, 6, 'Demo service 16', 'Demo Comments', 'Approved', 'Approved', '185', 1610.00, 'Dhaka bonani', NULL, 'Door delivery', '17', NULL, '2022-03-07 12:14:40', NULL),
(7, 19, 8, 6, 'Demo service 17', 'Demo Comments', 'Approved', 'Approved', '141', 1450.00, 'Dhaka bonani', NULL, 'Door delivery', '13', NULL, '2022-03-07 12:14:40', NULL),
(8, 17, 8, 6, 'Demo service 18', 'Demo Comments', 'Approved', 'Approved', '155', 1037.00, 'Dhaka bonani', NULL, 'Door delivery', '19', NULL, '2022-03-07 12:14:40', NULL),
(9, 14, 8, 6, 'Demo service 19', 'Demo Comments', 'Approved', 'Approved', '115', 1977.00, 'Dhaka bonani', NULL, 'Door delivery', '19', NULL, '2022-03-07 12:14:40', NULL);

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
(1, 11, 8, 6, 8, 'Mr. Person 11', 'Brother ', '1986', '2027-03-07 18:14:40', '1507', '2027-03-07 18:14:40', 'Couse of Arrest', 'Demo Police Station', '2022-03-02 18:14:40', NULL, 'Demo Comments', '10', 'Open', NULL, '2022-03-07 12:14:40', NULL),
(2, 12, 8, 6, 6, 'Mr. Person 12', 'Brother ', '1651', '2027-03-07 18:14:40', '1036', '2027-03-07 18:14:40', 'Couse of Arrest', 'Demo Police Station', '2022-03-02 18:14:40', NULL, 'Demo Comments', '8', 'Open', NULL, '2022-03-07 12:14:40', NULL),
(3, 13, 8, 6, 8, 'Mr. Person 13', 'Brother ', '1793', '2027-03-07 18:14:40', '1501', '2027-03-07 18:14:40', 'Couse of Arrest', 'Demo Police Station', '2022-03-02 18:14:40', NULL, 'Demo Comments', '5', 'Open', NULL, '2022-03-07 12:14:40', NULL),
(4, 14, 8, 6, 8, 'Mr. Person 14', 'Brother ', '1985', '2027-03-07 18:14:40', '1381', '2027-03-07 18:14:40', 'Couse of Arrest', 'Demo Police Station', '2022-03-02 18:14:40', NULL, 'Demo Comments', '7', 'Open', NULL, '2022-03-07 12:14:40', NULL),
(5, 15, 8, 6, 4, 'Mr. Person 15', 'Brother ', '1108', '2027-03-07 18:14:40', '1694', '2027-03-07 18:14:40', 'Couse of Arrest', 'Demo Police Station', '2022-03-02 18:14:40', NULL, 'Demo Comments', '17', 'Open', NULL, '2022-03-07 12:14:40', NULL),
(6, 16, 8, 6, 1, 'Mr. Person 16', 'Brother ', '1307', '2027-03-07 18:14:40', '1170', '2027-03-07 18:14:40', 'Couse of Arrest', 'Demo Police Station', '2022-03-02 18:14:40', NULL, 'Demo Comments', '9', 'Open', NULL, '2022-03-07 12:14:40', NULL),
(7, 17, 8, 6, 9, 'Mr. Person 17', 'Brother ', '1636', '2027-03-07 18:14:40', '1806', '2027-03-07 18:14:40', 'Couse of Arrest', 'Demo Police Station', '2022-03-02 18:14:40', NULL, 'Demo Comments', '18', 'Open', NULL, '2022-03-07 12:14:40', NULL),
(8, 18, 8, 6, 3, 'Mr. Person 18', 'Brother ', '1497', '2027-03-07 18:14:40', '1967', '2027-03-07 18:14:40', 'Couse of Arrest', 'Demo Police Station', '2022-03-02 18:14:40', NULL, 'Demo Comments', '15', 'Open', NULL, '2022-03-07 12:14:40', NULL),
(9, 19, 8, 6, 12, 'Mr. Person 19', 'Brother ', '1824', '2027-03-07 18:14:40', '1971', '2027-03-07 18:14:40', 'Couse of Arrest', 'Demo Police Station', '2022-03-02 18:14:40', NULL, 'Demo Comments', '15', 'Open', NULL, '2022-03-07 12:14:40', NULL);

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
(1, 'Software Engineer', 'Active', '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(2, 'Painter', 'Active', '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(3, 'Driver', 'Active', '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(4, 'Factory Worker', 'Active', '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(5, 'Labour', 'Active', '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(6, 'Civil Engineer', 'Active', '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(7, 'Mechanical engineer', 'Active', '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(8, 'Electrical engineer', 'Active', '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(9, 'Sales Man', 'Active', '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(10, 'Office Assistant', 'Active', '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(11, 'Computer Operator', 'Active', '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(12, 'Doctor', 'Active', '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(13, 'Data Enterer', 'Active', '2022-03-07 12:14:36', '2022-03-07 12:14:36');

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

--
-- Dumping data for table `job_distribute_in_b_r_a_s`
--

INSERT INTO `job_distribute_in_b_r_a_s` (`id`, `job_post_id`, `bra_id`, `bra_interest_id`, `distributed_vacancy`, `memp_status`, `created_at`, `updated_at`) VALUES
(1, 31, 5, 1, '31', NULL, NULL, NULL),
(2, 31, 18, 2, '30', NULL, NULL, NULL);

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
(1, 7, 24, 6, 'Full Time', 'Male only', '26', '35260', 'Dhaka Bangladesh', 63, NULL, '2022-03-07 18:14:36', 0x63774f3950356c4e7848, 5, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-07 12:14:36', NULL),
(2, 12, 22, 6, 'Full Time', 'Male only', '22', '6584', 'Dhaka Bangladesh', 85, NULL, '2022-03-07 18:14:36', 0x504156636d3255535163, 6, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-07 12:14:36', NULL),
(3, 12, 26, 6, 'Full Time', 'Male only', '32', '28935', 'Dhaka Bangladesh', 92, NULL, '2022-03-07 18:14:36', 0x597171346952796a5875, 7, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-07 12:14:36', NULL),
(4, 10, 18, 6, 'Full Time', 'Male only', '50', '43246', 'Dhaka Bangladesh', 86, NULL, '2022-03-07 18:14:36', 0x66715676333537434861, 8, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-07 12:14:36', NULL),
(5, 7, 18, 6, 'Full Time', 'Male only', '29', '27219', 'Dhaka Bangladesh', 96, NULL, '2022-03-07 18:14:36', 0x525a7375746738477341, 8, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-07 12:14:36', NULL),
(6, 8, 21, 6, 'Full Time', 'Male only', '25', '14145', 'Dhaka Bangladesh', 85, NULL, '2022-03-07 18:14:36', 0x41437238466541626150, 4, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-07 12:14:36', NULL),
(7, 8, 25, 6, 'Full Time', 'Male only', '26', '30508', 'Dhaka Bangladesh', 61, NULL, '2022-03-07 18:14:36', 0x676d624951304c53764c, 7, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-07 12:14:36', NULL),
(8, 12, 19, 6, 'Full Time', 'Male only', '34', '49398', 'Dhaka Bangladesh', 99, NULL, '2022-03-07 18:14:36', 0x50324970685a6d4f5a47, 7, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-07 12:14:36', NULL),
(9, 5, 22, 6, 'Full Time', 'Male only', '44', '40774', 'Dhaka Bangladesh', 63, NULL, '2022-03-07 18:14:36', 0x526c67393573624a7147, 3, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-07 12:14:36', NULL),
(10, 6, 20, 6, 'Full Time', 'Male only', '38', '30445', 'Dhaka Bangladesh', 95, NULL, '2022-03-07 18:14:36', 0x566a3848563274774664, 5, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'New', 'Approved', '2022-03-07 12:14:36', NULL),
(11, 12, 6, 6, 'ghnUK65YD3', 'Male only', '43', '5537', 'pg254GRuvc', 39, NULL, '2022-03-07 18:14:36', 0x45614b6361735676486b, 4, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-07 12:14:36', NULL),
(12, 5, 6, 6, '2UquI1KTeG', 'Male only', '35', '20135', 'Ytz61aCXcg', 33, NULL, '2022-03-07 18:14:36', 0x58706530526c374b6835, 6, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-07 12:14:36', NULL),
(13, 7, 6, 6, '48iL1WBW40', 'Male only', '38', '38206', 'kinLKRFTmS', 34, NULL, '2022-03-07 18:14:36', 0x554e384c485471336e57, 2, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-07 12:14:36', NULL),
(14, 8, 6, 6, 'PRhRDXCxxk', 'Male only', '41', '19916', 'NLHcc1iZkD', 32, NULL, '2022-03-07 18:14:36', 0x784871777868626d784d, 10, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-07 12:14:36', NULL),
(15, 6, 6, 6, 'w7YDAVhU1u', 'Male only', '46', '37651', 'vm88AX3K2S', 35, NULL, '2022-03-07 18:14:36', 0x30727335637441414f71, 10, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-07 12:14:36', NULL),
(16, 9, 6, 6, 'xR180RqUmX', 'Male only', '20', '49147', 'L8N4gSArMI', 40, NULL, '2022-03-07 18:14:36', 0x4158796474336d7a676d, 5, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-07 12:14:36', NULL),
(17, 7, 6, 6, 'mXNljdBmqn', 'Male only', '35', '30807', 'SAQJAMmtGK', 27, NULL, '2022-03-07 18:14:36', 0x63677663515942506662, 4, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-07 12:14:36', NULL),
(18, 10, 6, 6, 'c31FU2ce3F', 'Male only', '35', '35462', 'yfb1WVKhn9', 22, NULL, '2022-03-07 18:14:36', 0x43354c636e50614f5369, 7, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-07 12:14:36', NULL),
(19, 10, 6, 6, 'D4meq2Dlyk', 'Male only', '20', '12644', 'uGr1xryqse', 40, NULL, '2022-03-07 18:14:36', 0x706d5441574762743552, 1, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-07 12:14:36', NULL),
(20, 8, 6, 6, '77DSEOYPo4', 'Male only', '35', '20866', 'JOu2IyFE5q', 40, NULL, '2022-03-07 18:14:36', 0x4e46585757777a594567, 9, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-07 12:14:36', NULL),
(21, 8, 6, 6, 'tMwbzslRPB', 'Male only', '47', '40029', 'azyBjoMTqO', 43, NULL, '2022-03-07 18:14:36', 0x4f52755a7a454c794771, 4, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-07 12:14:36', NULL),
(22, 12, 6, 6, 'VxVQRAddKN', 'Male only', '47', '13726', 'HMTUkELs2y', 37, NULL, '2022-03-07 18:14:36', 0x633464676a496d314542, 10, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-07 12:14:36', NULL),
(23, 7, 6, 6, 'SVdXRio6yL', 'Male only', '43', '5452', '9xqvCMjqyu', 39, NULL, '2022-03-07 18:14:36', 0x6439726a6c6250344546, 3, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-07 12:14:36', NULL),
(24, 8, 6, 6, 'XH0x4qKbNr', 'Male only', '31', '25178', 'M9OEikveBw', 46, NULL, '2022-03-07 18:14:36', 0x4934637a6d44354b6644, 5, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-07 12:14:36', NULL),
(25, 6, 6, 6, 'hoT7oYSBH1', 'Male only', '27', '46731', '9ZVBP47biw', 37, NULL, '2022-03-07 18:14:36', 0x5957416273734b377633, 4, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-07 12:14:36', NULL),
(26, 6, 6, 6, 'C4ErpoQ9z2', 'Male only', '47', '30872', 'kzEGGVUIVu', 42, NULL, '2022-03-07 18:14:36', 0x6b69384979317a6f5432, 4, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-07 12:14:36', NULL),
(27, 8, 6, 6, 'nGmSpPTDEa', 'Male only', '50', '13002', 'vg7JtXsRqo', 33, NULL, '2022-03-07 18:14:36', 0x337a5536375959386f65, 8, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-07 12:14:36', NULL),
(28, 9, 6, 6, '0TOAbE3Nnc', 'Male only', '25', '42539', '2r6EUof5rW', 38, NULL, '2022-03-07 18:14:36', 0x6c52744853444e427062, 3, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-07 12:14:36', NULL),
(29, 7, 6, 6, 'MGuOM7LC2B', 'Male only', '29', '15995', 'wzKQHLaQ2p', 21, NULL, '2022-03-07 18:14:36', 0x35364c6a495050455637, 6, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-07 12:14:36', NULL),
(30, 12, 6, 6, 'Pfftaf3Kla', 'Male only', '37', '16365', 'CAHmLLLGdU', 23, NULL, '2022-03-07 18:14:36', 0x4a306a4d676578475a4a, 8, NULL, NULL, '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-07 12:14:36', NULL),
(31, 11, 8, 8, 'Full Time', 'Male only', '20', '10317', 'Kuala lampur , Malaysia', 61, NULL, '2022-03-07 18:14:36', NULL, NULL, NULL, 'self', '2022-03-07 18:14:36', '2022-03-07 18:14:36', NULL, 0, 0, 0, 0, 'Approved', NULL, 'Approved', 'Approved', NULL, NULL);

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
(1, 16, 8, 6, 'Demo Service', 'Open', '19', NULL, '2022-03-07 12:14:39', NULL),
(2, 19, 8, 6, 'Demo Service', 'Open', '15', NULL, '2022-03-07 12:14:39', NULL),
(3, 11, 8, 6, 'Demo Service', 'Open', '18', NULL, '2022-03-07 12:14:39', NULL),
(4, 17, 8, 6, 'Demo Service', 'Open', '18', NULL, '2022-03-07 12:14:39', NULL),
(5, 17, 8, 6, 'Demo Service', 'Open', '12', NULL, '2022-03-07 12:14:39', NULL),
(6, 17, 8, 6, 'Demo Service', 'Open', '17', NULL, '2022-03-07 12:14:39', NULL),
(7, 17, 8, 6, 'Demo Service', 'Open', '13', NULL, '2022-03-07 12:14:39', NULL),
(8, 12, 8, 6, 'Demo Service', 'Open', '11', NULL, '2022-03-07 12:14:39', NULL),
(9, 11, 8, 6, 'Demo Service', 'Open', '11', NULL, '2022-03-07 12:14:39', NULL);

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
(1, 11, 6, 6, 2, '25873', '15576', '18953', 'J9O5dpJjjYW7yeAkS9EktbEVmk8csO5ayze9iK3zvMbDoNULMi', '92tVAK7yh6xFIXbqSIw8BO5I4JVr6ryx2q49lflZK89PmJnimD', '74', '39828', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-07 12:14:39', NULL),
(2, 19, 6, 6, 2, '46764', '16407', '13028', '3USrrB50X28o3RoPn8ai7omZBx8Fl2CgdR8nqYAsbJMCNfcBzw', '0r03HduNLeNoQtInjUqFmoMUIZzJp3LW0JkV5qugFAlQNWHGm8', '299', '15244', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-07 12:14:39', NULL),
(3, 19, 6, 6, 2, '8408', '28163', '14086', 'Y05tm2iOA3d1CJtyTaCdrOFUzPhb8F9otf1U0i4AP0z5dQwx6y', '43gxD4W9oJ49QhDSatF3PnExKISFW4Q5asNfWPBryyotuh0oKH', '303', '6902', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-07 12:14:39', NULL),
(4, 14, 6, 6, 2, '6640', '30277', '30091', 'DnZgfiLpq6uVt3IK09nmjog9rcLxCJhesWkn9wXYPh0gLykasO', 'GNRqPDacUELJ6ahBqqXQSr2KVur899RK6e3xmKAy2xUy07P8PK', '107', '17306', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-07 12:14:39', NULL),
(5, 12, 6, 6, 2, '48937', '10453', '22179', 'MgJnyguTOeylKrCR4tF5B5FwOVyM9NC66gldhgFXSrdboEa10o', 'BXYDyyWOlDlAR5etdy8YsjRrMD9LPGmE1KryvIaOaPZt3BnC2F', '149', '31171', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-07 12:14:39', NULL),
(6, 15, 6, 6, 2, '27186', '14353', '33468', '8lpkliC3rgrmzuMBBC4FkDMySJARyyHbo8tpJ7nYeGKiYo43bt', 'tPeAX0IQHBcgUNHWXf8T03hmmSOFvhsFdYnBt4Nu5MxO6tfxES', '383', '48411', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-07 12:14:39', NULL),
(7, 18, 6, 6, 2, '37796', '35409', '13292', 'eNThatQshMK7MyiGcjWvFUNYsZWbyuOBVeSU4VkNZRZkc0qhJV', 'fC05sQLxEi9siFPLCMyOM05dpdWRPMFzJWv8ScgQLT0CJ4NHk8', '95', '24184', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-07 12:14:39', NULL),
(8, 18, 6, 6, 2, '5837', '16929', '32356', 'Wqa2GMtDFiKiXLoT9b8UQwzROUyiD7FiRUxOZuxXWGopf1pAJr', 'uPJjQmG6xmXuKpkIdb8652DEehU9P9NB6mHQ06MhiB9c2mNDCd', '102', '7160', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-07 12:14:39', NULL),
(9, 14, 6, 6, 2, '30561', '29154', '16248', '1ob1kSXyysSQCXx9hwNFqLMOfGksWkFD5KCKpYEOZu6RdrIBKa', 'WokKPe6VArOlfikIKPEF2WTfEynPHdf9azCfwU3ohxhW2cDKG3', '183', '34352', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-07 12:14:39', NULL),
(10, 16, 6, 6, 2, '45000', '42312', '18401', 'TcIxCUuy3adXgilJKuILykfm2xe15lgO5TXbWxNXt6poSg4hmb', 'M4O9hPcvIHaFAX4FjGA0RKNoe1zmJIWjY8da9dFs3qxf20bzZI', '450', '28029', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-07 12:14:39', NULL);

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
(1, 18, 1, 6, 'Demo name 11', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '12970490', NULL, 'Demo Comments', 'Open', '15', NULL, '2022-03-07 12:14:40', NULL),
(2, 12, 1, 6, 'Demo name 12', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '19712969', NULL, 'Demo Comments', 'Open', '18', NULL, '2022-03-07 12:14:40', NULL),
(3, 15, 1, 6, 'Demo name 13', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '17886846', NULL, 'Demo Comments', 'Open', '11', NULL, '2022-03-07 12:14:40', NULL),
(4, 15, 1, 6, 'Demo name 14', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '11884362', NULL, 'Demo Comments', 'Open', '19', NULL, '2022-03-07 12:14:40', NULL),
(5, 18, 1, 6, 'Demo name 15', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '18844886', NULL, 'Demo Comments', 'Open', '19', NULL, '2022-03-07 12:14:40', NULL),
(6, 13, 1, 6, 'Demo name 16', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '12055723', NULL, 'Demo Comments', 'Open', '19', NULL, '2022-03-07 12:14:40', NULL),
(7, 13, 1, 6, 'Demo name 17', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '12768902', NULL, 'Demo Comments', 'Open', '12', NULL, '2022-03-07 12:14:40', NULL),
(8, 14, 1, 6, 'Demo name 18', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '14960634', NULL, 'Demo Comments', 'Open', '18', NULL, '2022-03-07 12:14:40', NULL),
(9, 15, 1, 6, 'Demo name 19', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '19448360', NULL, 'Demo Comments', 'Open', '17', NULL, '2022-03-07 12:14:40', NULL);

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
(1, 11, 8, 6, 'Demo Guest Name11', '6', 'Demo service namwe11', '2022-03-02 18:14:40', 'Qatar Airlines', '1748', '2022-03-12 18:14:40', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-07 12:14:40', NULL),
(2, 12, 8, 6, 'Demo Guest Name12', '5', 'Demo service namwe12', '2022-03-02 18:14:40', 'Qatar Airlines', '1175', '2022-03-12 18:14:40', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-07 12:14:40', NULL),
(3, 13, 8, 6, 'Demo Guest Name13', '6', 'Demo service namwe13', '2022-03-02 18:14:40', 'Qatar Airlines', '1271', '2022-03-12 18:14:40', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-07 12:14:40', NULL),
(4, 14, 8, 6, 'Demo Guest Name14', '10', 'Demo service namwe14', '2022-03-02 18:14:40', 'Qatar Airlines', '1029', '2022-03-12 18:14:40', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-07 12:14:40', NULL),
(5, 15, 8, 6, 'Demo Guest Name15', '10', 'Demo service namwe15', '2022-03-02 18:14:40', 'Qatar Airlines', '1327', '2022-03-12 18:14:40', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-07 12:14:40', NULL),
(6, 16, 8, 6, 'Demo Guest Name16', '9', 'Demo service namwe16', '2022-03-02 18:14:40', 'Qatar Airlines', '1571', '2022-03-12 18:14:40', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-07 12:14:40', NULL),
(7, 17, 8, 6, 'Demo Guest Name17', '6', 'Demo service namwe17', '2022-03-02 18:14:40', 'Qatar Airlines', '1086', '2022-03-12 18:14:40', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-07 12:14:40', NULL),
(8, 18, 8, 6, 'Demo Guest Name18', '10', 'Demo service namwe18', '2022-03-02 18:14:40', 'Qatar Airlines', '1068', '2022-03-12 18:14:40', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-07 12:14:40', NULL),
(9, 19, 8, 6, 'Demo Guest Name19', '6', 'Demo service namwe19', '2022-03-02 18:14:40', 'Qatar Airlines', '1909', '2022-03-12 18:14:40', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-07 12:14:40', NULL);

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
(1, 18, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '10248', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-07 12:14:39', NULL),
(2, 13, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '42870', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-07 12:14:39', NULL),
(3, 17, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '18243', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-07 12:14:39', NULL),
(4, 16, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '22780', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-07 12:14:39', NULL),
(5, 16, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '43246', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-07 12:14:39', NULL),
(6, 13, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '27705', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-07 12:14:39', NULL),
(7, 11, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '42487', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-07 12:14:39', NULL),
(8, 15, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '16559', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-07 12:14:39', NULL),
(9, 15, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '34424', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-07 12:14:39', NULL),
(10, 19, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '8204', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-07 12:14:39', NULL);

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
  `post_medical_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `post_medical_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'New,Pass,Fail',
  `post_training_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'New,Pass,Fail',
  `post_medical_report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_training_report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_fee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `training_fee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_medical_comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `offered_candidates` (`id`, `candidate_id`, `job_post_id`, `job_category_id`, `created_id`, `interview_osc_id`, `selected_osc_id`, `post_medical_id`, `post_biometric_id`, `post_training_id`, `travel_agency_id`, `welfare_center_id`, `candidate_name`, `phone_number`, `candidate_email`, `candidate_user_id`, `candidate_password`, `result_status`, `active_status`, `employer_comments`, `offer_letter`, `payment_assigned`, `payment_method`, `interview_result`, `biometric_fee`, `bio_status`, `bio_report`, `post_medical_status`, `post_training_status`, `post_medical_report`, `post_training_report`, `medical_fee`, `training_fee`, `post_medical_comments`, `post_training_comments`, `visa_document`, `visa_reason`, `travel_status`, `date_of_journey`, `flight_number`, `ticket_cost`, `ticket_pdf`, `activated_at`, `created_at`, `updated_at`) VALUES
(1, 11, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Mr. candidate 11', '01850030511', 'candidate11@gmail.com', NULL, NULL, 'Recommended', NULL, 'aPsMPYnXpT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'New', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(2, 12, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Mr. candidate 12', '01850030512', 'candidate12@gmail.com', NULL, NULL, 'Recommended', NULL, '6RjCbzr1Ka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(3, 13, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Mr. candidate 13', '01850030513', 'candidate13@gmail.com', NULL, NULL, 'Recommended', NULL, 'ictxABv5pI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(4, 14, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Mr. candidate 14', '01850030514', 'candidate14@gmail.com', NULL, NULL, 'Recommended', NULL, 'T4xBoOeqYL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(5, 15, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Mr. candidate 15', '01850030515', 'candidate15@gmail.com', NULL, NULL, 'Recommended', NULL, '1DqvTWiTKd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(6, 16, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Mr. candidate 16', '01850030516', 'candidate16@gmail.com', NULL, NULL, 'Recommended', NULL, 'HoU0XGIvWw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(7, 17, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Mr. candidate 17', '01850030517', 'candidate17@gmail.com', NULL, NULL, 'Recommended', NULL, 'XGveS8RlWr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(8, 18, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Mr. candidate 18', '01850030518', 'candidate18@gmail.com', NULL, NULL, 'Recommended', NULL, 'gLJmZsfFab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(9, 19, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Mr. candidate 19', '01850030519', 'candidate19@gmail.com', NULL, NULL, 'Recommended', NULL, 'KIupMz4wet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:36', '2022-03-07 12:14:36');

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
(1, 11, 8, 6, 'Demo service 11', '198612', 'Demo Comments', NULL, 'Open', NULL, 179.00, '90', 'Door delivery', 'Banani Dhaka', 'Open', '11', NULL, '2022-03-07 12:14:40', NULL),
(2, 16, 8, 6, 'Demo service 12', '361790', 'Demo Comments', NULL, 'Open', NULL, 141.00, '80', 'Door delivery', 'Banani Dhaka', 'Open', '13', NULL, '2022-03-07 12:14:40', NULL),
(3, 15, 8, 6, 'Demo service 13', '152415', 'Demo Comments', NULL, 'Open', NULL, 141.00, '87', 'Door delivery', 'Banani Dhaka', 'Open', '11', NULL, '2022-03-07 12:14:40', NULL),
(4, 11, 8, 6, 'Demo service 14', '251775', 'Demo Comments', NULL, 'Open', NULL, 128.00, '83', 'Door delivery', 'Banani Dhaka', 'Open', '16', NULL, '2022-03-07 12:14:40', NULL),
(5, 17, 8, 6, 'Demo service 15', '310708', 'Demo Comments', NULL, 'Open', NULL, 176.00, '80', 'Door delivery', 'Banani Dhaka', 'Open', '14', NULL, '2022-03-07 12:14:40', NULL),
(6, 16, 8, 6, 'Demo service 16', '422736', 'Demo Comments', NULL, 'Open', NULL, 201.00, '84', 'Door delivery', 'Banani Dhaka', 'Open', '11', NULL, '2022-03-07 12:14:40', NULL),
(7, 18, 8, 6, 'Demo service 17', '484313', 'Demo Comments', NULL, 'Open', NULL, 190.00, '82', 'Door delivery', 'Banani Dhaka', 'Open', '12', NULL, '2022-03-07 12:14:40', NULL),
(8, 11, 8, 6, 'Demo service 18', '421266', 'Demo Comments', NULL, 'Open', NULL, 138.00, '83', 'Door delivery', 'Banani Dhaka', 'Open', '13', NULL, '2022-03-07 12:14:40', NULL),
(9, 11, 8, 6, 'Demo service 19', '329103', 'Demo Comments', NULL, 'Open', NULL, 230.00, '88', 'Door delivery', 'Banani Dhaka', 'Open', '16', NULL, '2022-03-07 12:14:40', NULL);

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
(1, 8, 17, 6, 'Demo service 11', 'Demo Comments', 'Paid', 'Door delivery', '123', NULL, 'Bonani Dhaka', '15', 1289.00, 12, NULL, '2022-03-07 12:14:40', NULL),
(2, 8, 15, 6, 'Demo service 12', 'Demo Comments', 'Paid', 'Door delivery', '133', NULL, 'Bonani Dhaka', '16', 1755.00, 12, NULL, '2022-03-07 12:14:40', NULL),
(3, 8, 19, 6, 'Demo service 13', 'Demo Comments', 'Paid', 'Door delivery', '193', NULL, 'Bonani Dhaka', '11', 1754.00, 16, NULL, '2022-03-07 12:14:40', NULL),
(4, 8, 16, 6, 'Demo service 14', 'Demo Comments', 'Paid', 'Door delivery', '185', NULL, 'Bonani Dhaka', '11', 1224.00, 13, NULL, '2022-03-07 12:14:40', NULL),
(5, 8, 14, 6, 'Demo service 15', 'Demo Comments', 'Paid', 'Door delivery', '137', NULL, 'Bonani Dhaka', '13', 1781.00, 19, NULL, '2022-03-07 12:14:40', NULL),
(6, 8, 14, 6, 'Demo service 16', 'Demo Comments', 'Paid', 'Door delivery', '169', NULL, 'Bonani Dhaka', '16', 1846.00, 19, NULL, '2022-03-07 12:14:40', NULL),
(7, 8, 19, 6, 'Demo service 17', 'Demo Comments', 'Paid', 'Door delivery', '166', NULL, 'Bonani Dhaka', '15', 1903.00, 19, NULL, '2022-03-07 12:14:40', NULL),
(8, 8, 16, 6, 'Demo service 18', 'Demo Comments', 'Paid', 'Door delivery', '124', NULL, 'Bonani Dhaka', '18', 1718.00, 14, NULL, '2022-03-07 12:14:40', NULL),
(9, 8, 17, 6, 'Demo service 19', 'Demo Comments', 'Paid', 'Door delivery', '172', NULL, 'Bonani Dhaka', '15', 1789.00, 16, NULL, '2022-03-07 12:14:40', NULL);

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
(1, 'Super admin', 'super-admin', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(2, 'Malaysian Employer', 'malaysian-employer', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(3, 'Welfare service center company', 'welfare-service-center-company', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(4, 'Bangladeshi High Commission', 'bangladesh-high-commission', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(5, 'Master One stop service', 'master-one-stop-service', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(6, 'Child One stop service', 'child-one-stop-service', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(7, 'Medical Agency', 'medical-agency', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(8, 'Training Agency', 'training-agency', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(9, 'travel agency', 'travel-agency', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(10, 'Biometric Agency', 'biometric-agency', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(11, 'Bangladesh Recruiting Agency', 'bangladesh-recruiting-agency', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(12, 'Bangladeshi admin', 'bangladeshi-admin', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(13, 'Employer', 'employer', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(14, 'Malaysia Admin', 'malaysia-admin', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(15, 'Malaysia Embassy', 'malaysia-embassy', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(16, 'Candidate', 'candidate', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(17, 'Malaysia Recruiting Agency', 'malaysia-recruiting-agency', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(18, 'Call Center', 'call-center', 'active', '2022-03-07 12:14:34', '2022-03-07 12:14:34');

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
(1, 'logo', 'uploads/images/logo.png', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(2, 'no_image', 'uploads/images/setting/no-image.png', '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(3, 'user', 'uploads/images/setting/user.png', '2022-03-07 12:14:34', '2022-03-07 12:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `submitted_travel_enquiries`
--

CREATE TABLE `submitted_travel_enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enquiry_id` bigint(20) UNSIGNED NOT NULL,
  `journey_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_tickets` int(11) DEFAULT NULL,
  `submitted_cost` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, 4, '2022-03-09 18:14:39', 2, '20000', 'Demo Comments', 3, '2022-03-07 18:14:39', 'New', NULL, NULL),
(2, 4, '2022-03-09 18:14:39', 2, '20000', 'Demo Comments', 3, '2022-03-07 18:14:39', 'New', NULL, NULL),
(3, 3, '2022-03-09 18:14:39', 2, '20000', 'Demo Comments', 3, '2022-03-07 18:14:39', 'New', NULL, NULL),
(4, 5, '2022-03-09 18:14:39', 2, '20000', 'Demo Comments', 3, '2022-03-07 18:14:39', 'New', NULL, NULL),
(5, 2, '2022-03-09 18:14:39', 2, '20000', 'Demo Comments', 3, '2022-03-07 18:14:39', 'New', NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_enquiries`
--

INSERT INTO `travel_enquiries` (`id`, `oss_id`, `start_point`, `end_point`, `tickets_required`, `date_of_journey`, `end_date`, `oss_comments`, `enquiry_status`, `created_date`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 11, 'Dhaka Bangladesh', 'Kuala Lumpur, Malaysia', '2', '2022-03-09 18:14:39', '2022-03-14 18:14:39', 'Demo Comment', 'New', '2022-03-07 18:14:39', NULL, '2022-03-07 12:14:39', NULL),
(2, 11, 'Dhaka Bangladesh', 'Kuala Lumpur, Malaysia', '2', '2022-03-09 18:14:39', '2022-03-14 18:14:39', 'Demo Comment', 'New', '2022-03-07 18:14:39', NULL, '2022-03-07 12:14:39', NULL),
(3, 11, 'Dhaka Bangladesh', 'Kuala Lumpur, Malaysia', '2', '2022-03-09 18:14:39', '2022-03-14 18:14:39', 'Demo Comment', 'New', '2022-03-07 18:14:39', NULL, '2022-03-07 12:14:39', NULL),
(4, 11, 'Dhaka Bangladesh', 'Kuala Lumpur, Malaysia', '2', '2022-03-09 18:14:39', '2022-03-14 18:14:39', 'Demo Comment', 'New', '2022-03-07 18:14:39', NULL, '2022-03-07 12:14:39', NULL),
(5, 11, 'Dhaka Bangladesh', 'Kuala Lumpur, Malaysia', '2', '2022-03-09 18:14:39', '2022-03-14 18:14:39', 'Demo Comment', 'New', '2022-03-07 18:14:39', NULL, '2022-03-07 12:14:39', NULL);

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
(1, 1, 2, 'Super admin', 'sa@gmail.com', NULL, '$2y$10$24ObqxARssCUafbe69i6i.yNJ0HiY0RKqbbitwBkY7bbmVgxVsHTu', 'super-admin', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(2, 12, 2, 'Bangladesh admin', 'ba@gmail.com', NULL, '$2y$10$UCBcfjDaKhLmeCVJP179Cei0GB0PR0OLPjxKrupxz35F2lwdjptJm', 'bangladeshi-admin', 'Approved', NULL, NULL, 'Bangladesh admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(3, 9, 2, 'Travel Agency', 'travel@gmail.com', NULL, '$2y$10$VP.2kfetKXLrh.5oX5nKb.MEHa9aNy8sEx0VsPyqXdAE/Fta3zRb.', 'travel-agency', 'Approved', NULL, NULL, 'Travel Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(4, 10, 2, 'Biometric Agency', 'bio@gmail.com', NULL, '$2y$10$Xi2DAzfXUElAT.mB39JoOeY4Caii.gpGse0RZ475ZWj9jLC.G71Wa', 'biometric-agency', 'Approved', NULL, NULL, 'Biometric Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(5, 11, 2, 'Bangladesh Recruiting agency', 'bra@gmail.com', NULL, '$2y$10$oGVapAds/ZvBmvv276mKMuz2DE9ZEin4QhaVY/6oqrY4XqC9KPHEK', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Bangladesh Recruiting agency', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(6, 3, 2, 'Welfare sevice centre', 'wsc@gmail.com', NULL, '$2y$10$VS.dU3Gi64iXco4gDvastuCmN3jLvSsu1HLx1tmr/ai97G/r47Y3S', 'welfare-service-center-company', 'Approved', NULL, NULL, 'Welfare sevice centre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(7, 5, 2, 'Master One stop service', 'moss@gmail.com', NULL, '$2y$10$cIbgC81yUfasBmkE2MRQn.9mACk8XJOIe6Szptg00LL2u1p4x/VIe', 'master-one-stop-service', 'Approved', NULL, NULL, 'Master One stop service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(8, 2, 2, 'Malaysian Employer', 'malaysianemployer@gmail.com', NULL, '$2y$10$rpG7AnCEPFjNvU6cVF6oMeHWpgV.WB.fndF2zsCDtteA/SwVvLGkC', 'malaysian-employer', 'Approved', NULL, NULL, 'Malaysian Employer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(9, 4, 2, 'Bangladesh High Commission ', 'bhc@gmail.com', NULL, '$2y$10$3Gj3IU8lZAG4pe8pWcIKduYesPAVi9uhbjsWzTZioQpf/DwImCxs.', 'bangladesh-high-commission', 'Approved', NULL, NULL, 'Bangladesh High Commission ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(10, 14, 2, 'Malaysia Admin', 'malaysiaadmin@gmail.com', NULL, '$2y$10$U2fWvJwO2W06AjDbkmGhy.snHdtdNhSb6lASk2x4RsbDWA0CCPiEy', 'malaysia-admin', 'Approved', NULL, NULL, 'Malaysia Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(11, 6, 2, 'Child One Stop Service', 'coss@gmail.com', NULL, '$2y$10$YeNHPjOu9jqn1adj3hXKLegO.qFtY2SqpV3yh4M2GCTqF.L.Iq4kC', 'child-one-stop-service', 'Approved', NULL, NULL, 'Child One Stop Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:34', '2022-03-07 12:14:34'),
(12, 7, 2, 'Medical Agency', 'ma@gmail.com', NULL, '$2y$10$CmG/aFGuAnaV0C37XgsdoO7esc/0A4JU0lZbHs6Zpb3eKtvoSVdBK', 'medical-agency', 'Approved', NULL, NULL, 'Medical Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(13, 8, 2, 'Training Agency', 'ta@gmail.com', NULL, '$2y$10$D95ZMa3z29.dB4TI3UDW8u/RrgFsaOUmmLddt115siGqPexQ6dWpy', 'training-agency', 'Approved', NULL, NULL, 'Training Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(14, 15, 2, 'Malaysia Embassy', 'me@gmail.com', NULL, '$2y$10$L/T.4WWRItfpOlNJfsUUzu4VxooHVRMZA/4D1CvE1xaJkF4XhqC7C', 'malaysia-embassy', 'Approved', NULL, NULL, 'Malaysia Embassy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(15, 16, 2, 'Candidate', 'candidate@gmail.com', NULL, '$2y$10$mcZu2ZfxL8oIxwTkxPJhM.T7i6I1f70L9XkgVyTNU2kXQLX6uvyqS', 'candidate', 'Approved', NULL, NULL, 'Candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(16, 17, 2, 'Malaysia Recruiting Agency', 'mra@gmail.com', NULL, '$2y$10$OKP/4T78KhaYqkpjw.qYJ.BSsrHV56ldL1mxVsKJMgIshv1eeSLlu', 'malaysia-recruiting-agency', 'Approved', NULL, NULL, 'Malaysia Recruiting Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(17, 11, 18, 'Sonet Recruiting Agency BD', 'srab@gmail.com', NULL, '$2y$10$Cb3HValIJ4wUrF6AqwLXy.88W3i19HlJRR4WHLnUawQJiu0/Kh75i', '', 'Approved', NULL, 'srab.com', 'Sonet Recruiting Agency BD', '1313164', 'Sonet Recruiting Agency BD', '01487984654987', 'Dhaka', 'Dhaka', 'Dhaka fokirapul', 'Dkaha banglamotor', 'uploads/profile/vogkW72ZyKCZX5D50xjm-1646218057.png', 'uploads/profile/VRlWh9l1mzJVK2GyvZZ0-1646218058.pdf', NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(18, 2, 2, 'Versatlilo London', 'versatlilolondon@gmail.com', NULL, '$2y$10$m9We/56f/ypSeC4YuEB/Ou.v/WYy/UxenvVCdnwA4Xp5K4nIoZJ9q', 'malaysian-employer', 'Approved', NULL, NULL, 'Versatlilo London', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(19, 2, 2, 'Kamrul Group', 'kamrulgroup@gmail.com', NULL, '$2y$10$I9hvizLCgjFrxlY10R2yF.Ir4pSx6DvA9LxgpP.9JacayKzTCmyIK', 'malaysian-employer', 'Approved', NULL, NULL, 'Kamrul Group', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(20, 2, 2, 'TFP Solutions (Malaysia)', 'tfp-solutions-malaysia@gmail.com', NULL, '$2y$10$/WuuneJcDc.xFuoIVsH0DOXzaMMC8XVBfDIZRdkq2bqWkYjoSsLUa', 'malaysian-employer', 'Approved', NULL, NULL, 'TFP Solutions (Malaysia)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(21, 2, 2, 'Kamrul Agro Industries Ltd.', 'kamrul-agro@gmail.com', NULL, '$2y$10$vH6elz5ttEQqSztescf8ROxidHE82DP6dlVYz9AXXOUbBj3IyXwtK', 'malaysian-employer', 'Approved', NULL, NULL, 'Kamrul Agro Industries Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(22, 2, 2, 'Kamrul Food Industries Ltd.', 'kamrul-food@gmail.com', NULL, '$2y$10$y9fppXhCOH4tD.L2qkVtJOGzDZXd6BeYcQ0Sy4ZQKm8VWWqx9pMwO', 'malaysian-employer', 'Approved', NULL, NULL, 'Kamrul Food Industries Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(23, 2, 2, 'Meastro Soft Ltd.', 'meastro-soft@gmail.com', NULL, '$2y$10$ws8770I.sQT0HTgJj5ppdOyk3zGOEygmcxrLNyYRt2sIjhbUw.Ihy', 'malaysian-employer', 'Approved', NULL, NULL, 'Meastro Soft Ltd.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(24, 2, 2, 'Maestro Crown College', 'maestro-crown-college@gmail.com', NULL, '$2y$10$KWz8cAuLMYc.YJxXV5khOuS1Eub82Xt0hgHOCwCsD9s7gLbKpkRZ2', 'malaysian-employer', 'Approved', NULL, NULL, 'Maestro Crown College', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(25, 2, 2, 'Tap and Pay WLL.Bahrain', 'tap-and-pay@gmail.com', NULL, '$2y$10$621417bPbRzvJUMSwlkoK.t2tlbTjMBKuq82TTRyd3hlSSfxDNngu', 'malaysian-employer', 'Approved', NULL, NULL, 'Tap and Pay WLL.Bahrain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(26, 2, 2, 'DRB-Hicom Berhad.', 'drb-hicom-berhad@gmail.com', NULL, '$2y$10$w25tIGhSSTkxWGYS9Jl4e.wOSluFJwDvG6WDOxRg68aC4BVpoJlNe', 'malaysian-employer', 'Approved', NULL, NULL, 'DRB-Hicom Berhad.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(27, 2, 2, 'Honda Motor Co.', 'honda-motor-co.@gmail.com', NULL, '$2y$10$nvJA2EzXIRPmNjE7LrhnieUpTmSgAsw.cWvAM.QTo7COX63Hd5hS6', 'malaysian-employer', 'Approved', NULL, NULL, 'Honda Motor Co.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(28, 2, 2, 'A-Plus International', 'a-plus-international@gmail.com', NULL, '$2y$10$L7zXjKQQFk1Pqa5TeWxBluzm/kdaa.uLa1jI7u4AJMjXUv9HEpEc2', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'A-Plus International', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(29, 2, 2, 'Eastern Bay Bangladesh', 'Eastern-Bay-Bangladesh@gmail.com', NULL, '$2y$10$0XOPQyjR9z1Yct/fu/61UupK5aaBEmtNI4TW2Ij.pIGGUD9sldbXS', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Eastern Bay Bangladesh', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(30, 2, 2, 'Simplex International', 'simplex-international@gmail.com', NULL, '$2y$10$0RVCf72wwFqGAEhw4VLaf.WWv3mOK5oULYzj7SvPiXKbvt/J.nK.S', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Simplex International', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:35', '2022-03-07 12:14:35'),
(31, 2, 2, 'Sarkar Recruiting Agency Ltd.', 'sarkar-recruiting-ggency-ltd.@gmail.com', NULL, '$2y$10$.6urhA9oFBO0CdVWqPxQ7OWTZFDooKuRgdD6zpbO.YXS7VeEZp5M2', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Sarkar Recruiting Agency Ltd.', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(32, 2, 2, 'Golden Arrow Ltd.', 'golden-arrow-ltd@gmail.com', NULL, '$2y$10$TI69qmhCzCT274/MZKEtfO6gN0OjseDIKG7gDie1CoZe3IcDj3wC2', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Golden Arrow Ltd.', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(33, 2, 2, 'Nac International', 'nac-international@gmail.com', NULL, '$2y$10$73gSATuPK/4o7l0v1Z.qd.W53XZdh5q6G.mRY0fxPLjReyHgLLoye', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Nac International', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(34, 2, 2, 'Tribeni International', 'tribeni-international@gmail.com', NULL, '$2y$10$809E5PmAXymrXSatLeMu4uGdX8OOEzPlMfYOe/EYhGpqD/SJl5F36', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Tribeni International', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(35, 2, 2, '	Binimoy International', 'Binimoyinternational@gmail.com', NULL, '$2y$10$sQjqLixv3HOq0cfSlWDipOvhzlrV0RKk7KP2SRIQGpVZYC3A0DE3u', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, '	Binimoy International', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(36, 2, 2, 'Orchid View Ltd.', 'orchid-view-ltd@gmail.com', NULL, '$2y$10$I5wSQa5RM05.CSQTW4wrde6qoUhmDQ9AkQkNcH7moj28D/9q9dz4K', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Orchid View Ltd.', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:36', '2022-03-07 12:14:36'),
(37, 2, 2, 'Kazi International', 'kazi-international@gmail.com', NULL, '$2y$10$J4TZOMW1kInmhosAvyvvPeG1E5TJev4SR6k5ye3JwKD9S5TOvPdma', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Kazi International', '154954897', NULL, NULL, NULL, NULL, 'Banani,Dhaka,Bangladesh', 'Mirpur,Dhaka,Bangladesh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 12:14:36', '2022-03-07 12:14:36');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=820;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
