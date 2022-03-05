<?php

use Illuminate\Support\Facades\Route;

// BiometricAgencies
Route::group(['prefix' => 'biometric-agency/', 'namespace' => 'BiometricAgencies', 'as' => 'BiometricAgencies.', 'middleware' => ['auth', 'biometric-agency']], function () {
    Route::get('/dashboard', 'BiometricAgenciesDashboardController@dashboard')->name('dashboard');
    Route::get('/company-profile-view', 'BiometricAgenciesDashboardController@companyPrfileView')->name('companyPrfileView');
    Route::get('/edit-profile', 'BiometricAgenciesDashboardController@editProfile')->name('editProfile');
    Route::post('/update-profile', 'BiometricAgenciesDashboardController@updateProfile')->name('updateProfile');

    Route::post('/company-profile-submit', 'BiometricAgenciesDashboardController@companyPrfileSubmit')->name('companyPrfileSubmit');

    //Candidate
    Route::group(['prefix' => 'candidate/', 'as' => 'candidate.'], function () {
        Route::get('show-profile/{offered_candidate_id}', 'CandidateController@showCandidateProfile')->name('showCandidateProfile');
        Route::get('new', 'CandidateController@new')->name('new');
        Route::get('reported', 'CandidateController@reported')->name('reported');
        Route::get('upload-biometric/{offered_candidate_id}', 'CandidateController@uploadBiometric')->name('uploadBiometric');
        Route::post('upload-biometric-store/{offered_candidate_id}', 'CandidateController@uploadBiometricStore')->name('uploadBiometricStore');
    });

    //E-Wallet
    Route::group(['prefix' => 'e-wallet/', 'as' => 'eWallet.'], function () {
        Route::get('wallet', 'EWalletController@index')->name('index');
        Route::get('wallet_card', 'EWalletController@wallet_card')->name('wallet_card');
    });
});
