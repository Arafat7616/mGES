<?php

use Illuminate\Support\Facades\Route;

// Malaysia Embassy route
Route::group(['prefix' => 'call-center/', 'namespace' => 'CallCenter', 'as' => 'CallCenter.', 'middleware' => ['auth', 'call-center']], function () {
    Route::get('/dashboard', 'DashboardController@dashboard')->name('dashboard');
    Route::get('/company-profile-view', 'DashboardController@companyPrfileView')->name('companyPrfileView');

    Route::get('/edit-profile', 'DashboardController@editProfile')->name('editProfile');
    Route::post('/update-profile', 'DashboardController@updateProfile')->name('updateProfile');

    Route::post('/company-profile-submit', 'DashboardController@companyPrfileSubmit')->name('companyPrfileSubmit');

    // Call Center route

  
        Route::get('/selected-from-db','CallCenterController@selectedFromDB')->name('selectedFromDB');
        Route::get('/selected-from-db/{id}','CallCenterController@show')->name('show');
 

    // //visa Process
    // Route::get('/stamping-requested', 'VisaProcessController@stampingRequested')->name('stampingRequested');
    // Route::get('/stamping-approved','VisaProcessController@stampingApproved')->name('stampingApproved');
    // Route::get('/stamping-rejected','VisaProcessController@stampingRejected')->name('stampingRejected');
    // // candidates profile routes
    // Route::get('/requested-candidate-profile/{offered_candidate_id}', 'VisaProcessController@requestedCandidateProfile')->name('visaProcess.requestedCandidateProfile');
    // Route::get('/approved-candidate-profile/{offered_candidate_id}', 'VisaProcessController@approvedCandidateProfile')->name('visaProcess.approvedCandidateProfile');
    // Route::get('/rejected-candidate-profile/{offered_candidate_id}', 'VisaProcessController@rejectedCandidateProfile')->name('visaProcess.rejectedCandidateProfile');
});
