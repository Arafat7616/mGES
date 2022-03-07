<?php

use Illuminate\Support\Facades\Route;

// Malaysia Embassy route
Route::group(['prefix' => 'malaysia-embassy/', 'namespace' => 'MalaysiaEmbassy', 'as' => 'MalaysiaEmbassy.', 'middleware' => ['auth', 'malaysia-embassy','prevent-back-history']], function () {
    Route::get('/dashboard', 'MalaysiaEmbassyDashboardController@dashboard')->name('dashboard');
    Route::get('/company-profile-view', 'MalaysiaEmbassyDashboardController@companyPrfileView')->name('companyPrfileView');

    Route::get('/edit-profile', 'MalaysiaEmbassyDashboardController@editProfile')->name('editProfile');
    Route::post('/update-profile', 'MalaysiaEmbassyDashboardController@updateProfile')->name('updateProfile');

    Route::post('/company-profile-submit', 'MalaysiaEmbassyDashboardController@companyPrfileSubmit')->name('companyPrfileSubmit');

    //visa Process
    Route::get('/stamping-requested', 'VisaProcessController@stampingRequested')->name('stampingRequested');
    Route::get('/stamping-approved','VisaProcessController@stampingApproved')->name('stampingApproved');
    Route::get('/stamping-rejected','VisaProcessController@stampingRejected')->name('stampingRejected');
    // candidates profile routes
    Route::get('/requested-candidate-profile/{offered_candidate_id}', 'VisaProcessController@requestedCandidateProfile')->name('visaProcess.requestedCandidateProfile');
    Route::get('/approved-candidate-profile/{offered_candidate_id}', 'VisaProcessController@approvedCandidateProfile')->name('visaProcess.approvedCandidateProfile');
    Route::get('/rejected-candidate-profile/{offered_candidate_id}', 'VisaProcessController@rejectedCandidateProfile')->name('visaProcess.rejectedCandidateProfile');
});
