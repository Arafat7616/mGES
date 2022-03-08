-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 02, 2022 at 04:08 PM
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
(1, 17, 8, 6, 'Demo candidate 11', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '16', NULL, '2022-03-02 15:08:02', NULL),
(2, 19, 8, 6, 'Demo candidate 12', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '17', NULL, '2022-03-02 15:08:02', NULL),
(3, 11, 8, 6, 'Demo candidate 13', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '12', NULL, '2022-03-02 15:08:02', NULL),
(4, 13, 8, 6, 'Demo candidate 14', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '11', NULL, '2022-03-02 15:08:02', NULL),
(5, 11, 8, 6, 'Demo candidate 15', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '11', NULL, '2022-03-02 15:08:02', NULL),
(6, 18, 8, 6, 'Demo candidate 16', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '19', NULL, '2022-03-02 15:08:02', NULL),
(7, 11, 8, 6, 'Demo candidate 17', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '16', NULL, '2022-03-02 15:08:02', NULL),
(8, 17, 8, 6, 'Demo candidate 18', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '16', NULL, '2022-03-02 15:08:02', NULL),
(9, 17, 8, 6, 'Demo candidate 19', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '16', NULL, '2022-03-02 15:08:02', NULL);

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
(1, 18, 8, 6, 'Demo service 11', '459127', NULL, 'Demo Comments', 'Paid', 'Open', '14', 13.00, 'Banani Dhaka', NULL, 'Door delivery', '17', NULL, '2022-03-02 15:08:02', NULL),
(2, 16, 8, 6, 'Demo service 12', '219232', NULL, 'Demo Comments', 'Paid', 'Open', '16', 12.00, 'Banani Dhaka', NULL, 'Door delivery', '16', NULL, '2022-03-02 15:08:02', NULL),
(3, 17, 8, 6, 'Demo service 13', '147204', NULL, 'Demo Comments', 'Paid', 'Open', '11', 18.00, 'Banani Dhaka', NULL, 'Door delivery', '14', NULL, '2022-03-02 15:08:02', NULL),
(4, 11, 8, 6, 'Demo service 14', '111856', NULL, 'Demo Comments', 'Paid', 'Open', '17', 16.00, 'Banani Dhaka', NULL, 'Door delivery', '19', NULL, '2022-03-02 15:08:02', NULL),
(5, 13, 8, 6, 'Demo service 15', '152506', NULL, 'Demo Comments', 'Paid', 'Open', '18', 16.00, 'Banani Dhaka', NULL, 'Door delivery', '15', NULL, '2022-03-02 15:08:02', NULL),
(6, 18, 8, 6, 'Demo service 16', '118082', NULL, 'Demo Comments', 'Paid', 'Open', '13', 17.00, 'Banani Dhaka', NULL, 'Door delivery', '12', NULL, '2022-03-02 15:08:02', NULL),
(7, 15, 8, 6, 'Demo service 17', '163397', NULL, 'Demo Comments', 'Paid', 'Open', '11', 11.00, 'Banani Dhaka', NULL, 'Door delivery', '15', NULL, '2022-03-02 15:08:02', NULL),
(8, 13, 8, 6, 'Demo service 18', '498928', NULL, 'Demo Comments', 'Paid', 'Open', '19', 15.00, 'Banani Dhaka', NULL, 'Door delivery', '19', NULL, '2022-03-02 15:08:02', NULL),
(9, 17, 8, 6, 'Demo service 19', '165546', NULL, 'Demo Comments', 'Paid', 'Open', '15', 16.00, 'Banani Dhaka', NULL, 'Door delivery', '13', NULL, '2022-03-02 15:08:02', NULL);

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
(1, 11, 6, 3, 1, 3, '33', '31', NULL, 'RlgW9fwGxh', '2022-03-02 21:08:02', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 12, 6, 3, 3, 10, '34', '32', NULL, 'KTfMeNUjm5', '2022-03-02 21:08:02', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 13, 6, 3, 9, 9, '24', '22', NULL, 'zXOX1zvoHC', '2022-03-02 21:08:02', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 14, 6, 3, 3, 7, '23', '21', NULL, 'nqnrnRsXld', '2022-03-02 21:08:02', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 15, 6, 3, 9, 7, '37', '35', NULL, 'vyrEC4hfOV', '2022-03-02 21:08:02', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 16, 6, 3, 6, 1, '44', '42', NULL, '7HA1bwTg0s', '2022-03-02 21:08:02', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 17, 6, 3, 5, 10, '33', '31', NULL, 'wazc0kDYda', '2022-03-02 21:08:02', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 18, 6, 3, 9, 8, '45', '43', NULL, 'dV4Urakjts', '2022-03-02 21:08:02', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 19, 6, 3, 3, 7, '33', '31', NULL, 'iUScKFk8kk', '2022-03-02 21:08:02', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 20, 6, 3, 6, 4, '43', '41', NULL, 'UKbSO7zMxk', '2022-03-02 21:08:02', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 21, 6, 3, 2, 7, '31', '29', 'JckBABEb3u', 'aRtr2CwqgE', '2022-03-02 21:08:02', 'Approved', 'Bangladesh High Commission ', 27, '2022-03-02 21:08:02', '1szkZp01fN', 7, 'k5dSi0b6tH', NULL, NULL),
(12, 22, 6, 3, 3, 7, '45', '43', 'd45t9uBGXi', 'hYALuYEGRu', '2022-03-02 21:08:02', 'Approved', 'Bangladesh High Commission ', 41, '2022-03-02 21:08:02', 'RBShjirUdq', 7, 'b6xTnjsoBr', NULL, NULL),
(13, 23, 6, 3, 6, 7, '49', '47', 'xqIjqrhpmC', 'OJ5wXqGsVj', '2022-03-02 21:08:02', 'Approved', 'Bangladesh High Commission ', 45, '2022-03-02 21:08:02', 'ujO4WZ7uWW', 7, 'L6csiJaVL7', NULL, NULL),
(14, 24, 6, 3, 1, 3, '41', '39', 'ibkETVRR4N', 'P1t5VwcWuZ', '2022-03-02 21:08:02', 'Approved', 'Bangladesh High Commission ', 37, '2022-03-02 21:08:02', 'TLZ9worxmY', 7, 'ctohbXocbj', NULL, NULL),
(15, 25, 6, 3, 5, 9, '36', '34', 'OvUDbQOpoq', 'irhySkUhZf', '2022-03-02 21:08:02', 'Approved', 'Bangladesh High Commission ', 32, '2022-03-02 21:08:02', 'TqJ4eTXH67', 7, '734Lx44mo5', NULL, NULL),
(16, 26, 6, 3, 4, 7, '32', '30', '3EZXbxkXYn', 'irlQJEifhK', '2022-03-02 21:08:02', 'Approved', 'Bangladesh High Commission ', 28, '2022-03-02 21:08:02', 'waejUDvBB8', 7, 'K9XYR6zgXE', NULL, NULL),
(17, 27, 6, 3, 10, 5, '40', '38', 'MJbUp3e0UR', 'ZsZ9mZSn1I', '2022-03-02 21:08:02', 'Approved', 'Bangladesh High Commission ', 36, '2022-03-02 21:08:02', '2ezcCPrigG', 7, 'EzdxFfJsx3', NULL, NULL),
(18, 28, 6, 3, 5, 9, '45', '43', 'r4AUg6l9mn', 'rIgj0wdeLm', '2022-03-02 21:08:02', 'Approved', 'Bangladesh High Commission ', 41, '2022-03-02 21:08:02', 'OokYHJvNpd', 7, 'TXKCO5BYvv', NULL, NULL),
(19, 29, 6, 3, 4, 9, '28', '26', '3NcIksZNs2', 'KTSgCbl28a', '2022-03-02 21:08:02', 'Approved', 'Bangladesh High Commission ', 24, '2022-03-02 21:08:02', 'CsKTapJus1', 7, 'pKAePWPpG6', NULL, NULL),
(20, 30, 6, 3, 5, 8, '34', '32', 'pIamRGFK4l', 'a6KqjDN56Z', '2022-03-02 21:08:02', 'Approved', 'Bangladesh High Commission ', 30, '2022-03-02 21:08:02', '4j5diJX3E7', 7, 'eO2m45NkYU', NULL, NULL);

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
(1, 16, 8, 6, 'Demo service 11', 'Demo Comments', 'Approved', 167, 1272.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 12, '12', NULL, '2022-03-02 15:08:02', NULL),
(2, 14, 8, 6, 'Demo service 12', 'Demo Comments', 'Approved', 134, 1279.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 16, '18', NULL, '2022-03-02 15:08:02', NULL),
(3, 13, 8, 6, 'Demo service 13', 'Demo Comments', 'Approved', 195, 1130.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 18, '12', NULL, '2022-03-02 15:08:02', NULL),
(4, 12, 8, 6, 'Demo service 14', 'Demo Comments', 'Approved', 106, 1248.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 19, '15', NULL, '2022-03-02 15:08:02', NULL),
(5, 19, 8, 6, 'Demo service 15', 'Demo Comments', 'Approved', 183, 1702.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 13, '18', NULL, '2022-03-02 15:08:02', NULL),
(6, 14, 8, 6, 'Demo service 16', 'Demo Comments', 'Approved', 143, 1735.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 19, '11', NULL, '2022-03-02 15:08:02', NULL),
(7, 16, 8, 6, 'Demo service 17', 'Demo Comments', 'Approved', 168, 1199.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 17, '17', NULL, '2022-03-02 15:08:02', NULL),
(8, 18, 8, 6, 'Demo service 18', 'Demo Comments', 'Approved', 114, 1415.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 13, '17', NULL, '2022-03-02 15:08:02', NULL),
(9, 13, 8, 6, 'Demo service 19', 'Demo Comments', 'Approved', 140, 1040.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 19, '12', NULL, '2022-03-02 15:08:02', NULL);

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
  `candidate_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `candidate_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `candidate_resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_medical_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_traning_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pre_medical_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pre_training_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pre_medical_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_training_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_updated_dt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approval_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_medical_report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_training_report` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_medical_dt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_training_dt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_medical_comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_training_comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive','Selected','Reviewed','Forwarded','Interview','confirmed') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result_status` enum('New','Physical Interview','Online Interview','Selected','Rejected') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_letter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employer_comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `role_id`, `job_category_id`, `job_id`, `company_id`, `candidate_name`, `candidate_dob`, `candidate_gender`, `passport_number`, `phone_number`, `candidate_email`, `candidate_password`, `country`, `nationality`, `present_address`, `permanent_address`, `active_status`, `candidate_picture`, `candidate_resume`, `passport`, `pre_medical_certificate`, `pre_traning_certificate`, `created_by`, `created_id`, `updated_by`, `updated_id`, `pre_medical_id`, `pre_training_id`, `pre_medical_status`, `pre_training_status`, `pre_updated_dt`, `approval_status`, `pre_medical_report`, `pre_training_report`, `pre_medical_dt`, `pre_training_dt`, `pre_medical_comments`, `pre_training_comments`, `status`, `result_status`, `offer_letter`, `employer_comments`, `created_at`, `updated_at`) VALUES
