<?php

use Illuminate\Support\Facades\Route;

 // Candidate
 Route::group(['prefix' => 'candidate/', 'namespace' => 'Candidate', 'as' => 'Candidate.', 'middleware' => ['auth', 'candidate','prevent-back-history']], function () {
    Route::get('/dashboard', 'CandidateDashboardController@dashboard')->name('dashboard');
    Route::get('/company-profile-view', 'CandidateDashboardController@companyPrfileView')->name('companyPrfileView');
    Route::get('/edit-profile', 'CandidateDashboardController@editProfile')->name('editProfile');
    Route::post('/update-profile', 'CandidateDashboardController@updateProfile')->name('updateProfile');

    Route::post('/company-profile-submit', 'CandidateDashboardController@companyPrfileSubmit')->name('companyPrfileSubmit');
});
