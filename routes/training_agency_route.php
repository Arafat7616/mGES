<?php

use Illuminate\Support\Facades\Route;

// Training Agency middleware route
Route::group(['prefix' => 'training-agency/', 'namespace' => 'TrainingAgency', 'as' => 'TrainingAgency.', 'middleware' => ['auth', 'training-agency','prevent-back-history']], function () {
    Route::get('/dashboard', 'TrainingAgencyDashboardController@dashboard')->name('dashboard');
    Route::get('/company-profile-view', 'TrainingAgencyDashboardController@companyPrfileView')->name('companyPrfileView');

    Route::get('/edit-profile', 'TrainingAgencyDashboardController@editProfile')->name('editProfile');
    Route::post('/update-profile', 'TrainingAgencyDashboardController@updateProfile')->name('updateProfile');

    Route::post('/company-profile-submit', 'TrainingAgencyDashboardController@companyPrfileSubmit')->name('companyPrfileSubmit');

    //Candidate
    Route::group(['prefix' => 'candidate/', 'as' => 'candidate.'], function () {
        Route::get('new', 'CandidateController@new')->name('new');
        Route::get('show/{id}', 'CandidateController@show')->name('show');
        Route::get('post-training-report/{id}', 'CandidateController@post_training_report')->name('post_training_report');
        Route::post('add-training-report/{id}', 'CandidateController@add_training_report')->name('add_training_report');
        Route::get('reported', 'CandidateController@reported')->name('reported');
    });

    //E-Wallet
    Route::group(['prefix' => 'e-wallet/', 'as' => 'eWallet.'], function () {
        Route::get('wallet', 'EWalletController@index')->name('index');
        Route::get('wallet_card', 'EWalletController@wallet_card')->name('wallet_card');
    });
});