(1, 15, 9, 6, 10, 'Demo Name 0', '2021-30-07', 'male', 'IDS26DdXwDixEz28Un', '01856230550', 'demon0@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-03-02 15:08:02', NULL),
(2, 15, 4, 6, 10, 'Demo Name 1', '2021-30-07', 'male', 'fzV3huEWnY5bhRDazJ', '01856230550', 'demon1@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-03-02 15:08:02', NULL),
(3, 15, 10, 5, 9, 'Demo Name 2', '2021-30-07', 'male', '7pLW44veSakNCAZYt8', '01856230550', 'demon2@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-03-02 15:08:02', NULL),
(4, 15, 10, 3, 6, 'Demo Name 3', '2021-30-07', 'male', 'fAxMwkbAJL91yEeb43', '01856230550', 'demon3@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-03-02 15:08:02', NULL),
(5, 15, 4, 1, 5, 'Demo Name 4', '2021-30-07', 'male', 'P16zKsh6mqnSpi2i4u', '01856230550', 'demon4@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-03-02 15:08:02', NULL),
(6, 15, 6, 2, 7, 'Demo Name 5', '2021-30-07', 'male', 'oZ4jUp7Q1ifSqHlZMc', '01856230550', 'demon5@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-03-02 15:08:02', NULL),
(7, 15, 6, 1, 3, 'Demo Name 6', '2021-30-07', 'male', 'Ccytm4D8rw8dm9NBBR', '01856230550', 'demon6@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-03-02 15:08:02', NULL),
(8, 15, 5, 6, 3, 'Demo Name 7', '2021-30-07', 'male', 'VpdHGmfrJQSmor2dNS', '01856230550', 'demon7@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-03-02 15:08:02', NULL),
(9, 15, 9, 4, 8, 'Demo Name 8', '2021-30-07', 'male', 'u8r56Celmz5a1YDeqT', '01856230550', 'demon8@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-03-02 15:08:02', NULL),
(10, 15, 9, 8, 5, 'Demo Name 9', '2021-30-07', 'male', 'ZYSgpc5hvYmhZhfIrZ', '01856230550', 'demon9@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-03-02 15:08:02', NULL),
(11, 15, 8, 21, 6, 'Demo Name 11', '2021-30-07', 'male', 'moyYmA7vjDJHwM9Cj6', '01856230550', 'demon11@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-03-02 15:08:02', NULL),
(12, 15, 8, 21, 6, 'Demo Name 12', '2021-30-07', 'male', '02zzAftmZdhErLZhML', '01856230550', 'demon12@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-03-02 15:08:02', NULL),
(13, 15, 8, 21, 6, 'Demo Name 13', '2021-30-07', 'male', 'zZpFR16wyEZS5me4Mo', '01856230550', 'demon13@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-03-02 15:08:02', NULL),
(14, 15, 8, 21, 6, 'Demo Name 14', '2021-30-07', 'male', 'bg0xazBFJVtyhQ0h0K', '01856230550', 'demon14@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-03-02 15:08:02', NULL),
(15, 15, 8, 21, 6, 'Demo Name 15', '2021-30-07', 'male', 'YjSZ2bdadE0XaR6Amo', '01856230550', 'demon15@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-03-02 15:08:02', NULL),
(16, 15, 8, 21, 6, 'Demo Name 16', '2021-30-07', 'male', '9zpmgIAjr7cjh5cPHY', '01856230550', 'demon16@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-03-02 15:08:02', NULL),
(17, 15, 8, 21, 6, 'Demo Name 17', '2021-30-07', 'male', 'pU26pA3UHaO7Bm0ExK', '01856230550', 'demon17@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-03-02 15:08:02', NULL),
(18, 15, 8, 21, 6, 'Demo Name 18', '2021-30-07', 'male', 'TS7jRWnJ4r9TuejlDg', '01856230550', 'demon18@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-03-02 15:08:02', NULL),
(19, 15, 8, 21, 6, 'Demo Name 19', '2021-30-07', 'male', 'YHmbkvq6ZNtXcQakJJ', '01856230550', 'demon19@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-03-02 15:08:02', NULL);

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
(1, 15, 8, 6, '168248', NULL, 'Demo Comments', 'Open', 'Open', 16, 15, 'Banani Dhaka', 'Door delivery', NULL, 18, NULL, '2022-03-02 15:08:02', NULL),
(2, 11, 8, 6, '357085', NULL, 'Demo Comments', 'Open', 'Open', 11, 14, 'Banani Dhaka', 'Door delivery', NULL, 14, NULL, '2022-03-02 15:08:02', NULL),
(3, 11, 8, 6, '271404', NULL, 'Demo Comments', 'Open', 'Open', 19, 14, 'Banani Dhaka', 'Door delivery', NULL, 12, NULL, '2022-03-02 15:08:02', NULL),
(4, 12, 8, 6, '158258', NULL, 'Demo Comments', 'Open', 'Open', 14, 16, 'Banani Dhaka', 'Door delivery', NULL, 19, NULL, '2022-03-02 15:08:02', NULL),
(5, 13, 8, 6, '331191', NULL, 'Demo Comments', 'Open', 'Open', 14, 15, 'Banani Dhaka', 'Door delivery', NULL, 14, NULL, '2022-03-02 15:08:02', NULL),
(6, 17, 8, 6, '395277', NULL, 'Demo Comments', 'Open', 'Open', 14, 11, 'Banani Dhaka', 'Door delivery', NULL, 19, NULL, '2022-03-02 15:08:02', NULL),
(7, 13, 8, 6, '319597', NULL, 'Demo Comments', 'Open', 'Open', 19, 13, 'Banani Dhaka', 'Door delivery', NULL, 15, NULL, '2022-03-02 15:08:02', NULL),
(8, 11, 8, 6, '232400', NULL, 'Demo Comments', 'Open', 'Open', 18, 13, 'Banani Dhaka', 'Door delivery', NULL, 17, NULL, '2022-03-02 15:08:02', NULL),
(9, 11, 8, 6, '144895', NULL, 'Demo Comments', 'Open', 'Open', 16, 11, 'Banani Dhaka', 'Door delivery', NULL, 15, NULL, '2022-03-02 15:08:02', NULL);

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
(1, 19, 8, 6, '422098', 'Demo Services', 290.00, 'Door delivery', 59.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 12, NULL, '2022-03-02 15:08:02', NULL),
(2, 14, 8, 6, '375637', 'Demo Services', 480.00, 'Door delivery', 58.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 14, NULL, '2022-03-02 15:08:02', NULL),
(3, 18, 8, 6, '309609', 'Demo Services', 137.00, 'Door delivery', 56.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 13, NULL, '2022-03-02 15:08:02', NULL),
(4, 12, 8, 6, '148813', 'Demo Services', 187.00, 'Door delivery', 52.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 19, NULL, '2022-03-02 15:08:02', NULL),
(5, 13, 8, 6, '117963', 'Demo Services', 465.00, 'Door delivery', 50.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 12, NULL, '2022-03-02 15:08:02', NULL),
(6, 16, 8, 6, '462158', 'Demo Services', 370.00, 'Door delivery', 52.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 14, NULL, '2022-03-02 15:08:02', NULL),
(7, 17, 8, 6, '126179', 'Demo Services', 480.00, 'Door delivery', 51.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 17, NULL, '2022-03-02 15:08:02', NULL),
(8, 19, 8, 6, '450277', 'Demo Services', 302.00, 'Door delivery', 53.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 13, NULL, '2022-03-02 15:08:02', NULL),
(9, 14, 8, 6, '196383', 'Demo Services', 352.00, 'Door delivery', 53.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 16, NULL, '2022-03-02 15:08:02', NULL);

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
(1, 14, 8, 6, 'Demo candidate 11', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 12, NULL, '2022-03-02 15:08:02', NULL),
(2, 16, 8, 6, 'Demo candidate 12', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 13, NULL, '2022-03-02 15:08:02', NULL),
(3, 15, 8, 6, 'Demo candidate 13', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 18, NULL, '2022-03-02 15:08:02', NULL),
(4, 13, 8, 6, 'Demo candidate 14', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 16, NULL, '2022-03-02 15:08:02', NULL),
(5, 18, 8, 6, 'Demo candidate 15', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 11, NULL, '2022-03-02 15:08:02', NULL),
(6, 15, 8, 6, 'Demo candidate 16', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 16, NULL, '2022-03-02 15:08:02', NULL),
(7, 18, 8, 6, 'Demo candidate 17', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 15, NULL, '2022-03-02 15:08:02', NULL),
(8, 13, 8, 6, 'Demo candidate 18', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 13, NULL, '2022-03-02 15:08:02', NULL),
(9, 11, 8, 6, 'Demo candidate 19', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 14, NULL, '2022-03-02 15:08:02', NULL);

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
(1, 1, 'kamrulGroup0', 'kamrul Group 0', 'company0@gmail.com', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(2, 2, 'kamrulGroup1', 'kamrul Group 1', 'company1@gmail.com', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(3, 3, 'kamrulGroup2', 'kamrul Group 2', 'company2@gmail.com', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(4, 4, 'kamrulGroup3', 'kamrul Group 3', 'company3@gmail.com', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(5, 5, 'kamrulGroup4', 'kamrul Group 4', 'company4@gmail.com', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(6, 6, 'kamrulGroup5', 'kamrul Group 5', 'company5@gmail.com', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(7, 7, 'kamrulGroup6', 'kamrul Group 6', 'company6@gmail.com', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(8, 8, 'kamrulGroup7', 'kamrul Group 7', 'company7@gmail.com', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(9, 9, 'kamrulGroup8', 'kamrul Group 8', 'company8@gmail.com', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(10, 10, 'kamrulGroup9', 'kamrul Group 9', 'company9@gmail.com', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01');

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
(2, '355', 'Albania(+355)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(3, '213', 'Algeria (+213)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(4, '684', 'American Samoa(+684)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(5, '376', 'Andorra (+376)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(6, '244', 'Angola (+244)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(7, '1264', 'Anguilla (+1264)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(8, '672', 'Antarctica(+672)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(9, '1268', 'Antigua & Barbuda (+1268)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(10, '54', 'Argentina (+54)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(11, '374', 'Armenia (+374)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(12, '297', 'Aruba (+297)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(13, '61', 'Australia (+61)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(14, '43', 'Austria (+43)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(15, '994', 'Azerbaijan (+994)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(16, '1242', 'Bahamas (+1242)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(17, '973', 'Bahrain (+973)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(18, '880', 'Bangladesh (+880)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(19, '1246', 'Barbados (+1246)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(20, '375', 'Belarus (+375)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(21, '32', 'Belgium (+32)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(22, '501', 'Belize (+501)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(23, '229', 'Benin (+229)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(24, '1441', 'Bermuda (+1441)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(25, '975', 'Bhutan (+975)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(26, '591', 'Bolivia (+591)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(27, '387', 'Bosnia Herzegovina (+387)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(28, '267', 'Botswana (+267)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(30, '55', 'Brazil (+55)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(31, '246', 'British Indian Ocean Territory(+246)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(32, '673', 'Brunei (+673)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(33, '359', 'Bulgaria (+359)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(34, '226', 'Burkina Faso (+226)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(35, '257', 'Burundi (+257)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(36, '855', 'Cambodia (+855)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(37, '237', 'Cameroon (+237)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(38, '1', 'Canada (+1)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(39, '238', 'Cape Verde Islands (+238)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(40, '1345', 'Cayman Islands (+1345)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(41, '236', 'Central African Republic (+236)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(42, '235', 'Chad(+235)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(43, '56', 'Chile (+56)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(44, '86', 'China (+86)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(47, '57', 'Colombia (+57)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(48, '269', 'Comoros (+269)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(49, '242', 'Congo (+242)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(50, '243', 'Congo The Democratic Republic Of The(+243)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(51, '682', 'Cook Islands (+682)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(52, '506', 'Costa Rica (+506)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(53, '225', 'Cote D\'Ivoire (Ivory Coast)(+225)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(54, '385', 'Croatia (+385)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(55, '53', 'Cuba (+53)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(56, '90392', 'Cyprus North (+90392)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(57, '42', 'Czech Republic (+42)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(58, '45', 'Denmark (+45)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(59, '253', 'Djibouti (+253)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(60, '1809', 'Dominica (+1809)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(62, '670', 'East Timor(+670)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(63, '593', 'Ecuador (+593)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(64, '20', 'Egypt (+20)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(65, '503', 'El Salvador (+503)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(66, '240', 'Equatorial Guinea (+240)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(67, '291', 'Eritrea (+291)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(68, '372', 'Estonia (+372)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(69, '251', 'Ethiopia (+251)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(71, '500', 'Falkland Islands (+500)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(72, '298', 'Faroe Islands (+298)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(73, '679', 'Fiji (+679)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(74, '358', 'Finland (+358)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(75, '33', 'France (+33)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(76, '594', 'French Guiana (+594)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(77, '689', 'French Polynesia (+689)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(78, '262', 'French Southern Territories(262)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(79, '241', 'Gabon (+241)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(80, '220', 'Gambia (+220)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(81, '7880', 'Georgia (+7880)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(82, '49', 'Germany (+49)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(83, '233', 'Ghana (+233)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(84, '350', 'Gibraltar (+350)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(85, '30', 'Greece (+30)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(86, '299', 'Greenland (+299)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(87, '1473', 'Grenada (+1473)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(88, '590', 'Guadeloupe (+590)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(89, '671', 'Guam (+671)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(90, '502', 'Guatemala (+502)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(91, '44', 'Guernsey and Alderney(44 1481)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(92, '224', 'Guinea (+224)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(93, '245', 'Guinea - Bissau (+245)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(94, '592', 'Guyana (+592)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(95, '509', 'Haiti (+509)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(97, '504', 'Honduras (+504)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(98, '852', 'Hong Kong (+852)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(99, '36', 'Hungary (+36)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(100, '354', 'Iceland (+354)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(101, '91', 'India (+91)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(102, '62', 'Indonesia (+62)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(103, '98', 'Iran (+98)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(104, '964', 'Iraq (+964)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(105, '353', 'Ireland (+353)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(106, '972', 'Israel (+972)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(107, '39', 'Italy (+39)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(108, '1876', 'Jamaica (+1876)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(109, '81', 'Japan (+81)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(111, '962', 'Jordan (+962)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(112, '7', 'Kazakhstan (+7)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(113, '254', 'Kenya (+254)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(114, '686', 'Kiribati (+686)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(115, '850', 'Korea North (+850)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(116, '82', 'Korea South (+82)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(117, '965', 'Kuwait (+965)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(118, '996', 'Kyrgyzstan (+996)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(119, '856', 'Laos (+856)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(120, '371', 'Latvia (+371)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(121, '961', 'Lebanon (+961)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(122, '266', 'Lesotho (+266)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(123, '231', 'Liberia (+231)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(124, '218', 'Libya (+218)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(125, '417', 'Liechtenstein (+417)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(126, '370', 'Lithuania (+370)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(127, '352', 'Luxembourg (+352)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(128, '853', 'Macao (+853)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(129, '389', 'Macedonia (+389)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(130, '261', 'Madagascar (+261)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(131, '265', 'Malawi (+265)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(132, '60', 'Malaysia (+60)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(133, '960', 'Maldives (+960)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(134, '223', 'Mali (+223)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(135, '356', 'Malta (+356)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(137, '692', 'Marshall Islands (+692)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(138, '596', 'Martinique (+596)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(139, '222', 'Mauritania (+222)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(140, '230', 'Mauritius(+230)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(142, '52', 'Mexico (+52)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(143, '691', 'Micronesia (+691)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(144, '373', 'Moldova (+373)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(145, '377', 'Monaco (+377)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(146, '976', 'Mongolia (+976)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(147, '1664', 'Montserrat (+1664)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(148, '212', 'Morocco (+212)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(149, '258', 'Mozambique (+258)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(150, '95', 'Myanmar(+95)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(151, '264', 'Namibia (+264)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(152, '674', 'Nauru (+674)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(153, '977', 'Nepal (+977)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(154, '599', 'Netherlands Antilles(+599)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(155, '31', 'Netherlands (+31)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(156, '687', 'New Caledonia (+687)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(157, '64', 'New Zealand (+64)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(158, '505', 'Nicaragua (+505)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(159, '227', 'Niger (+227)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(160, '234', 'Nigeria (+234)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(161, '683', 'Niue (+683)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(164, '47', 'Norway (+47)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(165, '968', 'Oman (+968)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(166, '92', 'Pakistan(+92)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(167, '680', 'Palau (+680)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(168, '970', 'Palestinian Territory Occupied(+970)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(169, '507', 'Panama (+507)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(170, '675', 'Papua New Guinea (+675)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(171, '595', 'Paraguay (+595)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(172, '51', 'Peru (+51)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(173, '63', 'Philippines (+63)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(175, '48', 'Poland (+48)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(176, '351', 'Portugal (+351)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(177, '1787', 'Puerto Rico (+1787)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(178, '974', 'Qatar (+974)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(180, '40', 'Romania (+40)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(182, '250', 'Rwanda (+250)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(183, '290', 'St. Helena (+290)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(184, '1869', 'St. Kitts (+1869)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(185, '1758', 'Saint Lucia(+1758)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(186, '508', 'Saint Pierre and Miquelon(+508)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(187, '1784', 'Saint Vincent And The Grenadines(+1784)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(188, '685', 'Samoa(+685)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(189, '378', 'San Marino (+378)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(190, '239', 'Sao Tome & Principe (+239)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(191, '966', 'Saudi Arabia (+966)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(192, '221', 'Senegal (+221)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(193, '381', 'Serbia(+381)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(194, '248', 'Seychelles (+248)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(195, '232', 'Sierra Leone (+232)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(196, '65', 'Singapore (+65)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(197, '421', 'Slovak Republic (+421)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(198, '386', 'Slovenia (+386)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(200, '677', 'Solomon Islands (+677)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(201, '252', 'Somalia (+252)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(202, '27', 'South Africa (+27)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(204, '211', 'South Sudan(+211)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(205, '34', 'Spain (+34)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(206, '94', 'Sri Lanka (+94)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(207, '249', 'Sudan (+249)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(208, '597', 'Suriname (+597)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(210, '268', 'Swaziland (+268)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(211, '46', 'Sweden (+46)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(212, '41', 'Switzerland (+41)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(213, '963', 'Syria(+963)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(214, '886', 'Taiwan (+886)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(216, '255', 'Tanzania(+255)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(217, '66', 'Thailand (+66)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(218, '228', 'Togo (+228)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(219, '690', 'Tokelau(+690)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(220, '676', 'Tonga (+676)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(221, '1868', 'Trinidad & Tobago (+1868)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(222, '216', 'Tunisia (+216)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(223, '90', 'Turkey (+90)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(225, '1649', 'Turks & Caicos Islands (+1649)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(226, '688', 'Tuvalu (+688)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(227, '256', 'Uganda (+256)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(228, '380', 'Ukraine (+380)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(229, '971', 'United Arab Emirates (+971)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(233, '598', 'Uruguay (+598)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(235, '678', 'Vanuatu (+678)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(236, '379', 'Vatican City (+379)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(237, '58', 'Venezuela (+58)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(238, '84', 'Vietnam (+84)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(241, '681', 'Wallis & Futuna (+681)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(243, '969', 'Yemen (North)(+969)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(244, '38', 'Yugoslavia(+38)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(245, '260', 'Zambia (+260)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(246, '263', 'Zimbabwe (+263)', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
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
(1, 6, 'Demo candidate 11', 'Demo Co. name 11', 'Demo name 11', 'Brother', NULL, '1093', '2027-03-02 21:08:02', '1336', '2027-03-02 21:08:02', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '10685136', 'Demo Comments', 'Open', '19', NULL, '2022-03-02 15:08:02', NULL),
(2, 6, 'Demo candidate 12', 'Demo Co. name 12', 'Demo name 12', 'Brother', NULL, '1227', '2027-03-02 21:08:02', '1166', '2027-03-02 21:08:02', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '19587285', 'Demo Comments', 'Open', '11', NULL, '2022-03-02 15:08:02', NULL),
(3, 6, 'Demo candidate 13', 'Demo Co. name 13', 'Demo name 13', 'Brother', NULL, '1938', '2027-03-02 21:08:02', '1990', '2027-03-02 21:08:02', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '13014534', 'Demo Comments', 'Open', '16', NULL, '2022-03-02 15:08:02', NULL),
(4, 6, 'Demo candidate 14', 'Demo Co. name 14', 'Demo name 14', 'Brother', NULL, '1216', '2027-03-02 21:08:02', '1239', '2027-03-02 21:08:02', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '10286345', 'Demo Comments', 'Open', '15', NULL, '2022-03-02 15:08:02', NULL),
(5, 6, 'Demo candidate 15', 'Demo Co. name 15', 'Demo name 15', 'Brother', NULL, '1289', '2027-03-02 21:08:02', '1125', '2027-03-02 21:08:02', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '17062198', 'Demo Comments', 'Open', '18', NULL, '2022-03-02 15:08:02', NULL),
(6, 6, 'Demo candidate 16', 'Demo Co. name 16', 'Demo name 16', 'Brother', NULL, '1935', '2027-03-02 21:08:02', '1861', '2027-03-02 21:08:02', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '12086505', 'Demo Comments', 'Open', '15', NULL, '2022-03-02 15:08:02', NULL),
(7, 6, 'Demo candidate 17', 'Demo Co. name 17', 'Demo name 17', 'Brother', NULL, '1119', '2027-03-02 21:08:02', '1101', '2027-03-02 21:08:02', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '16498658', 'Demo Comments', 'Open', '13', NULL, '2022-03-02 15:08:02', NULL),
(8, 6, 'Demo candidate 18', 'Demo Co. name 18', 'Demo name 18', 'Brother', NULL, '1934', '2027-03-02 21:08:02', '1699', '2027-03-02 21:08:02', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '14960307', 'Demo Comments', 'Open', '11', NULL, '2022-03-02 15:08:02', NULL),
(9, 6, 'Demo candidate 19', 'Demo Co. name 19', 'Demo name 19', 'Brother', NULL, '1911', '2027-03-02 21:08:02', '1501', '2027-03-02 21:08:02', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '16248794', 'Demo Comments', 'Open', '16', NULL, '2022-03-02 15:08:02', NULL);

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
(1, 'faPVLSvcvc', 'active', NULL, NULL),
(2, 'KVQWyznhkW', 'active', NULL, NULL),
(3, 'OaOCsvwfda', 'active', NULL, NULL),
(4, 'ziMw7Fp9vV', 'active', NULL, NULL),
(5, '6eb6B9DiJB', 'active', NULL, NULL),
(6, 'y2Qa9X3g3p', 'active', NULL, NULL),
(7, 'Q0idLd2tli', 'active', NULL, NULL),
(8, 'uJdXrpqQQ6', 'active', NULL, NULL),
(9, 'LtdTt7qQ4L', 'active', NULL, NULL),
(10, 'M2KOuAhpvN', 'active', NULL, NULL),
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
(1, 15, 6, 6, 'Demo Candidate 0', 'Demo Company 0', '48547', '26200', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-02 15:08:02', NULL),
(2, 12, 6, 6, 'Demo Candidate 1', 'Demo Company 1', '48562', '40829', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-02 15:08:02', NULL),
(3, 12, 6, 6, 'Demo Candidate 2', 'Demo Company 2', '24451', '9618', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-02 15:08:02', NULL),
(4, 17, 6, 6, 'Demo Candidate 3', 'Demo Company 3', '17447', '45110', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-02 15:08:02', NULL),
(5, 17, 6, 6, 'Demo Candidate 4', 'Demo Company 4', '41884', '40352', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-02 15:08:02', NULL),
(6, 19, 6, 6, 'Demo Candidate 5', 'Demo Company 5', '23871', '20909', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-02 15:08:02', NULL),
(7, 19, 6, 6, 'Demo Candidate 6', 'Demo Company 6', '33393', '18168', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-02 15:08:02', NULL),
(8, 13, 6, 6, 'Demo Candidate 7', 'Demo Company 7', '25608', '27385', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-02 15:08:02', NULL),
(9, 15, 6, 6, 'Demo Candidate 8', 'Demo Company 8', '39574', '26790', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-02 15:08:02', NULL),
(10, 14, 6, 6, 'Demo Candidate 9', 'Demo Company 9', '9517', '11481', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-03-02 15:08:02', NULL);

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
(1, 12, 8, 6, 'Demo service 11', '19507112', NULL, 'Demo Comments', 'Open', '12', NULL, '2022-03-02 15:08:02', NULL),
(2, 16, 8, 6, 'Demo service 12', '15449961', NULL, 'Demo Comments', 'Open', '17', NULL, '2022-03-02 15:08:02', NULL),
(3, 12, 8, 6, 'Demo service 13', '18166963', NULL, 'Demo Comments', 'Open', '13', NULL, '2022-03-02 15:08:02', NULL),
(4, 15, 8, 6, 'Demo service 14', '15181991', NULL, 'Demo Comments', 'Open', '15', NULL, '2022-03-02 15:08:02', NULL),
(5, 15, 8, 6, 'Demo service 15', '15400782', NULL, 'Demo Comments', 'Open', '13', NULL, '2022-03-02 15:08:02', NULL),
(6, 13, 8, 6, 'Demo service 16', '19288883', NULL, 'Demo Comments', 'Open', '16', NULL, '2022-03-02 15:08:02', NULL),
(7, 19, 8, 6, 'Demo service 17', '14457910', NULL, 'Demo Comments', 'Open', '18', NULL, '2022-03-02 15:08:02', NULL),
(8, 17, 8, 6, 'Demo service 18', '11714845', NULL, 'Demo Comments', 'Open', '12', NULL, '2022-03-02 15:08:02', NULL),
(9, 17, 8, 6, 'Demo service 19', '16621150', NULL, 'Demo Comments', 'Open', '15', NULL, '2022-03-02 15:08:02', NULL);

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
(1, 18, 8, 6, 'Demo service 11', 'Demo Comments', 'Approved', 'Approved', '103', 1314.00, 'Dhaka bonani', NULL, 'Door delivery', '17', NULL, '2022-03-02 15:08:02', NULL),
(2, 15, 8, 6, 'Demo service 12', 'Demo Comments', 'Approved', 'Approved', '164', 1701.00, 'Dhaka bonani', NULL, 'Door delivery', '16', NULL, '2022-03-02 15:08:02', NULL),
(3, 14, 8, 6, 'Demo service 13', 'Demo Comments', 'Approved', 'Approved', '161', 1764.00, 'Dhaka bonani', NULL, 'Door delivery', '15', NULL, '2022-03-02 15:08:02', NULL),
(4, 11, 8, 6, 'Demo service 14', 'Demo Comments', 'Approved', 'Approved', '187', 1510.00, 'Dhaka bonani', NULL, 'Door delivery', '16', NULL, '2022-03-02 15:08:02', NULL),
(5, 17, 8, 6, 'Demo service 15', 'Demo Comments', 'Approved', 'Approved', '152', 1313.00, 'Dhaka bonani', NULL, 'Door delivery', '11', NULL, '2022-03-02 15:08:02', NULL),
(6, 16, 8, 6, 'Demo service 16', 'Demo Comments', 'Approved', 'Approved', '126', 1565.00, 'Dhaka bonani', NULL, 'Door delivery', '13', NULL, '2022-03-02 15:08:02', NULL),
(7, 18, 8, 6, 'Demo service 17', 'Demo Comments', 'Approved', 'Approved', '109', 1655.00, 'Dhaka bonani', NULL, 'Door delivery', '18', NULL, '2022-03-02 15:08:02', NULL),
(8, 18, 8, 6, 'Demo service 18', 'Demo Comments', 'Approved', 'Approved', '171', 1853.00, 'Dhaka bonani', NULL, 'Door delivery', '13', NULL, '2022-03-02 15:08:02', NULL),
(9, 15, 8, 6, 'Demo service 19', 'Demo Comments', 'Approved', 'Approved', '170', 1883.00, 'Dhaka bonani', NULL, 'Door delivery', '11', NULL, '2022-03-02 15:08:02', NULL);

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
(1, 11, 8, 6, 2, 'Demo Name 11', 'Brother ', '1357', '2027-03-02 21:08:02', '1526', '2027-03-02 21:08:02', 'Couse of Arrest', 'Demo Police Station', '2022-02-25 21:08:02', NULL, 'Demo Comments', '12', 'Open', NULL, '2022-03-02 15:08:02', NULL),
(2, 12, 8, 6, 5, 'Demo Name 12', 'Brother ', '1923', '2027-03-02 21:08:02', '1037', '2027-03-02 21:08:02', 'Couse of Arrest', 'Demo Police Station', '2022-02-25 21:08:02', NULL, 'Demo Comments', '13', 'Open', NULL, '2022-03-02 15:08:02', NULL),
(3, 13, 8, 6, 5, 'Demo Name 13', 'Brother ', '1578', '2027-03-02 21:08:02', '1968', '2027-03-02 21:08:02', 'Couse of Arrest', 'Demo Police Station', '2022-02-25 21:08:02', NULL, 'Demo Comments', '1', 'Open', NULL, '2022-03-02 15:08:02', NULL),
(4, 14, 8, 6, 5, 'Demo Name 14', 'Brother ', '1861', '2027-03-02 21:08:02', '1112', '2027-03-02 21:08:02', 'Couse of Arrest', 'Demo Police Station', '2022-02-25 21:08:02', NULL, 'Demo Comments', '14', 'Open', NULL, '2022-03-02 15:08:02', NULL),
(5, 15, 8, 6, 3, 'Demo Name 15', 'Brother ', '1460', '2027-03-02 21:08:02', '1340', '2027-03-02 21:08:02', 'Couse of Arrest', 'Demo Police Station', '2022-02-25 21:08:02', NULL, 'Demo Comments', '9', 'Open', NULL, '2022-03-02 15:08:02', NULL),
(6, 16, 8, 6, 5, 'Demo Name 16', 'Brother ', '1282', '2027-03-02 21:08:02', '1066', '2027-03-02 21:08:02', 'Couse of Arrest', 'Demo Police Station', '2022-02-25 21:08:02', NULL, 'Demo Comments', '7', 'Open', NULL, '2022-03-02 15:08:02', NULL),
(7, 17, 8, 6, 2, 'Demo Name 17', 'Brother ', '1157', '2027-03-02 21:08:02', '1206', '2027-03-02 21:08:02', 'Couse of Arrest', 'Demo Police Station', '2022-02-25 21:08:02', NULL, 'Demo Comments', '10', 'Open', NULL, '2022-03-02 15:08:02', NULL),
(8, 18, 8, 6, 9, 'Demo Name 18', 'Brother ', '1156', '2027-03-02 21:08:02', '1146', '2027-03-02 21:08:02', 'Couse of Arrest', 'Demo Police Station', '2022-02-25 21:08:02', NULL, 'Demo Comments', '14', 'Open', NULL, '2022-03-02 15:08:02', NULL),
(9, 19, 8, 6, 10, 'Demo Name 19', 'Brother ', '1524', '2027-03-02 21:08:02', '1661', '2027-03-02 21:08:02', 'Couse of Arrest', 'Demo Police Station', '2022-02-25 21:08:02', NULL, 'Demo Comments', '17', 'Open', NULL, '2022-03-02 15:08:02', NULL);

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
(1, 'Demo Category 0', 'Active', NULL, NULL),
(2, 'Demo Category 1', 'Active', NULL, NULL),
(3, 'Demo Category 2', 'Active', NULL, NULL),
(4, 'Demo Category 3', 'Active', NULL, NULL),
(5, 'Demo Category 4', 'Active', NULL, NULL),
(6, 'Demo Category 5', 'Active', NULL, NULL),
(7, 'Demo Category 6', 'Active', NULL, NULL),
(8, 'Demo Category 7', 'Active', NULL, NULL),
(9, 'Demo Category 8', 'Active', NULL, NULL),
(10, 'Demo Category 9', 'Active', NULL, NULL),
(11, 'Web Developer', 'Active', NULL, NULL),
(12, 'Doctor', 'Active', NULL, NULL);

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
  `wsc_send_status` int(11) NOT NULL DEFAULT 0,
  `ma_status` enum('New','Verified','Approved','Applied','Rejected','Pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `forward_status` enum('Forwarded','Pending') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('New','Verified','Approved','Applied','Rejected','Pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `bd_embasy_status` enum('Approved','Rejected') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_posts`
--

INSERT INTO `job_posts` (`id`, `job_category_id`, `user_id`, `company_id`, `employment_type`, `gender`, `age_limit`, `salary`, `job_location`, `job_vacancy`, `app_vacancy`, `end_date`, `demand_letter`, `selected_wsc`, `mra_id`, `recruiting_type`, `appointment_date`, `appointment_time`, `rejection_reason`, `wsc_send_status`, `ma_status`, `forward_status`, `status`, `bd_embasy_status`, `created_at`, `updated_at`) VALUES
(1, 5, 6, 6, 'Full Time', 'Male only', '32', '42748', 'Dhaka Bangladesh', 90, NULL, '2022-03-02 21:08:02', 0x6a47366e31436b6e5035, 4, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'New', 'Approved', '2022-03-02 15:08:02', NULL),
(2, 12, 6, 6, 'Full Time', 'Male only', '49', '12129', 'Dhaka Bangladesh', 94, NULL, '2022-03-02 21:08:02', 0x73455167667550695864, 10, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'New', 'Approved', '2022-03-02 15:08:02', NULL),
(3, 12, 6, 6, 'Full Time', 'Male only', '50', '35127', 'Dhaka Bangladesh', 56, NULL, '2022-03-02 21:08:02', 0x764a7162337675463630, 9, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'New', 'Approved', '2022-03-02 15:08:02', NULL),
(4, 8, 6, 6, 'Full Time', 'Male only', '35', '17896', 'Dhaka Bangladesh', 69, NULL, '2022-03-02 21:08:02', 0x43484d74795070737670, 5, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'New', 'Approved', '2022-03-02 15:08:02', NULL),
(5, 11, 6, 6, 'Full Time', 'Male only', '37', '26948', 'Dhaka Bangladesh', 94, NULL, '2022-03-02 21:08:02', 0x5469444e426f484f5052, 3, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'New', 'Approved', '2022-03-02 15:08:02', NULL),
(6, 10, 6, 6, 'Full Time', 'Male only', '29', '34843', 'Dhaka Bangladesh', 70, NULL, '2022-03-02 21:08:02', 0x33794c59704156576c61, 6, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'New', 'Approved', '2022-03-02 15:08:02', NULL),
(7, 11, 6, 6, 'Full Time', 'Male only', '37', '37059', 'Dhaka Bangladesh', 54, NULL, '2022-03-02 21:08:02', 0x614d44684e4d4561576b, 4, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'New', 'Approved', '2022-03-02 15:08:02', NULL),
(8, 6, 6, 6, 'Full Time', 'Male only', '27', '36687', 'Dhaka Bangladesh', 78, NULL, '2022-03-02 21:08:02', 0x427376716c3456494163, 8, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'New', 'Approved', '2022-03-02 15:08:02', NULL),
(9, 10, 6, 6, 'Full Time', 'Male only', '29', '19630', 'Dhaka Bangladesh', 56, NULL, '2022-03-02 21:08:02', 0x394d41645a356b783272, 1, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'New', 'Approved', '2022-03-02 15:08:02', NULL),
(10, 9, 6, 6, 'Full Time', 'Male only', '35', '19429', 'Dhaka Bangladesh', 75, NULL, '2022-03-02 21:08:02', 0x55546b636a41726b5261, 10, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'New', 'Approved', '2022-03-02 15:08:02', NULL),
(11, 7, 6, 6, '4IbhQxPxG2', 'Male only', '42', '34960', 'mYbVIfoTM6', 33, NULL, '2022-03-02 21:08:02', 0x514952394f53414a4969, 10, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-02 15:08:02', NULL),
(12, 6, 6, 6, 'Wa8Uun2u3H', 'Male only', '46', '38686', 'XdJswqw8MC', 34, NULL, '2022-03-02 21:08:02', 0x547a72473644446b3837, 10, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-02 15:08:02', NULL),
(13, 12, 6, 6, 'iMDWCbINAs', 'Male only', '36', '12617', 'G73W9dyuWF', 24, NULL, '2022-03-02 21:08:02', 0x63414e326b5a5638454d, 8, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-02 15:08:02', NULL),
(14, 11, 6, 6, 'qlWyaGsRLf', 'Male only', '47', '17140', '8JkO5tP8jX', 23, NULL, '2022-03-02 21:08:02', 0x6d45675164435a34614d, 7, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-02 15:08:02', NULL),
(15, 8, 6, 6, 'iRC9Rb6hnW', 'Male only', '33', '34731', 'ToDJAYWGni', 37, NULL, '2022-03-02 21:08:02', 0x32473251483570314d4a, 5, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-02 15:08:02', NULL),
(16, 7, 6, 6, 'va7gaoaDAn', 'Male only', '36', '17373', 'JllP8QmkBt', 44, NULL, '2022-03-02 21:08:02', 0x48514f5241663862696b, 4, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-02 15:08:02', NULL),
(17, 10, 6, 6, 'LZ8LsrR9ms', 'Male only', '46', '21300', '7cdKreIVHx', 33, NULL, '2022-03-02 21:08:02', 0x677562754a75516d754e, 4, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-02 15:08:02', NULL),
(18, 9, 6, 6, 'HJk1QG61Mg', 'Male only', '39', '42312', 'uzOJvuQXEg', 45, NULL, '2022-03-02 21:08:02', 0x304674597156366e627a, 1, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-02 15:08:02', NULL),
(19, 12, 6, 6, 'mNcJcjPqWW', 'Male only', '43', '38547', 'g7ZCfAsmHU', 33, NULL, '2022-03-02 21:08:02', 0x694e5364565443547a6d, 3, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-02 15:08:02', NULL),
(20, 11, 6, 6, 'N9QeE12cdp', 'Male only', '22', '45512', 'vOwf9AzaW9', 43, NULL, '2022-03-02 21:08:02', 0x435a7448325471704771, 8, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Verified', 'Approved', '2022-03-02 15:08:02', NULL),
(21, 8, 6, 6, 'XwV1sYLMjE', 'Male only', '36', '39550', 'tnYKl00YHU', 31, NULL, '2022-03-02 21:08:02', 0x45796b636868506f6c52, 9, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-02 15:08:02', NULL),
(22, 11, 6, 6, 'OMkMiXgO7y', 'Male only', '30', '10184', 'RJ8hP2Xhgi', 45, NULL, '2022-03-02 21:08:02', 0x34496a64686842555561, 2, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-02 15:08:02', NULL),
(23, 8, 6, 6, 'yrYmOnqaHp', 'Male only', '24', '48749', '8P3Q4NbrRa', 49, NULL, '2022-03-02 21:08:02', 0x3866673330654d564c39, 10, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-02 15:08:02', NULL),
(24, 9, 6, 6, 'IRSs0amYTl', 'Male only', '21', '18317', 'q5RuRBz4EC', 41, NULL, '2022-03-02 21:08:02', 0x4e7a493762324e36794d, 10, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-02 15:08:02', NULL),
(25, 10, 6, 6, 'jbLy7PYLcj', 'Male only', '37', '6870', 'yRkECpVfMJ', 36, NULL, '2022-03-02 21:08:02', 0x4a644f72524e75375838, 8, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-02 15:08:02', NULL),
(26, 10, 6, 6, 'eTgzsbKO7L', 'Male only', '20', '15872', 'c0n1UQt9vf', 32, NULL, '2022-03-02 21:08:02', 0x796f366f6d724d546933, 5, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-02 15:08:02', NULL),
(27, 7, 6, 6, 'bzadrU0PWy', 'Male only', '24', '34348', 'PiDD8zXVV7', 40, NULL, '2022-03-02 21:08:02', 0x49304546696d52534277, 8, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-02 15:08:02', NULL),
(28, 10, 6, 6, 'S6HuHbzcNt', 'Male only', '46', '37984', '5M7K7rv7Tb', 45, NULL, '2022-03-02 21:08:02', 0x597a513277436e783943, 4, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-02 15:08:02', NULL),
(29, 5, 6, 6, 'POnALzCXuY', 'Male only', '44', '10878', 'CdKq3VRHp9', 28, NULL, '2022-03-02 21:08:02', 0x705a34426c6c70394d47, 8, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-02 15:08:02', NULL),
(30, 9, 6, 6, 'SAnTZwsoFt', 'Male only', '33', '33694', 'YiYwcJxYsI', 34, NULL, '2022-03-02 21:08:02', 0x617345596d4d49463774, 4, NULL, NULL, '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'New', NULL, 'Applied', 'Approved', '2022-03-02 15:08:02', NULL),
(31, 11, 8, 8, 'Full Time', 'Male only', '25', '41835', 'Kuala lampur , Malaysia', 89, NULL, '2022-03-02 21:08:02', NULL, NULL, NULL, 'self', '2022-03-02 21:08:02', '2022-03-02 21:08:02', NULL, 0, 'Approved', NULL, 'Approved', 'Approved', '2022-03-02 15:08:02', NULL);

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
(1, 19, 8, 6, 'Demo Service', 'Open', '14', NULL, '2022-03-02 15:08:02', NULL),
(2, 16, 8, 6, 'Demo Service', 'Open', '17', NULL, '2022-03-02 15:08:02', NULL),
(3, 18, 8, 6, 'Demo Service', 'Open', '15', NULL, '2022-03-02 15:08:02', NULL),
(4, 18, 8, 6, 'Demo Service', 'Open', '16', NULL, '2022-03-02 15:08:02', NULL),
(5, 16, 8, 6, 'Demo Service', 'Open', '12', NULL, '2022-03-02 15:08:02', NULL),
(6, 19, 8, 6, 'Demo Service', 'Open', '17', NULL, '2022-03-02 15:08:02', NULL),
(7, 15, 8, 6, 'Demo Service', 'Open', '16', NULL, '2022-03-02 15:08:02', NULL),
(8, 13, 8, 6, 'Demo Service', 'Open', '15', NULL, '2022-03-02 15:08:02', NULL),
(9, 11, 8, 6, 'Demo Service', 'Open', '14', NULL, '2022-03-02 15:08:02', NULL);

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
(1, 14, 6, 6, 2, '19887', '34885', '45002', 'jLvxn5L53PZOIjECxDlyCbBlRhEoJvUXlbnNZL2OExpwqe9Vmd', 'dfoQlKW9q2PMakBRLbyw6eL8xkoCCcS1x7P8Cv8H83tjLs15zZ', '330', '30165', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-02 15:08:02', NULL),
(2, 12, 6, 6, 2, '28144', '21649', '32401', 'VXftrWqEkLAhrffP77EZqCSqyZKFXZBxNd2zhhYsImXyRdTsV9', 'RkQ9MzEJ6b9CbQ5rS2DV6X7gj2D9TtJxEDKN4wLjZwuCtzCQOx', '165', '38585', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-02 15:08:02', NULL),
(3, 19, 6, 6, 2, '23779', '46695', '44766', 'GKP4GUxiPa4Uw21geuoZbUHjRlrcGblxZOBpM6soP8rynz3ZiE', 'hJpRUeM3SPbL751v3mcZLqiFsFUOEohshChI19U1NudIO3hPSS', '405', '13486', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-02 15:08:02', NULL),
(4, 18, 6, 6, 2, '7542', '28035', '46236', 'EMuFHJFRkYbDZ1Dkd1kec8EkGuIMMOC6cEZuXzKx0yQJmXacsz', 'u6eFctmbT3ucwlXYDRzYD3yQ6UnAoGCZEljWL6pRGqCErbHclr', '104', '32783', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-02 15:08:02', NULL),
(5, 15, 6, 6, 2, '10909', '22875', '45760', 'd3W3mxhntO1JbaDj0QkxO0prmc7JACH5bNwyiqt8Yglbmf1z2y', 'GtuDrkXIXw06YhIPKGe2wgMoIl4WkplVFZSa0RatohI3nw5D7K', '247', '5527', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-02 15:08:02', NULL),
(6, 16, 6, 6, 2, '42982', '46460', '47405', 'rxIXE7MJ6WQjae25a1kE4KHZxwp1DkA1sTHj4pFZrjipQaUtWr', 'K8Zq6Qjg19nry8kWAtHENZnrTuGxTmx5SsGlv0WRRLBgCR8ACp', '143', '40183', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-02 15:08:02', NULL),
(7, 17, 6, 6, 2, '37682', '17776', '43626', 'RAqMS5GrYaTK19DV05mMdYB5Ig49zhBuR0iUmOEdVJmvU2wpcv', 'Uao7grkbyg5Zsr0WyApZgjJW9rq0v1xjP629ADFKZbyDAZhlhz', '86', '24144', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-02 15:08:02', NULL),
(8, 19, 6, 6, 2, '26626', '11660', '45770', 'jXrRo9O5RntK8ZnpNNMPAjG70cotKkSgw8W57Fho95TgCj577G', 'o75q6kf3h4SQniWZ3EFMxNrs0ouduNToXXb3FPUrIph1wtD1N0', '328', '18068', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-02 15:08:02', NULL),
(9, 12, 6, 6, 2, '30028', '49223', '11244', 'n3MdPyUAdD8pzGieUjNX8CaGqyCVNNX5olHmSVBvNs7WuTS1MZ', 'm8diZoMHL149JKFws149yRlPqyGhM3h4oFgPPumr4MmsRuKZz9', '141', '7761', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-02 15:08:02', NULL),
(10, 19, 6, 6, 2, '36496', '28583', '31528', 'GG3buCsQiX8DE8aEPn7gfDvE2XhVkEgYahbqcMJjzAQEqEv7ol', 'nXIRj6ACZTAz8tLhpsJx4wvTgFYFsFAyYZoTwejoQn3dpDzhOU', '423', '21048', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-03-02 15:08:02', NULL);

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
(1, 17, 1, 6, 'Demo name 11', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '19040834', NULL, 'Demo Comments', 'Open', '13', NULL, '2022-03-02 15:08:02', NULL),
(2, 12, 1, 6, 'Demo name 12', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '18510796', NULL, 'Demo Comments', 'Open', '19', NULL, '2022-03-02 15:08:02', NULL),
(3, 15, 1, 6, 'Demo name 13', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '15781264', NULL, 'Demo Comments', 'Open', '11', NULL, '2022-03-02 15:08:02', NULL),
(4, 17, 1, 6, 'Demo name 14', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '14111253', NULL, 'Demo Comments', 'Open', '17', NULL, '2022-03-02 15:08:02', NULL),
(5, 14, 1, 6, 'Demo name 15', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '16115811', NULL, 'Demo Comments', 'Open', '16', NULL, '2022-03-02 15:08:02', NULL),
(6, 11, 1, 6, 'Demo name 16', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '11193441', NULL, 'Demo Comments', 'Open', '19', NULL, '2022-03-02 15:08:02', NULL),
(7, 17, 1, 6, 'Demo name 17', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '19140118', NULL, 'Demo Comments', 'Open', '19', NULL, '2022-03-02 15:08:02', NULL),
(8, 15, 1, 6, 'Demo name 18', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '18458206', NULL, 'Demo Comments', 'Open', '19', NULL, '2022-03-02 15:08:02', NULL),
(9, 18, 1, 6, 'Demo name 19', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '16635567', NULL, 'Demo Comments', 'Open', '13', NULL, '2022-03-02 15:08:02', NULL);

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
(1, 11, 8, 6, 'Demo Guest Name11', '7', 'Demo service namwe11', '2022-02-25 21:08:02', 'Qatar Airlines', '1680', '2022-03-07 21:08:02', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-02 15:08:02', NULL),
(2, 12, 8, 6, 'Demo Guest Name12', '6', 'Demo service namwe12', '2022-02-25 21:08:02', 'Qatar Airlines', '1584', '2022-03-07 21:08:02', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-02 15:08:02', NULL),
(3, 13, 8, 6, 'Demo Guest Name13', '9', 'Demo service namwe13', '2022-02-25 21:08:02', 'Qatar Airlines', '1861', '2022-03-07 21:08:02', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-02 15:08:02', NULL),
(4, 14, 8, 6, 'Demo Guest Name14', '5', 'Demo service namwe14', '2022-02-25 21:08:02', 'Qatar Airlines', '1942', '2022-03-07 21:08:02', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-02 15:08:02', NULL),
(5, 15, 8, 6, 'Demo Guest Name15', '8', 'Demo service namwe15', '2022-02-25 21:08:02', 'Qatar Airlines', '1388', '2022-03-07 21:08:02', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-02 15:08:02', NULL),
(6, 16, 8, 6, 'Demo Guest Name16', '6', 'Demo service namwe16', '2022-02-25 21:08:02', 'Qatar Airlines', '1117', '2022-03-07 21:08:02', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-02 15:08:02', NULL),
(7, 17, 8, 6, 'Demo Guest Name17', '7', 'Demo service namwe17', '2022-02-25 21:08:02', 'Qatar Airlines', '1629', '2022-03-07 21:08:02', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-02 15:08:02', NULL),
(8, 18, 8, 6, 'Demo Guest Name18', '9', 'Demo service namwe18', '2022-02-25 21:08:02', 'Qatar Airlines', '1324', '2022-03-07 21:08:02', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-02 15:08:02', NULL),
(9, 19, 8, 6, 'Demo Guest Name19', '7', 'Demo service namwe19', '2022-02-25 21:08:02', 'Qatar Airlines', '1053', '2022-03-07 21:08:02', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-03-02 15:08:02', NULL);

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
(38, '2022_03_02_183814_create_job_distribute_in_b_r_a_s_table', 1);

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
(1, 18, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '46424', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-02 15:08:02', NULL),
(2, 13, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '49570', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-02 15:08:02', NULL),
(3, 17, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '16121', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-02 15:08:02', NULL),
(4, 15, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '36375', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-02 15:08:02', NULL),
(5, 14, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '29915', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-02 15:08:02', NULL),
(6, 13, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '47781', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-02 15:08:02', NULL),
(7, 15, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '49978', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-02 15:08:02', NULL),
(8, 17, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '41751', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-02 15:08:02', NULL),
(9, 19, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '46169', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-02 15:08:02', NULL),
(10, 11, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '41961', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-03-02 15:08:02', NULL);

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
(1, 11, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 11', '01856230550', 'demon11@gmail.com', NULL, NULL, 'Recommended', NULL, 'fkM24eliX9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'New', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:02', '2022-03-02 15:08:02'),
(2, 12, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 12', '01856230550', 'demon12@gmail.com', NULL, NULL, 'Recommended', NULL, 'ctUclxW1BH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:02', '2022-03-02 15:08:02'),
(3, 13, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 13', '01856230550', 'demon13@gmail.com', NULL, NULL, 'Recommended', NULL, 't0p6imJy40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:02', '2022-03-02 15:08:02'),
(4, 14, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 14', '01856230550', 'demon14@gmail.com', NULL, NULL, 'Recommended', NULL, 'jF3DbGhUzr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:02', '2022-03-02 15:08:02'),
(5, 15, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 15', '01856230550', 'demon15@gmail.com', NULL, NULL, 'Recommended', NULL, 'Rnh75gLb9R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:02', '2022-03-02 15:08:02'),
(6, 16, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 16', '01856230550', 'demon16@gmail.com', NULL, NULL, 'Recommended', NULL, 'XZ0DYGOOxn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:02', '2022-03-02 15:08:02'),
(7, 17, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 17', '01856230550', 'demon17@gmail.com', NULL, NULL, 'Recommended', NULL, 'FOBDavIaB3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:02', '2022-03-02 15:08:02'),
(8, 18, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 18', '01856230550', 'demon18@gmail.com', NULL, NULL, 'Recommended', NULL, 'WNO6du8FD9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:02', '2022-03-02 15:08:02'),
(9, 19, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 19', '01856230550', 'demon19@gmail.com', NULL, NULL, 'Recommended', NULL, 'uJBb5ILoCT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:02', '2022-03-02 15:08:02');

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
(1, 12, 8, 6, 'Demo service 11', '348173', 'Demo Comments', NULL, 'Open', NULL, 119.00, '89', 'Door delivery', 'Banani Dhaka', 'Open', '15', NULL, '2022-03-02 15:08:02', NULL),
(2, 16, 8, 6, 'Demo service 12', '495404', 'Demo Comments', NULL, 'Open', NULL, 224.00, '86', 'Door delivery', 'Banani Dhaka', 'Open', '13', NULL, '2022-03-02 15:08:02', NULL),
(3, 15, 8, 6, 'Demo service 13', '424577', 'Demo Comments', NULL, 'Open', NULL, 195.00, '82', 'Door delivery', 'Banani Dhaka', 'Open', '13', NULL, '2022-03-02 15:08:02', NULL),
(4, 16, 8, 6, 'Demo service 14', '199180', 'Demo Comments', NULL, 'Open', NULL, 298.00, '83', 'Door delivery', 'Banani Dhaka', 'Open', '16', NULL, '2022-03-02 15:08:02', NULL),
(5, 13, 8, 6, 'Demo service 15', '121359', 'Demo Comments', NULL, 'Open', NULL, 219.00, '82', 'Door delivery', 'Banani Dhaka', 'Open', '17', NULL, '2022-03-02 15:08:02', NULL),
(6, 13, 8, 6, 'Demo service 16', '492884', 'Demo Comments', NULL, 'Open', NULL, 121.00, '83', 'Door delivery', 'Banani Dhaka', 'Open', '19', NULL, '2022-03-02 15:08:02', NULL),
(7, 14, 8, 6, 'Demo service 17', '136717', 'Demo Comments', NULL, 'Open', NULL, 199.00, '83', 'Door delivery', 'Banani Dhaka', 'Open', '12', NULL, '2022-03-02 15:08:02', NULL),
(8, 12, 8, 6, 'Demo service 18', '215826', 'Demo Comments', NULL, 'Open', NULL, 195.00, '82', 'Door delivery', 'Banani Dhaka', 'Open', '17', NULL, '2022-03-02 15:08:02', NULL),
(9, 18, 8, 6, 'Demo service 19', '402691', 'Demo Comments', NULL, 'Open', NULL, 159.00, '89', 'Door delivery', 'Banani Dhaka', 'Open', '17', NULL, '2022-03-02 15:08:02', NULL);

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
(1, 8, 16, 6, 'Demo service 11', 'Demo Comments', 'Paid', 'Door delivery', '175', NULL, 'Bonani Dhaka', '16', 1030.00, 12, NULL, '2022-03-02 15:08:02', NULL),
(2, 8, 15, 6, 'Demo service 12', 'Demo Comments', 'Paid', 'Door delivery', '108', NULL, 'Bonani Dhaka', '11', 1852.00, 13, NULL, '2022-03-02 15:08:02', NULL),
(3, 8, 11, 6, 'Demo service 13', 'Demo Comments', 'Paid', 'Door delivery', '101', NULL, 'Bonani Dhaka', '13', 1003.00, 19, NULL, '2022-03-02 15:08:02', NULL),
(4, 8, 15, 6, 'Demo service 14', 'Demo Comments', 'Paid', 'Door delivery', '131', NULL, 'Bonani Dhaka', '15', 1669.00, 18, NULL, '2022-03-02 15:08:02', NULL),
(5, 8, 19, 6, 'Demo service 15', 'Demo Comments', 'Paid', 'Door delivery', '131', NULL, 'Bonani Dhaka', '15', 1387.00, 15, NULL, '2022-03-02 15:08:02', NULL),
(6, 8, 18, 6, 'Demo service 16', 'Demo Comments', 'Paid', 'Door delivery', '140', NULL, 'Bonani Dhaka', '19', 1990.00, 15, NULL, '2022-03-02 15:08:02', NULL),
(7, 8, 15, 6, 'Demo service 17', 'Demo Comments', 'Paid', 'Door delivery', '150', NULL, 'Bonani Dhaka', '18', 1171.00, 15, NULL, '2022-03-02 15:08:02', NULL),
(8, 8, 19, 6, 'Demo service 18', 'Demo Comments', 'Paid', 'Door delivery', '152', NULL, 'Bonani Dhaka', '19', 1079.00, 17, NULL, '2022-03-02 15:08:02', NULL),
(9, 8, 19, 6, 'Demo service 19', 'Demo Comments', 'Paid', 'Door delivery', '134', NULL, 'Bonani Dhaka', '16', 1520.00, 12, NULL, '2022-03-02 15:08:02', NULL);

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
(1, 'Super admin', 'super-admin', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(2, 'Malaysian Employer', 'malaysian-employer', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(3, 'Welfare service center company', 'welfare-service-center-company', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(4, 'Bangladeshi High Commission', 'bangladesh-high-commission', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(5, 'Master One stop service', 'master-one-stop-service', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(6, 'Child One stop service', 'child-one-stop-service', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(7, 'Medical Agency', 'medical-agency', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(8, 'Training Agency', 'training-agency', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(9, 'travel agency', 'travel-agency', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(10, 'Biometric Agency', 'biometric-agency', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(11, 'Bangladesh Recruiting Agency', 'bangladesh-recruiting-agency', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(12, 'Bangladeshi admin', 'bangladeshi-admin', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(13, 'Employer', 'employer', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(14, 'Malaysia Admin', 'malaysia-admin', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(15, 'Malaysia Embassy', 'malaysia-embassy', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(16, 'Candidate', 'candidate', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(17, 'Malaysia Recruiting Agency', 'malaysia-recruiting-agency', 'active', '2022-03-02 15:08:01', '2022-03-02 15:08:01');

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
(1, 'logo', 'uploads/images/logo.png', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(2, 'no_image', 'uploads/images/setting/no-image.png', '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(3, 'user', 'uploads/images/setting/user.png', '2022-03-02 15:08:01', '2022-03-02 15:08:01');

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
(1, 1, '2022-03-04 21:08:02', 2, '20000', 'Demo Comments', 3, '2022-03-02 21:08:02', 'New', NULL, NULL),
(2, 3, '2022-03-04 21:08:02', 2, '20000', 'Demo Comments', 3, '2022-03-02 21:08:02', 'New', NULL, NULL),
(3, 3, '2022-03-04 21:08:02', 2, '20000', 'Demo Comments', 3, '2022-03-02 21:08:02', 'New', NULL, NULL),
(4, 3, '2022-03-04 21:08:02', 2, '20000', 'Demo Comments', 3, '2022-03-02 21:08:02', 'New', NULL, NULL),
(5, 4, '2022-03-04 21:08:02', 2, '20000', 'Demo Comments', 3, '2022-03-02 21:08:02', 'New', NULL, NULL);

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
(1, 11, 'Dhaka Bangladesh', 'Kuala Lumpur, Malaysia', '2', '2022-03-04 21:08:02', '2022-03-09 21:08:02', 'Demo Comment', 'New', '2022-03-02 21:08:02', NULL, '2022-03-02 15:08:02', NULL),
(2, 11, 'Dhaka Bangladesh', 'Kuala Lumpur, Malaysia', '2', '2022-03-04 21:08:02', '2022-03-09 21:08:02', 'Demo Comment', 'New', '2022-03-02 21:08:02', NULL, '2022-03-02 15:08:02', NULL),
(3, 11, 'Dhaka Bangladesh', 'Kuala Lumpur, Malaysia', '2', '2022-03-04 21:08:02', '2022-03-09 21:08:02', 'Demo Comment', 'New', '2022-03-02 21:08:02', NULL, '2022-03-02 15:08:02', NULL),
(4, 11, 'Dhaka Bangladesh', 'Kuala Lumpur, Malaysia', '2', '2022-03-04 21:08:02', '2022-03-09 21:08:02', 'Demo Comment', 'New', '2022-03-02 21:08:02', NULL, '2022-03-02 15:08:02', NULL),
(5, 11, 'Dhaka Bangladesh', 'Kuala Lumpur, Malaysia', '2', '2022-03-04 21:08:02', '2022-03-09 21:08:02', 'Demo Comment', 'New', '2022-03-02 21:08:02', NULL, '2022-03-02 15:08:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
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
(1, 1, 2, 'Super admin', 'sa@gmail.com', NULL, '$2y$10$kezvfN6he1cs5oQrQfnmn.rMKeLi/vhMlmmLFQM3D7FvZJKmYy0AG', 'super-admin', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(2, 12, 2, 'Bangladesh admin', 'ba@gmail.com', NULL, '$2y$10$zXxVw6lGFRxF5zroPXOXIu6rjqt9EJBtbqH5ol4io.epLJ47bz84W', 'bangladeshi-admin', 'Approved', NULL, NULL, 'Bangladesh admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(3, 9, 2, 'Travel Agency', 'travel@gmail.com', NULL, '$2y$10$MkdApLu2LIhdk7z6zJlso.UGxYL/8kEzrlSCL2sywinqyDU9cj8Ty', 'travel-agency', 'Approved', NULL, NULL, 'Travel Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(4, 10, 2, 'Biometric Agency', 'bio@gmail.com', NULL, '$2y$10$DztbeQtv5k3P/ycBOsL2fOfoWXwK5kIioTe0wouHMboEAwTc/0gva', 'biometric-agency', 'Approved', NULL, NULL, 'Biometric Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(5, 11, 2, 'Bangladesh Recruiting agency', 'bra@gmail.com', NULL, '$2y$10$89rtuZFijN6jXJUsKc7Uxexg/FxPY8SsXR7y01FnwailM3alzHsb.', 'bangladesh-recruiting-agency', 'Approved', NULL, NULL, 'Bangladesh Recruiting agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(6, 3, 2, 'Welfare sevice centre', 'wsc@gmail.com', NULL, '$2y$10$Cb7pR1toN.UIUPft6UNTdOfbfuUddSB.k3yDje4mym.Ssb6zqb9gy', 'welfare-service-center-company', 'Approved', NULL, NULL, 'Welfare sevice centre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(7, 5, 2, 'Master One stop service', 'moss@gmail.com', NULL, '$2y$10$qcSF.HRmWuaGPtRccAoiTOwTNxm7HbHUP3GZHIIdna4.JaXtDxQMm', 'master-one-stop-service', 'Approved', NULL, NULL, 'Master One stop service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(8, 2, 2, 'Malaysian Employer', 'malaysianemployer@gmail.com', NULL, '$2y$10$Qn4mIgl37L/8GU0bm4B2uu1nLLi9C5KuJwqgChF/9pTpKErM2qwHW', 'malaysian-employer', 'Approved', NULL, NULL, 'Malaysian Employer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(9, 4, 2, 'Bangladesh High Commission ', 'bhc@gmail.com', NULL, '$2y$10$ROv5VKGWihK53izKbHDRzO463Ix6prcv085qbTnRbT4lA33126qVG', 'bangladesh-high-commission', 'Approved', NULL, NULL, 'Bangladesh High Commission ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(10, 14, 2, 'Malaysia Admin', 'malaysiaadmin@gmail.com', NULL, '$2y$10$k6BXEWx0LKO7r4pYb37bI.8VQ9P4/40l4HbQ2.Os8tKQFWHka9By6', 'malaysia-admin', 'Approved', NULL, NULL, 'Malaysia Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(11, 6, 2, 'Child One Stop Service', 'coss@gmail.com', NULL, '$2y$10$7g0MEt.tL3kOW2ox7wCrt.Cj44AUnpdUvZKM98kZgZFm7JyEPV.gS', 'child-one-stop-service', 'Approved', NULL, NULL, 'Child One Stop Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(12, 7, 2, 'Medical Agency', 'ma@gmail.com', NULL, '$2y$10$EORVM98FMr/V15CIt6mvbOlEoSQ/izcqfBDqOLDzRFnaTwCFqE7Ma', 'medical-agency', 'Approved', NULL, NULL, 'Medical Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, '2022-03-02 15:08:01', '2022-03-02 15:08:01'),
(13, 8, 2, 'Training Agency', 'ta@gmail.com', NULL, '$2y$10$5pFn9tMCo092zzNktZmgKetD4wr0Iiw/efEPfcWYy0SOK4bus2.l.', 'training-agency', 'Approved', NULL, NULL, 'Training Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, '2022-03-02 15:08:02', '2022-03-02 15:08:02'),
(14, 15, 2, 'Malaysia Embassy', 'me@gmail.com', NULL, '$2y$10$A6POGRnB4vw0/fhFOoM2buQPt2WlYhMd/n1uJcAWp.qw4HuxlKJYa', 'malaysia-embassy', 'Approved', NULL, NULL, 'Malaysia Embassy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:02', '2022-03-02 15:08:02'),
(15, 16, 2, 'Candidate', 'candidate@gmail.com', NULL, '$2y$10$GhzaNTJvPQ3Dt4b9uV9mhu4/HHQsL6Q9N4V0d0z.5Kb/8zzgEWSyO', 'candidate', 'Approved', NULL, NULL, 'Candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:02', '2022-03-02 15:08:02'),
(16, 17, 2, 'Malaysia Recruiting Agency', 'mra@gmail.com', NULL, '$2y$10$b19Q76XIB7q2BMZlYaahFuP65dPaxO/0orhC/bPldde36W8j4c8ou', 'malaysia-recruiting-agency', 'Approved', NULL, NULL, 'Malaysia Recruiting Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:02', '2022-03-02 15:08:02'),
(17, 11, 18, 'Sonet Recruiting Agency BD', 'srab@gmail.com', NULL, '$2y$10$Ee7H9ek6VvlwjlwzFv8IUOmx6dXmQgr1IhIkmrCdW/fMWoVr3h3L2', 'bangladesh-recruiting-agency', 'Approved', NULL, 'srab.com', 'Sonet Recruiting Agency BD', '1313164', 'Sonet Recruiting Agency BD', '01487984654987', 'Dhaka', 'Dhaka', 'Dhaka fokirapul', 'Dkaha banglamotor', 'uploads/profile/vogkW72ZyKCZX5D50xjm-1646218057.png', 'uploads/profile/VRlWh9l1mzJVK2GyvZZ0-1646218058.pdf', NULL, NULL, NULL, NULL, NULL, '2022-03-02 15:08:02', '2022-03-02 15:08:02');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `new_passport_services`
--
ALTER TABLE `new_passport_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
