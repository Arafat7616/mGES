<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\QrCodeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'WelcomeController@index')->name('welcome');
Route::get('register', 'Auth\RegisterController@showRegistrationForm')->name('register');
Route::post('change-password', 'HomeController@changePassword')->name('changePassword');
/*Route::get('/', 'HomeController@index')->name('admin.login');*/

Route::get('/qr_code', [QrCodeController::class, 'index']);
Route::get('/qr_code_result', [QrCodeController::class, 'result']);


include('child_oss_route.php');
include('one_stop_service_route.php');
include('welfare_service_centre_route.php');
include('medical_agency_route.php');
include('training_agency_route.php');
include('malaysia_embassy_route.php');
include('malaysia_admin_route.php');
include('candidate_route.php');
include('travel_agency_route.php');
include('biometric_agencies_route.php');
include('bangladesh_high_commission_route.php');
include('malaysian_employer_route.php');
include('malaysia_recruiting_agency_route.php');
include('bangladesh_recruiting_agency_route.php');
include('bangladesh_admin_route.php');
include('super_admin_route.php');

Auth::routes([
    'reset' => false, // Password Reset Routes...
    'verify' => false, // Email Verification Routes...
]);

/*Route::get('/home', 'HomeController@index')->name('home');*/
