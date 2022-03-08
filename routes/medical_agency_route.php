<?php

use Illuminate\Support\Facades\Route;

// Medical Agency middleware route
Route::group(['prefix' => 'medical-agency/', 'namespace' => 'MedicalAgency', 'as' => 'MedicalAgency.', 'middleware' => ['auth', 'medical-agency','prevent-back-history']], function () {
    Route::get('/dashboard', 'MedicalAgencyDashboardController@dashboard')->name('dashboard');
    Route::get('/company-profile-view', 'MedicalAgencyDashboardController@companyPrfileView')->name('companyPrfileView');

    Route::get('/edit-profile', 'MedicalAgencyDashboardController@editProfile')->name('editProfile');
    Route::post('/update-profile', 'MedicalAgencyDashboardController@updateProfile')->name('updateProfile');

    Route::post('/company-profile-submit', 'MedicalAgencyDashboardController@companyPrfileSubmit')->name('companyPrfileSubmit');

    //Candidate
    Route::group(['prefix' => 'candidate/', 'as' => 'candidate.'], function () {
        Route::get('new', 'CandidateController@new')->name('new');
        Route::get('show/{candidate_id}', 'CandidateController@show')->name('show');
        Route::get('medical-report/{id}', 'CandidateController@medicalReport')->name('medicalReport');
        Route::post('upload-medical-report/{id}', 'CandidateController@uploadMedicalReport')->name('uploadMedicalReport');
        Route::get('reported', 'CandidateController@reported')->name('reported');
    });

    //E-Wallet
    Route::group(['prefix' => 'e-wallet/', 'as' => 'eWallet.'], function () {
        Route::get('wallet', 'EWalletController@index')->name('index');
        Route::get('wallet_card', 'EWalletController@wallet_card')->name('wallet_card');
    });
});
