<?php

use Illuminate\Support\Facades\Route;

// Training Agency middleware route
Route::group(['prefix' => 'training-agency/', 'namespace' => 'TrainingAgency', 'as' => 'TrainingAgency.', 'middleware' => ['auth', 'training-agency', 'prevent-back-history']], function () {
    Route::get('/dashboard', 'TrainingAgencyDashboardController@dashboard')->name('dashboard');
    Route::get('/company-profile-view', 'TrainingAgencyDashboardController@companyPrfileView')->name('companyPrfileView');

    Route::get('/edit-profile', 'TrainingAgencyDashboardController@editProfile')->name('editProfile');
    Route::post('/update-profile', 'TrainingAgencyDashboardController@updateProfile')->name('updateProfile');

    Route::post('/company-profile-submit', 'TrainingAgencyDashboardController@companyPrfileSubmit')->name('companyPrfileSubmit');

    //Candidate
    Route::group(['prefix' => 'candidate/', 'as' => 'candidate.'], function () {
        Route::get('new', 'CandidateController@new')->name('new');
        Route::get('show/{candidate_id}', 'CandidateController@show')->name('show');
        Route::get('training-report/{id}', 'CandidateController@trainingReport')->name('trainingReport');
        Route::post('upload-training-report/{id}', 'CandidateController@uploadTrainingReport')->name('uploadTrainingReport');
        Route::get('reported', 'CandidateController@reported')->name('reported');
    });


    //E-Wallet
    Route::group(['prefix' => 'e-wallet/', 'as' => 'eWallet.'], function () {
        Route::get('wallet', 'EWalletController@index')->name('index');
        Route::get('wallet_card', 'EWalletController@wallet_card')->name('wallet_card');
    });
});
