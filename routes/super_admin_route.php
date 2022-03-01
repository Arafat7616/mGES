<?php

use Illuminate\Support\Facades\Route;

// Super Admin route
Route::group(['prefix' => 'super-admin/', 'namespace' => 'SuperAdmin', 'as' => 'SuperAdmin.', 'middleware' => ['auth', 'super-admin']], function () {
    Route::get('/dashboard', 'SuperAdminDashboardController@dashboard')->name('dashboard');
    Route::get('/company-profile-view', 'SuperAdminDashboardController@companyPrfileView')->name('companyPrfileView');

    Route::get('/edit-profile', 'SuperAdminDashboardController@editProfile')->name('editProfile');
    Route::post('/update-profile', 'SuperAdminDashboardController@updateProfile')->name('updateProfile');

    Route::resource('role', 'RoleController');
    Route::resource('country', 'CountryController');
});
