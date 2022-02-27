-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 15, 2022 at 10:00 AM
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
-- Database: `excelanto`
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
(1, 12, 8, 6, 'Demo candidate 11', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '12', NULL, '2022-02-15 09:00:19', NULL),
(2, 14, 8, 6, 'Demo candidate 12', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '17', NULL, '2022-02-15 09:00:19', NULL),
(3, 14, 8, 6, 'Demo candidate 13', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '12', NULL, '2022-02-15 09:00:19', NULL),
(4, 13, 8, 6, 'Demo candidate 14', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '11', NULL, '2022-02-15 09:00:19', NULL),
(5, 15, 8, 6, 'Demo candidate 15', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '19', NULL, '2022-02-15 09:00:19', NULL),
(6, 15, 8, 6, 'Demo candidate 16', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '17', NULL, '2022-02-15 09:00:19', NULL),
(7, 17, 8, 6, 'Demo candidate 17', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '14', NULL, '2022-02-15 09:00:19', NULL),
(8, 14, 8, 6, 'Demo candidate 18', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '16', NULL, '2022-02-15 09:00:19', NULL),
(9, 11, 8, 6, 'Demo candidate 19', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', '15', NULL, '2022-02-15 09:00:19', NULL);

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
(1, 19, 8, 6, 'Demo service 11', '127455', NULL, 'Demo Comments', 'Paid', 'Open', '13', 17.00, 'Banani Dhaka', NULL, 'Door delivery', '19', NULL, '2022-02-15 09:00:19', NULL),
(2, 13, 8, 6, 'Demo service 12', '419771', NULL, 'Demo Comments', 'Paid', 'Open', '15', 18.00, 'Banani Dhaka', NULL, 'Door delivery', '18', NULL, '2022-02-15 09:00:19', NULL),
(3, 17, 8, 6, 'Demo service 13', '268499', NULL, 'Demo Comments', 'Paid', 'Open', '11', 19.00, 'Banani Dhaka', NULL, 'Door delivery', '19', NULL, '2022-02-15 09:00:19', NULL),
(4, 19, 8, 6, 'Demo service 14', '237546', NULL, 'Demo Comments', 'Paid', 'Open', '19', 18.00, 'Banani Dhaka', NULL, 'Door delivery', '18', NULL, '2022-02-15 09:00:19', NULL),
(5, 19, 8, 6, 'Demo service 15', '421370', NULL, 'Demo Comments', 'Paid', 'Open', '14', 18.00, 'Banani Dhaka', NULL, 'Door delivery', '13', NULL, '2022-02-15 09:00:19', NULL),
(6, 12, 8, 6, 'Demo service 16', '387528', NULL, 'Demo Comments', 'Paid', 'Open', '14', 17.00, 'Banani Dhaka', NULL, 'Door delivery', '19', NULL, '2022-02-15 09:00:19', NULL),
(7, 16, 8, 6, 'Demo service 17', '368270', NULL, 'Demo Comments', 'Paid', 'Open', '16', 17.00, 'Banani Dhaka', NULL, 'Door delivery', '12', NULL, '2022-02-15 09:00:19', NULL),
(8, 19, 8, 6, 'Demo service 18', '435546', NULL, 'Demo Comments', 'Paid', 'Open', '11', 15.00, 'Banani Dhaka', NULL, 'Door delivery', '12', NULL, '2022-02-15 09:00:19', NULL),
(9, 14, 8, 6, 'Demo service 19', '431490', NULL, 'Demo Comments', 'Paid', 'Open', '14', 15.00, 'Banani Dhaka', NULL, 'Door delivery', '14', NULL, '2022-02-15 09:00:19', NULL);

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
(1, 11, 6, 3, 10, 2, '33', '31', NULL, '7NPcimDvbh', '2022-02-15 15:00:19', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 12, 6, 3, 10, 4, '20', '18', NULL, 'ZS7aXyumXT', '2022-02-15 15:00:19', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 13, 6, 3, 9, 5, '21', '19', NULL, '3OviIc347z', '2022-02-15 15:00:19', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 14, 6, 3, 2, 8, '43', '41', NULL, 'df1EAri49g', '2022-02-15 15:00:19', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 15, 6, 3, 2, 9, '36', '34', NULL, 'yOTdugOEa3', '2022-02-15 15:00:19', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 16, 6, 3, 7, 4, '48', '46', NULL, 'RZYyHCODtd', '2022-02-15 15:00:19', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 17, 6, 3, 10, 7, '26', '24', NULL, '8aSRtWXFJA', '2022-02-15 15:00:19', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 18, 6, 3, 3, 1, '40', '38', NULL, 'oTPBOuuOPo', '2022-02-15 15:00:19', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 19, 6, 3, 2, 1, '43', '41', NULL, 'obZZuifPAa', '2022-02-15 15:00:19', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 20, 6, 3, 1, 7, '38', '36', NULL, 'sGbiZuiybl', '2022-02-15 15:00:19', 'Applied', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 21, 6, 3, 5, 1, '22', '20', 'HguR5AUqDk', 'EYgU9T1M4m', '2022-02-15 15:00:19', 'Approved', 'Bangladesh Embassy', 18, '2022-02-15 15:00:19', 'Jg1DKw6XTt', 7, 'dBZKgJCbmE', NULL, NULL),
(12, 22, 6, 3, 8, 5, '24', '22', 'uYjOkU58o0', 'SWqp0aveBO', '2022-02-15 15:00:19', 'Approved', 'Bangladesh Embassy', 20, '2022-02-15 15:00:19', 'hPGngpKAar', 7, 'AQZmD1TWbF', NULL, NULL),
(13, 23, 6, 3, 2, 8, '36', '34', 'NoRJzc68Xd', 'XYc4CRmmyS', '2022-02-15 15:00:19', 'Approved', 'Bangladesh Embassy', 32, '2022-02-15 15:00:19', 'zfKi0yhWET', 7, 'YPGOcowoV0', NULL, NULL),
(14, 24, 6, 3, 3, 2, '27', '25', '0DA04dG9dd', 'piamcptTlt', '2022-02-15 15:00:19', 'Approved', 'Bangladesh Embassy', 23, '2022-02-15 15:00:19', 'hT4PrIMM7s', 7, 'Z03tCgg3CL', NULL, NULL),
(15, 25, 6, 3, 8, 2, '40', '38', 'arnovamOeK', '5wBLUB2XIM', '2022-02-15 15:00:19', 'Approved', 'Bangladesh Embassy', 36, '2022-02-15 15:00:19', 'vc8RBDZCv4', 7, 'yEgtlXq9NM', NULL, NULL),
(16, 26, 6, 3, 4, 2, '34', '32', 'WycR8nmv7f', 'aOEX2RNRgY', '2022-02-15 15:00:19', 'Approved', 'Bangladesh Embassy', 30, '2022-02-15 15:00:19', 'ijkAcIURcS', 7, 'BWyodRiLFR', NULL, NULL),
(17, 27, 6, 3, 1, 2, '35', '33', 'cRGZAwwEGk', 'h42jX155kN', '2022-02-15 15:00:19', 'Approved', 'Bangladesh Embassy', 31, '2022-02-15 15:00:19', 'PF6i6Eb89W', 7, 'kEfAwX1zCr', NULL, NULL),
(18, 28, 6, 3, 4, 8, '33', '31', 'jvNW6eOUax', '3Tx3EHQpfi', '2022-02-15 15:00:19', 'Approved', 'Bangladesh Embassy', 29, '2022-02-15 15:00:19', '2cb0wfsDWF', 7, 'RdFics60VQ', NULL, NULL),
(19, 29, 6, 3, 5, 4, '24', '22', 'jgqGzk0jSW', 'Gpfgd869x7', '2022-02-15 15:00:19', 'Approved', 'Bangladesh Embassy', 20, '2022-02-15 15:00:19', 'j1AUujwCz4', 7, 'GfbeHjZKnW', NULL, NULL),
(20, 30, 6, 3, 7, 4, '40', '38', 'VyOXVqwtj3', 'eM3yAK1qU9', '2022-02-15 15:00:19', 'Approved', 'Bangladesh Embassy', 36, '2022-02-15 15:00:19', 'eEgaeHRFa8', 7, '9Vcfr5umyl', NULL, NULL);

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
(1, 19, 8, 6, 'Demo service 11', 'Demo Comments', 'Approved', 102, 1041.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 14, '15', NULL, '2022-02-15 09:00:19', NULL),
(2, 17, 8, 6, 'Demo service 12', 'Demo Comments', 'Approved', 109, 1591.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 11, '17', NULL, '2022-02-15 09:00:19', NULL),
(3, 13, 8, 6, 'Demo service 13', 'Demo Comments', 'Approved', 148, 1225.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 14, '12', NULL, '2022-02-15 09:00:19', NULL),
(4, 13, 8, 6, 'Demo service 14', 'Demo Comments', 'Approved', 157, 1679.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 15, '17', NULL, '2022-02-15 09:00:19', NULL),
(5, 16, 8, 6, 'Demo service 15', 'Demo Comments', 'Approved', 128, 1408.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 15, '19', NULL, '2022-02-15 09:00:19', NULL),
(6, 19, 8, 6, 'Demo service 16', 'Demo Comments', 'Approved', 100, 1518.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 18, '14', NULL, '2022-02-15 09:00:19', NULL),
(7, 16, 8, 6, 'Demo service 17', 'Demo Comments', 'Approved', 176, 1503.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 11, '13', NULL, '2022-02-15 09:00:19', NULL),
(8, 15, 8, 6, 'Demo service 18', 'Demo Comments', 'Approved', 107, 1836.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 15, '16', NULL, '2022-02-15 09:00:19', NULL),
(9, 17, 8, 6, 'Demo service 19', 'Demo Comments', 'Approved', 106, 1173.00, 'Door delivery', 'Bonani Dhaka', NULL, 'Approved', 14, '18', NULL, '2022-02-15 09:00:19', NULL);

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
(1, 15, 5, 1, 7, 'Demo Name 0', '2021-30-07', 'male', 'nVPya9MCVEJc3r9SIP', '01856230550', 'demon0@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-02-15 09:00:19', NULL),
(2, 15, 1, 8, 6, 'Demo Name 1', '2021-30-07', 'male', 'AXIzZ4KMnaAaE8XsUm', '01856230550', 'demon1@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-02-15 09:00:19', NULL),
(3, 15, 8, 3, 9, 'Demo Name 2', '2021-30-07', 'male', 't0wEhy1fsJKChNWm8V', '01856230550', 'demon2@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-02-15 09:00:19', NULL),
(4, 15, 10, 9, 2, 'Demo Name 3', '2021-30-07', 'male', 'XXgBBLXtFAxSREEjR3', '01856230550', 'demon3@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-02-15 09:00:19', NULL),
(5, 15, 2, 1, 3, 'Demo Name 4', '2021-30-07', 'male', '9U7CuGIjdPxKE7sK9i', '01856230550', 'demon4@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-02-15 09:00:19', NULL),
(6, 15, 8, 10, 1, 'Demo Name 5', '2021-30-07', 'male', 'ianB70ztpX6HKWlrvN', '01856230550', 'demon5@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-02-15 09:00:19', NULL),
(7, 15, 7, 7, 5, 'Demo Name 6', '2021-30-07', 'male', 'UcUEkb0KIlPXG48154', '01856230550', 'demon6@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-02-15 09:00:19', NULL),
(8, 15, 7, 9, 6, 'Demo Name 7', '2021-30-07', 'male', '1OK3Fb7kz6o7FVH13P', '01856230550', 'demon7@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-02-15 09:00:19', NULL),
(9, 15, 4, 3, 2, 'Demo Name 8', '2021-30-07', 'male', 'EZpk66NnLBvT1F1ylu', '01856230550', 'demon8@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-02-15 09:00:19', NULL),
(10, 15, 4, 4, 1, 'Demo Name 9', '2021-30-07', 'male', 'vhGPIfV3LThKN1uLX7', '01856230550', 'demon9@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, '2022-02-15 09:00:19', NULL),
(11, 15, 8, 21, 6, 'Demo Name 11', '2021-30-07', 'male', 'Xw3V46kdc0RKbdgjB5', '01856230550', 'demon11@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-02-15 09:00:19', NULL),
(12, 15, 8, 21, 6, 'Demo Name 12', '2021-30-07', 'male', 'e1zvLoyz61dMUjUKjs', '01856230550', 'demon12@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-02-15 09:00:19', NULL),
(13, 15, 8, 21, 6, 'Demo Name 13', '2021-30-07', 'male', 'WmYRdWDkvsK09rUg7P', '01856230550', 'demon13@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-02-15 09:00:19', NULL),
(14, 15, 8, 21, 6, 'Demo Name 14', '2021-30-07', 'male', '7BkDXRMduqZd9MfyUv', '01856230550', 'demon14@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-02-15 09:00:19', NULL),
(15, 15, 8, 21, 6, 'Demo Name 15', '2021-30-07', 'male', '7lVaQR9NLoWmaVX6Uv', '01856230550', 'demon15@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-02-15 09:00:19', NULL),
(16, 15, 8, 21, 6, 'Demo Name 16', '2021-30-07', 'male', 'Cx3ysbOIZQELd3GdQk', '01856230550', 'demon16@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-02-15 09:00:19', NULL),
(17, 15, 8, 21, 6, 'Demo Name 17', '2021-30-07', 'male', 'NFhSgIRJdJUp3pAD8L', '01856230550', 'demon17@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-02-15 09:00:19', NULL),
(18, 15, 8, 21, 6, 'Demo Name 18', '2021-30-07', 'male', 'Q0ciRaoPLJWIUVZVDL', '01856230550', 'demon18@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-02-15 09:00:19', NULL),
(19, 15, 8, 21, 6, 'Demo Name 19', '2021-30-07', 'male', 'JDwkZzgHJoR9UQQ5gT', '01856230550', 'demon19@gmail.com', NULL, NULL, 'bangladesh', 'dhaka bangladesh', 'bahrain', 'Active', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Selected', 'Selected', NULL, NULL, '2022-02-15 09:00:19', NULL);

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
(1, 13, 8, 6, '343338', NULL, 'Demo Comments', 'Open', 'Open', 18, 17, 'Banani Dhaka', 'Door delivery', NULL, 15, NULL, '2022-02-15 09:00:19', NULL),
(2, 11, 8, 6, '392325', NULL, 'Demo Comments', 'Open', 'Open', 16, 18, 'Banani Dhaka', 'Door delivery', NULL, 11, NULL, '2022-02-15 09:00:19', NULL),
(3, 15, 8, 6, '245017', NULL, 'Demo Comments', 'Open', 'Open', 13, 11, 'Banani Dhaka', 'Door delivery', NULL, 13, NULL, '2022-02-15 09:00:19', NULL),
(4, 13, 8, 6, '356360', NULL, 'Demo Comments', 'Open', 'Open', 18, 15, 'Banani Dhaka', 'Door delivery', NULL, 14, NULL, '2022-02-15 09:00:19', NULL),
(5, 18, 8, 6, '373902', NULL, 'Demo Comments', 'Open', 'Open', 19, 18, 'Banani Dhaka', 'Door delivery', NULL, 12, NULL, '2022-02-15 09:00:19', NULL),
(6, 18, 8, 6, '120568', NULL, 'Demo Comments', 'Open', 'Open', 16, 15, 'Banani Dhaka', 'Door delivery', NULL, 16, NULL, '2022-02-15 09:00:19', NULL),
(7, 14, 8, 6, '292461', NULL, 'Demo Comments', 'Open', 'Open', 14, 14, 'Banani Dhaka', 'Door delivery', NULL, 15, NULL, '2022-02-15 09:00:19', NULL),
(8, 13, 8, 6, '250187', NULL, 'Demo Comments', 'Open', 'Open', 18, 12, 'Banani Dhaka', 'Door delivery', NULL, 11, NULL, '2022-02-15 09:00:19', NULL),
(9, 19, 8, 6, '495288', NULL, 'Demo Comments', 'Open', 'Open', 17, 13, 'Banani Dhaka', 'Door delivery', NULL, 12, NULL, '2022-02-15 09:00:19', NULL);

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
(1, 19, 8, 6, '175976', 'Demo Services', 226.00, 'Door delivery', 60.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 13, NULL, '2022-02-15 09:00:19', NULL),
(2, 16, 8, 6, '343371', 'Demo Services', 355.00, 'Door delivery', 59.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 15, NULL, '2022-02-15 09:00:19', NULL),
(3, 13, 8, 6, '319527', 'Demo Services', 159.00, 'Door delivery', 58.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 12, NULL, '2022-02-15 09:00:19', NULL),
(4, 19, 8, 6, '426122', 'Demo Services', 385.00, 'Door delivery', 53.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 19, NULL, '2022-02-15 09:00:19', NULL),
(5, 17, 8, 6, '244698', 'Demo Services', 130.00, 'Door delivery', 51.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 13, NULL, '2022-02-15 09:00:19', NULL),
(6, 15, 8, 6, '197825', 'Demo Services', 353.00, 'Door delivery', 58.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 12, NULL, '2022-02-15 09:00:19', NULL),
(7, 13, 8, 6, '317306', 'Demo Services', 390.00, 'Door delivery', 55.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 19, NULL, '2022-02-15 09:00:19', NULL),
(8, 13, 8, 6, '207841', 'Demo Services', 318.00, 'Door delivery', 51.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 18, NULL, '2022-02-15 09:00:19', NULL),
(9, 11, 8, 6, '318583', 'Demo Services', 254.00, 'Door delivery', 51.00, NULL, 'Banani Dhaka', 'Open', 'Demo Comments', 'Open', 12, NULL, '2022-02-15 09:00:19', NULL);

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
(1, 13, 8, 6, 'Demo candidate 11', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 15, NULL, '2022-02-15 09:00:19', NULL),
(2, 17, 8, 6, 'Demo candidate 12', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 11, NULL, '2022-02-15 09:00:19', NULL),
(3, 14, 8, 6, 'Demo candidate 13', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 16, NULL, '2022-02-15 09:00:19', NULL),
(4, 13, 8, 6, 'Demo candidate 14', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 11, NULL, '2022-02-15 09:00:19', NULL),
(5, 19, 8, 6, 'Demo candidate 15', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 16, NULL, '2022-02-15 09:00:19', NULL),
(6, 19, 8, 6, 'Demo candidate 16', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 13, NULL, '2022-02-15 09:00:19', NULL),
(7, 11, 8, 6, 'Demo candidate 17', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 12, NULL, '2022-02-15 09:00:19', NULL),
(8, 13, 8, 6, 'Demo candidate 18', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 18, NULL, '2022-02-15 09:00:19', NULL),
(9, 13, 8, 6, 'Demo candidate 19', 'Demo Company', 'Demo Service', 'Demo Comments', 'Open', 15, NULL, '2022-02-15 09:00:19', NULL);

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
(1, 1, 'kamrulGroup0', 'kamrul Group 0', 'company0@gmail.com', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(2, 2, 'kamrulGroup1', 'kamrul Group 1', 'company1@gmail.com', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(3, 3, 'kamrulGroup2', 'kamrul Group 2', 'company2@gmail.com', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(4, 4, 'kamrulGroup3', 'kamrul Group 3', 'company3@gmail.com', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(5, 5, 'kamrulGroup4', 'kamrul Group 4', 'company4@gmail.com', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(6, 6, 'kamrulGroup5', 'kamrul Group 5', 'company5@gmail.com', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(7, 7, 'kamrulGroup6', 'kamrul Group 6', 'company6@gmail.com', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(8, 8, 'kamrulGroup7', 'kamrul Group 7', 'company7@gmail.com', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(9, 9, 'kamrulGroup8', 'kamrul Group 8', 'company8@gmail.com', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(10, 10, 'kamrulGroup9', 'kamrul Group 9', 'company9@gmail.com', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18');

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
(2, '355', 'Albania(+355)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(3, '213', 'Algeria (+213)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(4, '684', 'American Samoa(+684)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(5, '376', 'Andorra (+376)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(6, '244', 'Angola (+244)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(7, '1264', 'Anguilla (+1264)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(8, '672', 'Antarctica(+672)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(9, '1268', 'Antigua & Barbuda (+1268)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(10, '54', 'Argentina (+54)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(11, '374', 'Armenia (+374)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(12, '297', 'Aruba (+297)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(13, '61', 'Australia (+61)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(14, '43', 'Austria (+43)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(15, '994', 'Azerbaijan (+994)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(16, '1242', 'Bahamas (+1242)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(17, '973', 'Bahrain (+973)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(18, '880', 'Bangladesh (+880)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(19, '1246', 'Barbados (+1246)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(20, '375', 'Belarus (+375)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(21, '32', 'Belgium (+32)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(22, '501', 'Belize (+501)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(23, '229', 'Benin (+229)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(24, '1441', 'Bermuda (+1441)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(25, '975', 'Bhutan (+975)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(26, '591', 'Bolivia (+591)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(27, '387', 'Bosnia Herzegovina (+387)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(28, '267', 'Botswana (+267)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(30, '55', 'Brazil (+55)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(31, '246', 'British Indian Ocean Territory(+246)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(32, '673', 'Brunei (+673)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(33, '359', 'Bulgaria (+359)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(34, '226', 'Burkina Faso (+226)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(35, '257', 'Burundi (+257)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(36, '855', 'Cambodia (+855)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(37, '237', 'Cameroon (+237)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(38, '1', 'Canada (+1)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(39, '238', 'Cape Verde Islands (+238)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(40, '1345', 'Cayman Islands (+1345)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(41, '236', 'Central African Republic (+236)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(42, '235', 'Chad(+235)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(43, '56', 'Chile (+56)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(44, '86', 'China (+86)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(47, '57', 'Colombia (+57)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(48, '269', 'Comoros (+269)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(49, '242', 'Congo (+242)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(50, '243', 'Congo The Democratic Republic Of The(+243)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(51, '682', 'Cook Islands (+682)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(52, '506', 'Costa Rica (+506)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(53, '225', 'Cote D\'Ivoire (Ivory Coast)(+225)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(54, '385', 'Croatia (+385)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(55, '53', 'Cuba (+53)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(56, '90392', 'Cyprus North (+90392)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(57, '42', 'Czech Republic (+42)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(58, '45', 'Denmark (+45)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(59, '253', 'Djibouti (+253)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(60, '1809', 'Dominica (+1809)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(62, '670', 'East Timor(+670)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(63, '593', 'Ecuador (+593)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(64, '20', 'Egypt (+20)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(65, '503', 'El Salvador (+503)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(66, '240', 'Equatorial Guinea (+240)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(67, '291', 'Eritrea (+291)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(68, '372', 'Estonia (+372)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(69, '251', 'Ethiopia (+251)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(71, '500', 'Falkland Islands (+500)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(72, '298', 'Faroe Islands (+298)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(73, '679', 'Fiji (+679)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(74, '358', 'Finland (+358)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(75, '33', 'France (+33)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(76, '594', 'French Guiana (+594)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(77, '689', 'French Polynesia (+689)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(78, '262', 'French Southern Territories(262)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(79, '241', 'Gabon (+241)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(80, '220', 'Gambia (+220)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(81, '7880', 'Georgia (+7880)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(82, '49', 'Germany (+49)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(83, '233', 'Ghana (+233)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(84, '350', 'Gibraltar (+350)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(85, '30', 'Greece (+30)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(86, '299', 'Greenland (+299)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(87, '1473', 'Grenada (+1473)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(88, '590', 'Guadeloupe (+590)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(89, '671', 'Guam (+671)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(90, '502', 'Guatemala (+502)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(91, '44', 'Guernsey and Alderney(44 1481)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(92, '224', 'Guinea (+224)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(93, '245', 'Guinea - Bissau (+245)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(94, '592', 'Guyana (+592)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(95, '509', 'Haiti (+509)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(97, '504', 'Honduras (+504)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(98, '852', 'Hong Kong (+852)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(99, '36', 'Hungary (+36)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(100, '354', 'Iceland (+354)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(101, '91', 'India (+91)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(102, '62', 'Indonesia (+62)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(103, '98', 'Iran (+98)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(104, '964', 'Iraq (+964)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(105, '353', 'Ireland (+353)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(106, '972', 'Israel (+972)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(107, '39', 'Italy (+39)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(108, '1876', 'Jamaica (+1876)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(109, '81', 'Japan (+81)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(111, '962', 'Jordan (+962)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(112, '7', 'Kazakhstan (+7)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(113, '254', 'Kenya (+254)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(114, '686', 'Kiribati (+686)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(115, '850', 'Korea North (+850)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(116, '82', 'Korea South (+82)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(117, '965', 'Kuwait (+965)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(118, '996', 'Kyrgyzstan (+996)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(119, '856', 'Laos (+856)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(120, '371', 'Latvia (+371)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(121, '961', 'Lebanon (+961)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(122, '266', 'Lesotho (+266)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(123, '231', 'Liberia (+231)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(124, '218', 'Libya (+218)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(125, '417', 'Liechtenstein (+417)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(126, '370', 'Lithuania (+370)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(127, '352', 'Luxembourg (+352)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(128, '853', 'Macao (+853)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(129, '389', 'Macedonia (+389)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(130, '261', 'Madagascar (+261)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(131, '265', 'Malawi (+265)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(132, '60', 'Malaysia (+60)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(133, '960', 'Maldives (+960)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(134, '223', 'Mali (+223)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(135, '356', 'Malta (+356)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(137, '692', 'Marshall Islands (+692)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(138, '596', 'Martinique (+596)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(139, '222', 'Mauritania (+222)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(140, '230', 'Mauritius(+230)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(142, '52', 'Mexico (+52)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(143, '691', 'Micronesia (+691)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(144, '373', 'Moldova (+373)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(145, '377', 'Monaco (+377)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(146, '976', 'Mongolia (+976)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(147, '1664', 'Montserrat (+1664)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(148, '212', 'Morocco (+212)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(149, '258', 'Mozambique (+258)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(150, '95', 'Myanmar(+95)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(151, '264', 'Namibia (+264)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(152, '674', 'Nauru (+674)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(153, '977', 'Nepal (+977)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(154, '599', 'Netherlands Antilles(+599)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(155, '31', 'Netherlands (+31)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(156, '687', 'New Caledonia (+687)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(157, '64', 'New Zealand (+64)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(158, '505', 'Nicaragua (+505)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(159, '227', 'Niger (+227)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(160, '234', 'Nigeria (+234)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(161, '683', 'Niue (+683)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(164, '47', 'Norway (+47)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(165, '968', 'Oman (+968)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(166, '92', 'Pakistan(+92)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(167, '680', 'Palau (+680)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(168, '970', 'Palestinian Territory Occupied(+970)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(169, '507', 'Panama (+507)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(170, '675', 'Papua New Guinea (+675)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(171, '595', 'Paraguay (+595)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(172, '51', 'Peru (+51)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(173, '63', 'Philippines (+63)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(175, '48', 'Poland (+48)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(176, '351', 'Portugal (+351)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(177, '1787', 'Puerto Rico (+1787)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(178, '974', 'Qatar (+974)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(180, '40', 'Romania (+40)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(182, '250', 'Rwanda (+250)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(183, '290', 'St. Helena (+290)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(184, '1869', 'St. Kitts (+1869)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(185, '1758', 'Saint Lucia(+1758)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(186, '508', 'Saint Pierre and Miquelon(+508)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(187, '1784', 'Saint Vincent And The Grenadines(+1784)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(188, '685', 'Samoa(+685)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(189, '378', 'San Marino (+378)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(190, '239', 'Sao Tome & Principe (+239)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(191, '966', 'Saudi Arabia (+966)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(192, '221', 'Senegal (+221)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(193, '381', 'Serbia(+381)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(194, '248', 'Seychelles (+248)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(195, '232', 'Sierra Leone (+232)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(196, '65', 'Singapore (+65)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(197, '421', 'Slovak Republic (+421)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(198, '386', 'Slovenia (+386)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(200, '677', 'Solomon Islands (+677)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(201, '252', 'Somalia (+252)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(202, '27', 'South Africa (+27)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(204, '211', 'South Sudan(+211)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(205, '34', 'Spain (+34)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(206, '94', 'Sri Lanka (+94)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(207, '249', 'Sudan (+249)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(208, '597', 'Suriname (+597)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(210, '268', 'Swaziland (+268)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(211, '46', 'Sweden (+46)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(212, '41', 'Switzerland (+41)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(213, '963', 'Syria(+963)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(214, '886', 'Taiwan (+886)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(216, '255', 'Tanzania(+255)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(217, '66', 'Thailand (+66)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(218, '228', 'Togo (+228)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(219, '690', 'Tokelau(+690)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(220, '676', 'Tonga (+676)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(221, '1868', 'Trinidad & Tobago (+1868)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(222, '216', 'Tunisia (+216)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(223, '90', 'Turkey (+90)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(225, '1649', 'Turks & Caicos Islands (+1649)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(226, '688', 'Tuvalu (+688)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(227, '256', 'Uganda (+256)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(228, '380', 'Ukraine (+380)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(229, '971', 'United Arab Emirates (+971)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(233, '598', 'Uruguay (+598)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(235, '678', 'Vanuatu (+678)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(236, '379', 'Vatican City (+379)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(237, '58', 'Venezuela (+58)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(238, '84', 'Vietnam (+84)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(241, '681', 'Wallis & Futuna (+681)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(243, '969', 'Yemen (North)(+969)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(244, '38', 'Yugoslavia(+38)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(245, '260', 'Zambia (+260)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(246, '263', 'Zimbabwe (+263)', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
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
(1, 6, 'Demo candidate 11', 'Demo Co. name 11', 'Demo name 11', 'Brother', NULL, '1655', '2027-02-15 15:00:19', '1314', '2027-02-15 15:00:19', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '14517064', 'Demo Comments', 'Open', '17', NULL, '2022-02-15 09:00:19', NULL),
(2, 6, 'Demo candidate 12', 'Demo Co. name 12', 'Demo name 12', 'Brother', NULL, '1910', '2027-02-15 15:00:19', '1328', '2027-02-15 15:00:19', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '17379959', 'Demo Comments', 'Open', '13', NULL, '2022-02-15 09:00:19', NULL),
(3, 6, 'Demo candidate 13', 'Demo Co. name 13', 'Demo name 13', 'Brother', NULL, '1580', '2027-02-15 15:00:19', '1765', '2027-02-15 15:00:19', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '16456598', 'Demo Comments', 'Open', '15', NULL, '2022-02-15 09:00:19', NULL),
(4, 6, 'Demo candidate 14', 'Demo Co. name 14', 'Demo name 14', 'Brother', NULL, '1198', '2027-02-15 15:00:19', '1814', '2027-02-15 15:00:19', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '12675170', 'Demo Comments', 'Open', '13', NULL, '2022-02-15 09:00:19', NULL),
(5, 6, 'Demo candidate 15', 'Demo Co. name 15', 'Demo name 15', 'Brother', NULL, '1381', '2027-02-15 15:00:19', '1152', '2027-02-15 15:00:19', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '14539782', 'Demo Comments', 'Open', '14', NULL, '2022-02-15 09:00:19', NULL),
(6, 6, 'Demo candidate 16', 'Demo Co. name 16', 'Demo name 16', 'Brother', NULL, '1139', '2027-02-15 15:00:19', '1628', '2027-02-15 15:00:19', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '18123055', 'Demo Comments', 'Open', '16', NULL, '2022-02-15 09:00:19', NULL),
(7, 6, 'Demo candidate 17', 'Demo Co. name 17', 'Demo name 17', 'Brother', NULL, '1949', '2027-02-15 15:00:19', '1516', '2027-02-15 15:00:19', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '16805666', 'Demo Comments', 'Open', '18', NULL, '2022-02-15 09:00:19', NULL),
(8, 6, 'Demo candidate 18', 'Demo Co. name 18', 'Demo name 18', 'Brother', NULL, '1600', '2027-02-15 15:00:19', '1336', '2027-02-15 15:00:19', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '12515016', 'Demo Comments', 'Open', '16', NULL, '2022-02-15 09:00:19', NULL),
(9, 6, 'Demo candidate 19', 'Demo Co. name 19', 'Demo name 19', 'Brother', NULL, '1659', '2027-02-15 15:00:19', '1494', '2027-02-15 15:00:19', 'Couse of Death', 'Bonani Dhaka', 'Demo Relative name', '18208516', 'Demo Comments', 'Open', '17', NULL, '2022-02-15 09:00:19', NULL);

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
(1, 'aWWYWJIATM', 'active', NULL, NULL),
(2, 'GejZOGhLEL', 'active', NULL, NULL),
(3, 'cWP47G1wdK', 'active', NULL, NULL),
(4, 'EsQDJKp0cy', 'active', NULL, NULL),
(5, 'MW55cDj9jf', 'active', NULL, NULL),
(6, '8R8zYTD5Ti', 'active', NULL, NULL),
(7, 'A4uXzq6Lxp', 'active', NULL, NULL),
(8, 'uAxPvPhcPJ', 'active', NULL, NULL),
(9, '5q4Uhl6Y6b', 'active', NULL, NULL),
(10, 'Z73A4oTS3s', 'active', NULL, NULL),
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
(1, 17, 6, 6, 'Demo Candidate 0', 'Demo Company 0', '35735', '11017', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-02-15 09:00:19', NULL),
(2, 17, 6, 6, 'Demo Candidate 1', 'Demo Company 1', '23442', '20458', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-02-15 09:00:19', NULL),
(3, 14, 6, 6, 'Demo Candidate 2', 'Demo Company 2', '16596', '9079', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-02-15 09:00:19', NULL),
(4, 14, 6, 6, 'Demo Candidate 3', 'Demo Company 3', '47373', '9525', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-02-15 09:00:19', NULL),
(5, 16, 6, 6, 'Demo Candidate 4', 'Demo Company 4', '11400', '42284', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-02-15 09:00:19', NULL),
(6, 11, 6, 6, 'Demo Candidate 5', 'Demo Company 5', '15556', '17949', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-02-15 09:00:19', NULL),
(7, 14, 6, 6, 'Demo Candidate 6', 'Demo Company 6', '16013', '46785', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-02-15 09:00:19', NULL),
(8, 16, 6, 6, 'Demo Candidate 7', 'Demo Company 7', '5627', '42272', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-02-15 09:00:19', NULL),
(9, 13, 6, 6, 'Demo Candidate 8', 'Demo Company 8', '5620', '48324', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-02-15 09:00:19', NULL),
(10, 12, 6, 6, 'Demo Candidate 9', 'Demo Company 9', '19905', '26417', 'Demo Comments', NULL, 'Open', NULL, 200.00, NULL, NULL, NULL, NULL, '2', '6', NULL, '2022-02-15 09:00:19', NULL);

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
(1, 16, 8, 6, 'Demo service 11', '18913852', NULL, 'Demo Comments', 'Open', '14', NULL, '2022-02-15 09:00:19', NULL),
(2, 16, 8, 6, 'Demo service 12', '13051558', NULL, 'Demo Comments', 'Open', '11', NULL, '2022-02-15 09:00:19', NULL),
(3, 19, 8, 6, 'Demo service 13', '12252242', NULL, 'Demo Comments', 'Open', '12', NULL, '2022-02-15 09:00:19', NULL),
(4, 17, 8, 6, 'Demo service 14', '17655777', NULL, 'Demo Comments', 'Open', '14', NULL, '2022-02-15 09:00:19', NULL),
(5, 17, 8, 6, 'Demo service 15', '16429868', NULL, 'Demo Comments', 'Open', '13', NULL, '2022-02-15 09:00:19', NULL),
(6, 17, 8, 6, 'Demo service 16', '17820946', NULL, 'Demo Comments', 'Open', '16', NULL, '2022-02-15 09:00:19', NULL),
(7, 15, 8, 6, 'Demo service 17', '17654348', NULL, 'Demo Comments', 'Open', '17', NULL, '2022-02-15 09:00:19', NULL),
(8, 13, 8, 6, 'Demo service 18', '15805564', NULL, 'Demo Comments', 'Open', '12', NULL, '2022-02-15 09:00:19', NULL),
(9, 19, 8, 6, 'Demo service 19', '12848982', NULL, 'Demo Comments', 'Open', '14', NULL, '2022-02-15 09:00:19', NULL);

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
(1, 16, 8, 6, 'Demo service 11', 'Demo Comments', 'Approved', 'Approved', '102', 1552.00, 'Dhaka bonani', NULL, 'Door delivery', '18', NULL, '2022-02-15 09:00:19', NULL),
(2, 12, 8, 6, 'Demo service 12', 'Demo Comments', 'Approved', 'Approved', '159', 1485.00, 'Dhaka bonani', NULL, 'Door delivery', '16', NULL, '2022-02-15 09:00:19', NULL),
(3, 11, 8, 6, 'Demo service 13', 'Demo Comments', 'Approved', 'Approved', '158', 1963.00, 'Dhaka bonani', NULL, 'Door delivery', '13', NULL, '2022-02-15 09:00:19', NULL),
(4, 14, 8, 6, 'Demo service 14', 'Demo Comments', 'Approved', 'Approved', '103', 1702.00, 'Dhaka bonani', NULL, 'Door delivery', '19', NULL, '2022-02-15 09:00:19', NULL),
(5, 18, 8, 6, 'Demo service 15', 'Demo Comments', 'Approved', 'Approved', '109', 1276.00, 'Dhaka bonani', NULL, 'Door delivery', '18', NULL, '2022-02-15 09:00:19', NULL),
(6, 11, 8, 6, 'Demo service 16', 'Demo Comments', 'Approved', 'Approved', '105', 1237.00, 'Dhaka bonani', NULL, 'Door delivery', '17', NULL, '2022-02-15 09:00:19', NULL),
(7, 12, 8, 6, 'Demo service 17', 'Demo Comments', 'Approved', 'Approved', '120', 1592.00, 'Dhaka bonani', NULL, 'Door delivery', '18', NULL, '2022-02-15 09:00:19', NULL),
(8, 16, 8, 6, 'Demo service 18', 'Demo Comments', 'Approved', 'Approved', '108', 1738.00, 'Dhaka bonani', NULL, 'Door delivery', '13', NULL, '2022-02-15 09:00:19', NULL),
(9, 14, 8, 6, 'Demo service 19', 'Demo Comments', 'Approved', 'Approved', '152', 1629.00, 'Dhaka bonani', NULL, 'Door delivery', '14', NULL, '2022-02-15 09:00:19', NULL);

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
(1, 11, 8, 6, 2, 'Demo Name 11', 'Brother ', '1710', '2027-02-15 15:00:19', '1008', '2027-02-15 15:00:19', 'Couse of Arrest', 'Demo Police Station', '2022-02-10 15:00:19', NULL, 'Demo Comments', '11', 'Open', NULL, '2022-02-15 09:00:19', NULL),
(2, 12, 8, 6, 1, 'Demo Name 12', 'Brother ', '1851', '2027-02-15 15:00:19', '1505', '2027-02-15 15:00:19', 'Couse of Arrest', 'Demo Police Station', '2022-02-10 15:00:19', NULL, 'Demo Comments', '2', 'Open', NULL, '2022-02-15 09:00:19', NULL),
(3, 13, 8, 6, 4, 'Demo Name 13', 'Brother ', '1165', '2027-02-15 15:00:19', '1624', '2027-02-15 15:00:19', 'Couse of Arrest', 'Demo Police Station', '2022-02-10 15:00:19', NULL, 'Demo Comments', '7', 'Open', NULL, '2022-02-15 09:00:19', NULL),
(4, 14, 8, 6, 10, 'Demo Name 14', 'Brother ', '1417', '2027-02-15 15:00:19', '1853', '2027-02-15 15:00:19', 'Couse of Arrest', 'Demo Police Station', '2022-02-10 15:00:19', NULL, 'Demo Comments', '2', 'Open', NULL, '2022-02-15 09:00:19', NULL),
(5, 15, 8, 6, 4, 'Demo Name 15', 'Brother ', '1662', '2027-02-15 15:00:19', '1470', '2027-02-15 15:00:19', 'Couse of Arrest', 'Demo Police Station', '2022-02-10 15:00:19', NULL, 'Demo Comments', '19', 'Open', NULL, '2022-02-15 09:00:19', NULL),
(6, 16, 8, 6, 1, 'Demo Name 16', 'Brother ', '1698', '2027-02-15 15:00:19', '1721', '2027-02-15 15:00:19', 'Couse of Arrest', 'Demo Police Station', '2022-02-10 15:00:19', NULL, 'Demo Comments', '9', 'Open', NULL, '2022-02-15 09:00:19', NULL),
(7, 17, 8, 6, 4, 'Demo Name 17', 'Brother ', '1750', '2027-02-15 15:00:19', '1043', '2027-02-15 15:00:19', 'Couse of Arrest', 'Demo Police Station', '2022-02-10 15:00:19', NULL, 'Demo Comments', '6', 'Open', NULL, '2022-02-15 09:00:19', NULL),
(8, 18, 8, 6, 11, 'Demo Name 18', 'Brother ', '1549', '2027-02-15 15:00:19', '1160', '2027-02-15 15:00:19', 'Couse of Arrest', 'Demo Police Station', '2022-02-10 15:00:19', NULL, 'Demo Comments', '19', 'Open', NULL, '2022-02-15 09:00:19', NULL),
(9, 19, 8, 6, 2, 'Demo Name 19', 'Brother ', '1844', '2027-02-15 15:00:19', '1631', '2027-02-15 15:00:19', 'Couse of Arrest', 'Demo Police Station', '2022-02-10 15:00:19', NULL, 'Demo Comments', '14', 'Open', NULL, '2022-02-15 09:00:19', NULL);

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
  `appointment_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rejection_reason` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('New','Verified','Approved','Applied','Rejected','Pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `bd_embasy_status` enum('Approved','Rejected') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_posts`
--

INSERT INTO `job_posts` (`id`, `job_category_id`, `user_id`, `company_id`, `employment_type`, `gender`, `age_limit`, `salary`, `job_location`, `job_vacancy`, `app_vacancy`, `end_date`, `demand_letter`, `selected_wsc`, `appointment_date`, `appointment_time`, `rejection_reason`, `status`, `bd_embasy_status`, `created_at`, `updated_at`) VALUES
(1, 7, 6, 6, 'Full Time', 'Male only', '36', '15704', 'Dhaka Bangladesh', 60, NULL, '2022-02-15 15:00:19', 0x6a4f6548774e7a504636, 6, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Approved', 'Approved', '2022-02-15 09:00:19', NULL),
(2, 8, 6, 6, 'Full Time', 'Male only', '41', '47249', 'Dhaka Bangladesh', 95, NULL, '2022-02-15 15:00:19', 0x7970346d4a334f46356b, 4, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Approved', 'Approved', '2022-02-15 09:00:19', NULL),
(3, 6, 6, 6, 'Full Time', 'Male only', '45', '44403', 'Dhaka Bangladesh', 50, NULL, '2022-02-15 15:00:19', 0x784b796a693765545773, 9, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Approved', 'Approved', '2022-02-15 09:00:19', NULL),
(4, 10, 6, 6, 'Full Time', 'Male only', '37', '19856', 'Dhaka Bangladesh', 97, NULL, '2022-02-15 15:00:19', 0x50446f58444e41335538, 1, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Approved', 'Approved', '2022-02-15 09:00:19', NULL),
(5, 11, 6, 6, 'Full Time', 'Male only', '50', '34472', 'Dhaka Bangladesh', 99, NULL, '2022-02-15 15:00:19', 0x4b4575625a4f62523462, 5, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Approved', 'Approved', '2022-02-15 09:00:19', NULL),
(6, 12, 6, 6, 'Full Time', 'Male only', '47', '33876', 'Dhaka Bangladesh', 64, NULL, '2022-02-15 15:00:19', 0x57456c5a6c5857765465, 7, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Approved', 'Approved', '2022-02-15 09:00:19', NULL),
(7, 12, 6, 6, 'Full Time', 'Male only', '36', '30342', 'Dhaka Bangladesh', 76, NULL, '2022-02-15 15:00:19', 0x4a37554751656a6b4462, 8, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Approved', 'Approved', '2022-02-15 09:00:19', NULL),
(8, 6, 6, 6, 'Full Time', 'Male only', '49', '43565', 'Dhaka Bangladesh', 65, NULL, '2022-02-15 15:00:19', 0x704d5252554d4347735a, 4, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Approved', 'Approved', '2022-02-15 09:00:19', NULL),
(9, 11, 6, 6, 'Full Time', 'Male only', '22', '32486', 'Dhaka Bangladesh', 67, NULL, '2022-02-15 15:00:19', 0x743471464d784f593536, 1, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Approved', 'Approved', '2022-02-15 09:00:19', NULL),
(10, 6, 6, 6, 'Full Time', 'Male only', '33', '10274', 'Dhaka Bangladesh', 98, NULL, '2022-02-15 15:00:19', 0x795966734e3839725764, 3, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Approved', 'Approved', '2022-02-15 09:00:19', NULL),
(11, 12, 6, 6, '9wXmmmxls3', 'Male only', '42', '39909', 'ngMFl3ChZA', 33, NULL, '2022-02-15 15:00:19', 0x5061447033504633466a, 10, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(12, 11, 6, 6, 'EIbNzLgptP', 'Male only', '34', '18472', '6LsVHZHFWy', 20, NULL, '2022-02-15 15:00:19', 0x663354717a45376d5671, 5, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(13, 9, 6, 6, 'wsrzks1wOv', 'Male only', '28', '34582', '6YuQILqXHw', 21, NULL, '2022-02-15 15:00:19', 0x6944354f4f6243754251, 4, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(14, 9, 6, 6, 'fwQIkGMYEa', 'Male only', '45', '23392', 'vsMQBEHllO', 43, NULL, '2022-02-15 15:00:19', 0x547168465a5264486751, 7, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(15, 10, 6, 6, 'RPWX72DZFP', 'Male only', '31', '41321', 'wthBeJp2cb', 36, NULL, '2022-02-15 15:00:19', 0x53733851327543797570, 2, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(16, 9, 6, 6, '3i15nsqbwv', 'Male only', '32', '20116', 'enLSBjmks2', 48, NULL, '2022-02-15 15:00:19', 0x71424b6f744364726946, 8, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(17, 12, 6, 6, 'yTpARbNoVS', 'Male only', '25', '9133', 'RSCtpUknac', 26, NULL, '2022-02-15 15:00:19', 0x414f5a62527142755450, 8, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(18, 7, 6, 6, 'KqOxB7cava', 'Male only', '47', '39826', 'v6NrolC4yb', 40, NULL, '2022-02-15 15:00:19', 0x6a44684b4e4772725a4c, 6, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(19, 8, 6, 6, '7lSLHZIO70', 'Male only', '24', '49933', 'jXwyYg4Vjm', 43, NULL, '2022-02-15 15:00:19', 0x77444959326d77763773, 7, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(20, 10, 6, 6, 'liIpbwMpzR', 'Male only', '36', '35490', 'TwaUpBt2ep', 38, NULL, '2022-02-15 15:00:19', 0x776b38636d3077484953, 3, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(21, 8, 6, 6, 'TTz60PO061', 'Male only', '24', '5872', 'Obv6QpL6jx', 22, NULL, '2022-02-15 15:00:19', 0x65633639315578305034, 2, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(22, 8, 6, 6, 'vUYmLFI2Cu', 'Male only', '23', '13413', 'xIOCS2Xcob', 24, NULL, '2022-02-15 15:00:19', 0x447a344c6b4a75667557, 3, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(23, 6, 6, 6, 'Qp8X7Oxt6W', 'Male only', '46', '29403', 'GQh9rfmrKy', 36, NULL, '2022-02-15 15:00:19', 0x4554326c307331526737, 2, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(24, 6, 6, 6, 'dm1fcnyo9o', 'Male only', '35', '18604', '33F1ariTO2', 27, NULL, '2022-02-15 15:00:19', 0x75517833464749694f55, 2, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(25, 12, 6, 6, 'cCbyoOiQmX', 'Male only', '45', '21944', '62QNiYWoza', 40, NULL, '2022-02-15 15:00:19', 0x31585830724f3143467a, 3, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(26, 7, 6, 6, 'ffc02J8p7t', 'Male only', '45', '20922', 'Xn4JqhxM5i', 34, NULL, '2022-02-15 15:00:19', 0x744b774958577774354c, 7, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(27, 10, 6, 6, 'Ks5VrKgHc2', 'Male only', '45', '44925', '2KIGKpwJZL', 35, NULL, '2022-02-15 15:00:19', 0x307454386b336d66517a, 8, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(28, 7, 6, 6, 's3eT52IBaA', 'Male only', '30', '9994', 'SCp6GDdBeY', 33, NULL, '2022-02-15 15:00:19', 0x624a305a733254633270, 6, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(29, 6, 6, 6, 'z891ywmhsJ', 'Male only', '28', '31956', 's3m0Rfssbx', 24, NULL, '2022-02-15 15:00:19', 0x66644241303356613779, 4, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL),
(30, 10, 6, 6, 'pur3g3sypV', 'Male only', '26', '15970', 'dSgQmn1NTZ', 40, NULL, '2022-02-15 15:00:19', 0x75374739513665304271, 1, '2022-02-15 15:00:19', '2022-02-15 15:00:19', NULL, 'Applied', 'Approved', '2022-02-15 09:00:19', NULL);

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
(1, 14, 8, 6, 'Demo Service', 'Open', '16', NULL, '2022-02-15 09:00:19', NULL),
(2, 13, 8, 6, 'Demo Service', 'Open', '14', NULL, '2022-02-15 09:00:19', NULL),
(3, 19, 8, 6, 'Demo Service', 'Open', '13', NULL, '2022-02-15 09:00:19', NULL),
(4, 14, 8, 6, 'Demo Service', 'Open', '15', NULL, '2022-02-15 09:00:19', NULL),
(5, 11, 8, 6, 'Demo Service', 'Open', '11', NULL, '2022-02-15 09:00:19', NULL),
(6, 17, 8, 6, 'Demo Service', 'Open', '15', NULL, '2022-02-15 09:00:19', NULL),
(7, 13, 8, 6, 'Demo Service', 'Open', '19', NULL, '2022-02-15 09:00:19', NULL),
(8, 12, 8, 6, 'Demo Service', 'Open', '15', NULL, '2022-02-15 09:00:19', NULL),
(9, 14, 8, 6, 'Demo Service', 'Open', '16', NULL, '2022-02-15 09:00:19', NULL);

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
(1, 16, 6, 6, 2, '10652', '33810', '35035', '6LQXdCjdAu0vseSiCm7JUISLjzwW42HAZorfapHVpqi5RZ7jvG', 'fSDHE0h7BKqTgaioQUNCrOgWVbrbpoh4wSlxvkXJ2uF3kyzVU8', '168', '31764', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-02-15 09:00:19', NULL),
(2, 11, 6, 6, 2, '16834', '39580', '11061', 'Xvtx512yTaZuyEhhKQQmbuNEYVR0Upf6Atd75P4zydnIJisLXo', 'QNqDl1qlBwC9iO3PTtoK49f7QSH2BuU1qJNWduT5d7jrXvK7yi', '199', '19088', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-02-15 09:00:19', NULL),
(3, 17, 6, 6, 2, '17694', '23028', '30855', '9ebtok9MRSkhXCml4XoKuyOwyEFGLcwJKwhAe56qt8x7TlKZmw', 'ufiBeKjSnInHkXilqtVwdYxMIesMqu4lVZblmcPv4YSwtQkMZh', '285', '43571', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-02-15 09:00:19', NULL),
(4, 14, 6, 6, 2, '17586', '37802', '36503', 'SIYWnZAZe36K9wpKbI4xSGKYomxiwLzGhEsvSLsCLB6b27mFlB', 'kWBLE2XyVxOwurrw6zheXDFoQHnJiahkTKoq4qXiZjRTMBsFe2', '133', '10340', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-02-15 09:00:19', NULL),
(5, 18, 6, 6, 2, '37339', '14114', '49542', '3SgT7nnZGWNN2kMvXvPBQDu4A85iDbIe6hSajYHV7dKE1XVgYl', 'RZyOXmICLk6YoLuiwahI2MU0mu42Zr5kf6DGt4bD4gyzBnIGse', '98', '24205', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-02-15 09:00:19', NULL),
(6, 15, 6, 6, 2, '13081', '39142', '26196', 'N9vOzRLmbdVDGdaXgnaRqH4GhSmnYtJDvCjzbzE4y4WDTjGZHb', 'G31ADUg8lOrRM9A3U1FVGTvdNb2ykhYDOr8aDXweN6LToNeweg', '441', '15238', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-02-15 09:00:19', NULL),
(7, 13, 6, 6, 2, '31472', '34078', '36946', 'VB9W3vaRSEop7m9htJKdA3irHkJnczl8b1m5WTIp5UyfyurxHD', 'ECZedq6tdxip0e3CncNceq0eYwUV0WMemCdrZHUAaGK7RNcapP', '324', '25968', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-02-15 09:00:19', NULL),
(8, 13, 6, 6, 2, '41491', '32744', '13983', '7TQykox51EpDeJML9cCqTI29a0bVwr9GWw0gwBWYfY3TxCBvP0', 'ua6Uzj7Sn3GkfrPIjbgMsQoMc2fXZKxHxnzVIFT7uPnGzZR8uV', '291', '39357', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-02-15 09:00:19', NULL),
(9, 17, 6, 6, 2, '23540', '29336', '6882', 'pi1oiwSvzhdGzX2awxU4qWv8YEOyQzU1oJkWz5g3kHrTD1ZP04', 'gnqY1hSokplg9Fkfr1L7kwtb7gBplH0hqdYRvIWjAoGKZy0EfP', '76', '7139', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-02-15 09:00:19', NULL),
(10, 16, 6, 6, 2, '28582', '23845', '26642', 'dfmsumWl4x40vxE4WZZSxG04OaNFXS3K08lcQLFgIOWtitPjkr', 'iI10jRnpH9c1XSdVPliOsaEYT5PKBp05sJf7HmPVMHlJ7mqXVV', '481', '10369', 'Demo Comments', 'Open', NULL, NULL, NULL, NULL, 200.00, NULL, 6, NULL, '2022-02-15 09:00:19', NULL);

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
(1, 12, 1, 6, 'Demo name 11', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '17003087', NULL, 'Demo Comments', 'Open', '12', NULL, '2022-02-15 09:00:19', NULL),
(2, 14, 1, 6, 'Demo name 12', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '17816646', NULL, 'Demo Comments', 'Open', '12', NULL, '2022-02-15 09:00:19', NULL),
(3, 19, 1, 6, 'Demo name 13', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '14242502', NULL, 'Demo Comments', 'Open', '11', NULL, '2022-02-15 09:00:19', NULL),
(4, 19, 1, 6, 'Demo name 14', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '14348864', NULL, 'Demo Comments', 'Open', '11', NULL, '2022-02-15 09:00:19', NULL),
(5, 15, 1, 6, 'Demo name 15', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '13555143', NULL, 'Demo Comments', 'Open', '15', NULL, '2022-02-15 09:00:19', NULL),
(6, 19, 1, 6, 'Demo name 16', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '18703615', NULL, 'Demo Comments', 'Open', '19', NULL, '2022-02-15 09:00:19', NULL),
(7, 16, 1, 6, 'Demo name 17', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '18018700', NULL, 'Demo Comments', 'Open', '13', NULL, '2022-02-15 09:00:19', NULL),
(8, 13, 1, 6, 'Demo name 18', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '10982843', NULL, 'Demo Comments', 'Open', '12', NULL, '2022-02-15 09:00:19', NULL),
(9, 19, 1, 6, 'Demo name 19', 'Demon Co. name', 'Fiver / Cold', 'Demo Doctor name', 'Demo Hospital name', NULL, '19458646', NULL, 'Demo Comments', 'Open', '18', NULL, '2022-02-15 09:00:19', NULL);

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
(1, 11, 8, 6, 'Demo Guest Name11', '7', 'Demo service namwe11', '2022-02-10 15:00:19', 'Qatar Airlines', '1241', '2022-02-20 15:00:19', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-02-15 09:00:19', NULL),
(2, 12, 8, 6, 'Demo Guest Name12', '7', 'Demo service namwe12', '2022-02-10 15:00:19', 'Qatar Airlines', '1470', '2022-02-20 15:00:19', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-02-15 09:00:19', NULL),
(3, 13, 8, 6, 'Demo Guest Name13', '10', 'Demo service namwe13', '2022-02-10 15:00:19', 'Qatar Airlines', '1675', '2022-02-20 15:00:19', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-02-15 09:00:19', NULL),
(4, 14, 8, 6, 'Demo Guest Name14', '7', 'Demo service namwe14', '2022-02-10 15:00:19', 'Qatar Airlines', '1882', '2022-02-20 15:00:19', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-02-15 09:00:19', NULL),
(5, 15, 8, 6, 'Demo Guest Name15', '7', 'Demo service namwe15', '2022-02-10 15:00:19', 'Qatar Airlines', '1973', '2022-02-20 15:00:19', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-02-15 09:00:19', NULL),
(6, 16, 8, 6, 'Demo Guest Name16', '8', 'Demo service namwe16', '2022-02-10 15:00:19', 'Qatar Airlines', '1363', '2022-02-20 15:00:19', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-02-15 09:00:19', NULL),
(7, 17, 8, 6, 'Demo Guest Name17', '8', 'Demo service namwe17', '2022-02-10 15:00:19', 'Qatar Airlines', '1236', '2022-02-20 15:00:19', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-02-15 09:00:19', NULL),
(8, 18, 8, 6, 'Demo Guest Name18', '8', 'Demo service namwe18', '2022-02-10 15:00:19', 'Qatar Airlines', '1367', '2022-02-20 15:00:19', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-02-15 09:00:19', NULL),
(9, 19, 8, 6, 'Demo Guest Name19', '10', 'Demo service namwe19', '2022-02-10 15:00:19', 'Qatar Airlines', '1856', '2022-02-20 15:00:19', 'Demo Data', NULL, 'Demo Comments', 'Active', '6', NULL, '2022-02-15 09:00:19', NULL);

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
(35, '2022_02_15_130658_create_static_options_table', 1);

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
(1, 11, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '12070', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-02-15 09:00:19', NULL),
(2, 19, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '31960', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-02-15 09:00:19', NULL),
(3, 15, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '17495', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-02-15 09:00:19', NULL),
(4, 16, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '37437', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-02-15 09:00:19', NULL),
(5, 12, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '6703', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-02-15 09:00:19', NULL),
(6, 18, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '27280', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-02-15 09:00:19', NULL),
(7, 15, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '34391', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-02-15 09:00:19', NULL),
(8, 15, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '29054', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-02-15 09:00:19', NULL),
(9, 14, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '19293', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-02-15 09:00:19', NULL),
(10, 14, 6, 6, 'Demo Candidate Name', 'Demo Company Name', 'Full Time', '49342', 'Demo Comments', NULL, 'Open', NULL, NULL, 200.00, NULL, NULL, NULL, NULL, NULL, '6', NULL, '2022-02-15 09:00:19', NULL);

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
(1, 11, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 11', '01856230550', 'demon11@gmail.com', NULL, NULL, 'Recommended', NULL, 'CsGqd5U6Nb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'New', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:19', '2022-02-15 09:00:19'),
(2, 12, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 12', '01856230550', 'demon12@gmail.com', NULL, NULL, 'Recommended', NULL, 'zPV3rQi1ES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:19', '2022-02-15 09:00:19'),
(3, 13, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 13', '01856230550', 'demon13@gmail.com', NULL, NULL, 'Recommended', NULL, 'DrmIQowXDm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:19', '2022-02-15 09:00:19'),
(4, 14, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 14', '01856230550', 'demon14@gmail.com', NULL, NULL, 'Recommended', NULL, 'N511cmM28b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:19', '2022-02-15 09:00:19'),
(5, 15, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 15', '01856230550', 'demon15@gmail.com', NULL, NULL, 'Recommended', NULL, 'jY7unzhGuk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:19', '2022-02-15 09:00:19'),
(6, 16, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 16', '01856230550', 'demon16@gmail.com', NULL, NULL, 'Recommended', NULL, 'qbZ5QXxC1k', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:19', '2022-02-15 09:00:19'),
(7, 17, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 17', '01856230550', 'demon17@gmail.com', NULL, NULL, 'Recommended', NULL, 'aRPam266aH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:19', '2022-02-15 09:00:19'),
(8, 18, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 18', '01856230550', 'demon18@gmail.com', NULL, NULL, 'Recommended', NULL, 'JPqk2Yy5VB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:19', '2022-02-15 09:00:19'),
(9, 19, 21, 8, 8, NULL, 11, 12, NULL, NULL, 3, 6, 'Demo Name 19', '01856230550', 'demon19@gmail.com', NULL, NULL, 'Recommended', NULL, 'E1BhnBylsc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ticket-Issued', NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:19', '2022-02-15 09:00:19');

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
(1, 11, 8, 6, 'Demo service 11', '396623', 'Demo Comments', NULL, 'Open', NULL, 262.00, '82', 'Door delivery', 'Banani Dhaka', 'Open', '17', NULL, '2022-02-15 09:00:19', NULL),
(2, 17, 8, 6, 'Demo service 12', '452039', 'Demo Comments', NULL, 'Open', NULL, 170.00, '84', 'Door delivery', 'Banani Dhaka', 'Open', '11', NULL, '2022-02-15 09:00:19', NULL),
(3, 13, 8, 6, 'Demo service 13', '386170', 'Demo Comments', NULL, 'Open', NULL, 162.00, '89', 'Door delivery', 'Banani Dhaka', 'Open', '18', NULL, '2022-02-15 09:00:19', NULL),
(4, 15, 8, 6, 'Demo service 14', '241758', 'Demo Comments', NULL, 'Open', NULL, 281.00, '80', 'Door delivery', 'Banani Dhaka', 'Open', '15', NULL, '2022-02-15 09:00:19', NULL),
(5, 14, 8, 6, 'Demo service 15', '346235', 'Demo Comments', NULL, 'Open', NULL, 176.00, '90', 'Door delivery', 'Banani Dhaka', 'Open', '11', NULL, '2022-02-15 09:00:19', NULL),
(6, 17, 8, 6, 'Demo service 16', '154125', 'Demo Comments', NULL, 'Open', NULL, 124.00, '80', 'Door delivery', 'Banani Dhaka', 'Open', '13', NULL, '2022-02-15 09:00:19', NULL),
(7, 12, 8, 6, 'Demo service 17', '304735', 'Demo Comments', NULL, 'Open', NULL, 268.00, '83', 'Door delivery', 'Banani Dhaka', 'Open', '19', NULL, '2022-02-15 09:00:19', NULL),
(8, 15, 8, 6, 'Demo service 18', '278129', 'Demo Comments', NULL, 'Open', NULL, 199.00, '81', 'Door delivery', 'Banani Dhaka', 'Open', '13', NULL, '2022-02-15 09:00:19', NULL),
(9, 14, 8, 6, 'Demo service 19', '194194', 'Demo Comments', NULL, 'Open', NULL, 273.00, '83', 'Door delivery', 'Banani Dhaka', 'Open', '16', NULL, '2022-02-15 09:00:19', NULL);

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
(1, 8, 16, 6, 'Demo service 11', 'Demo Comments', 'Paid', 'Door delivery', '100', NULL, 'Bonani Dhaka', '11', 1949.00, 16, NULL, '2022-02-15 09:00:19', NULL),
(2, 8, 11, 6, 'Demo service 12', 'Demo Comments', 'Paid', 'Door delivery', '127', NULL, 'Bonani Dhaka', '19', 1469.00, 13, NULL, '2022-02-15 09:00:19', NULL),
(3, 8, 17, 6, 'Demo service 13', 'Demo Comments', 'Paid', 'Door delivery', '151', NULL, 'Bonani Dhaka', '15', 1638.00, 11, NULL, '2022-02-15 09:00:19', NULL),
(4, 8, 13, 6, 'Demo service 14', 'Demo Comments', 'Paid', 'Door delivery', '196', NULL, 'Bonani Dhaka', '11', 1821.00, 15, NULL, '2022-02-15 09:00:19', NULL),
(5, 8, 18, 6, 'Demo service 15', 'Demo Comments', 'Paid', 'Door delivery', '131', NULL, 'Bonani Dhaka', '16', 1180.00, 15, NULL, '2022-02-15 09:00:19', NULL),
(6, 8, 12, 6, 'Demo service 16', 'Demo Comments', 'Paid', 'Door delivery', '183', NULL, 'Bonani Dhaka', '13', 1368.00, 14, NULL, '2022-02-15 09:00:19', NULL),
(7, 8, 15, 6, 'Demo service 17', 'Demo Comments', 'Paid', 'Door delivery', '114', NULL, 'Bonani Dhaka', '15', 1214.00, 19, NULL, '2022-02-15 09:00:19', NULL),
(8, 8, 15, 6, 'Demo service 18', 'Demo Comments', 'Paid', 'Door delivery', '103', NULL, 'Bonani Dhaka', '12', 1355.00, 16, NULL, '2022-02-15 09:00:19', NULL),
(9, 8, 12, 6, 'Demo service 19', 'Demo Comments', 'Paid', 'Door delivery', '110', NULL, 'Bonani Dhaka', '15', 1192.00, 19, NULL, '2022-02-15 09:00:19', NULL);

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
(1, 'Super admin', 'super-admin', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(2, 'Employer company', 'employer-company', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(3, 'Welfare service center company', 'welfare-service-center-company', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(4, 'Bangladeshi embassy', 'bangladeshi-embassy', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(5, 'Master One stop service', 'master-one-stop-service', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(6, 'Child One stop service', 'child-one-stop-service', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(7, 'Medical Agency', 'medical-agency', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(8, 'Training Agency', 'training-agency', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(9, 'travel agency', 'travel-agency', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(10, 'Biometric Agency', 'biometric-agency', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(11, 'Recruiting Agency', 'recruiting-agency', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(12, 'Bangladeshi admin', 'bangladeshi-admin', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(13, 'Employer', 'employer', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(14, 'Uae Admin', 'malaysia-admin', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(15, 'Uae Embassy', 'uae-embassy', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(16, 'Candidate', 'candidate', 'active', '2022-02-15 09:00:18', '2022-02-15 09:00:18');

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
(1, 'logo', 'uploads/images/logo.png', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(2, 'no_image', 'uploads/images/setting/no-image.png', '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(3, 'user', 'uploads/images/setting/user.png', '2022-02-15 09:00:18', '2022-02-15 09:00:18');

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
(1, 5, '2022-02-17 15:00:19', 2, '20000', 'Demo Comments', 3, '2022-02-15 15:00:19', 'New', NULL, NULL),
(2, 5, '2022-02-17 15:00:19', 2, '20000', 'Demo Comments', 3, '2022-02-15 15:00:19', 'New', NULL, NULL),
(3, 3, '2022-02-17 15:00:19', 2, '20000', 'Demo Comments', 3, '2022-02-15 15:00:19', 'New', NULL, NULL),
(4, 3, '2022-02-17 15:00:19', 2, '20000', 'Demo Comments', 3, '2022-02-15 15:00:19', 'New', NULL, NULL),
(5, 4, '2022-02-17 15:00:19', 2, '20000', 'Demo Comments', 3, '2022-02-15 15:00:19', 'New', NULL, NULL);

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
(1, 11, 'Dhaka Bangladesh', 'Dubai UAE', '2', '2022-02-17 15:00:19', '2022-02-22 15:00:19', 'Demo Comment', 'New', '2022-02-15 15:00:19', NULL, '2022-02-15 09:00:19', NULL),
(2, 11, 'Dhaka Bangladesh', 'Dubai UAE', '2', '2022-02-17 15:00:19', '2022-02-22 15:00:19', 'Demo Comment', 'New', '2022-02-15 15:00:19', NULL, '2022-02-15 09:00:19', NULL),
(3, 11, 'Dhaka Bangladesh', 'Dubai UAE', '2', '2022-02-17 15:00:19', '2022-02-22 15:00:19', 'Demo Comment', 'New', '2022-02-15 15:00:19', NULL, '2022-02-15 09:00:19', NULL),
(4, 11, 'Dhaka Bangladesh', 'Dubai UAE', '2', '2022-02-17 15:00:19', '2022-02-22 15:00:19', 'Demo Comment', 'New', '2022-02-15 15:00:19', NULL, '2022-02-15 09:00:19', NULL),
(5, 11, 'Dhaka Bangladesh', 'Dubai UAE', '2', '2022-02-17 15:00:19', '2022-02-22 15:00:19', 'Demo Comment', 'New', '2022-02-15 15:00:19', NULL, '2022-02-15 09:00:19', NULL);

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
  `company_regno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `role_id`, `country_id`, `name`, `email`, `email_verified_at`, `password`, `user_type`, `active_status`, `quata`, `company_regno`, `domain`, `company_name`, `company_register_number`, `abbr`, `phone`, `city`, `state`, `address1`, `address2`, `logo`, `document1`, `document2`, `status`, `childosc_id`, `cosc_assigned_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Super admin', 'sa@gmail.com', NULL, '$2y$10$H2.kRQfhWXUFQo5mCb0miOP3QPFvfYNf6dB1vFVILJdf8q6JSMk/i', 'super-admin', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(2, 12, 2, 'Bangladesh admin', 'ba@gmail.com', NULL, '$2y$10$eXQmfH.WAtUyVG1BGwBNUeQDy281f3B.dyfp3sTNd2biM8RQmCdpS', 'bangladeshi-admin', 'Approved', NULL, NULL, NULL, 'Bangladesh admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(3, 9, 2, 'Travel Agency', 'travel@gmail.com', NULL, '$2y$10$Agx8otUhBHuhjw6ej2urAudIy.3kXqKR2/Mrqh2YEWrVVqoU5EFBW', 'travel-agency', 'Approved', NULL, NULL, NULL, 'Travel Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(4, 10, 2, 'Biometric Agency', 'bio@gmail.com', NULL, '$2y$10$78JMXzlmZvGOQi./VbhlzOBMwyfgDetcpWrNYTa/X7EfhYj/5uZN2', 'biometric-agency', 'Approved', NULL, NULL, NULL, 'Biometric Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(5, 11, 2, 'Recruiting agency', 'rea@gmail.com', NULL, '$2y$10$r1B4zm17hAZ70NS0IHRzberMsg.dAnJbZCf3Cbcv0vBHu3IoyPUVi', 'recruiting-agency', 'Approved', NULL, NULL, NULL, 'Recruiting agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(6, 3, 2, 'Welfare sevice centre', 'wsc@gmail.com', NULL, '$2y$10$FCbIB2.rQ1Rux1kPGdcQY.FhjOrSzyJolyXVJDaIi2R3wPjHmk6oC', 'welfare-service-center-company', 'Approved', NULL, NULL, NULL, 'Welfare sevice centre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(7, 5, 2, 'Master One stop service', 'moss@gmail.com', NULL, '$2y$10$OVWgupfhL4y.MVUYZzlvde6BKn7uAhgjqvxZQL48R3/3wrqIDaifO', 'master-one-stop-service', 'Approved', NULL, NULL, NULL, 'Master One stop service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(8, 2, 2, 'Employer company', 'ec@gmail.com', NULL, '$2y$10$f7cs7eOh45toHXsHYtE2puoDA0Br97vS.LhPXjio4awI0hPTj/cvu', 'employer-company', 'Approved', NULL, NULL, NULL, 'Employer company', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(9, 4, 2, 'Bangladesh Embassy', 'be@gmail.com', NULL, '$2y$10$DA7L2yqprigL8aXo42Uo4uyPABypO4cgGWaYGizXf8mfOlCkrbwQ6', 'bangladeshi-embassy', 'Approved', NULL, NULL, NULL, 'Bangladesh Embassy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(10, 14, 2, 'Uae Admin', 'uaeadmin@gmail.com', NULL, '$2y$10$EGJKSCIJYFKT5IKehHf72OCL7llBkJ4DiZz/W22Iny0x7Ij3/iAoK', 'malaysia-admin', 'Approved', NULL, NULL, NULL, 'Uae Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:18', '2022-02-15 09:00:18'),
(11, 6, 2, 'Child One Stop Service', 'coss@gmail.com', NULL, '$2y$10$YrXahSUfJL3.ZJH.QWqESu9Ia6eeaA1dzFiMFHEafA9ebL.LfuUd6', 'child-one-stop-service', 'Approved', NULL, NULL, NULL, 'Child One Stop Service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:19', '2022-02-15 09:00:19'),
(12, 7, 2, 'Medical Agency', 'ma@gmail.com', NULL, '$2y$10$phAGDamkViZZ3ZgRjFA5reJzKSC14CaD6DuN09cMq02oxaoRR5JKa', 'medical-agency', 'Approved', NULL, NULL, NULL, 'Medical Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, '2022-02-15 09:00:19', '2022-02-15 09:00:19'),
(13, 8, 2, 'Training Agency', 'ta@gmail.com', NULL, '$2y$10$B3yyC7LYLGy0e4I.Bp4BXecvvpoe7N4DGkzMuHlBYtvIZSPpqAhaC', 'training-agency', 'Approved', NULL, NULL, NULL, 'Training Agency', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, '2022-02-15 09:00:19', '2022-02-15 09:00:19'),
(14, 15, 2, 'Uae Embassy', 'ue@gmail.com', NULL, '$2y$10$SvdlffdBUkthXxlLXWajbuMVhJfffdecJpxgeWCcJnbVirPx0Ndsa', 'uae-embassy', 'Approved', NULL, NULL, NULL, 'Uae Embassy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:19', '2022-02-15 09:00:19'),
(15, 16, 2, 'Candidate', 'candidate@gmail.com', NULL, '$2y$10$L8OZE4t17g9CZoyFnKMF6eNMsYgWroEB7kLHV1nBfG5FxGYYXw35u', 'candidate', 'Approved', NULL, NULL, NULL, 'Candidate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 09:00:19', '2022-02-15 09:00:19');

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
-- AUTO_INCREMENT for table `job_posts`
--
ALTER TABLE `job_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `new_passport_services`
--
ALTER TABLE `new_passport_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
