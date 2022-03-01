<?php

use Illuminate\Support\Facades\Route;

// malaysian-employer Route
Route::group(['prefix' => 'malaysian-employer/', 'namespace' => 'MalaysianEmployer', 'as' => 'MalaysianEmployer.', 'middleware' => ['auth', 'malaysian-employer']], function () {
    Route::get('/dashboard', 'MalaysianEmployerDashboardController@dashboard')->name('dashboard');
    Route::post('/company-prfile-submit', 'MalaysianEmployerDashboardController@companyPrfileSubmit')->name('companyPrfileSubmit');
    Route::get('/company-profile-view', 'MalaysianEmployerDashboardController@companyPrfileView')->name('companyPrfileView');

    Route::get('/edit-profile', 'MalaysianEmployerDashboardController@editProfile')->name('editProfile');
    Route::post('/update-profile', 'MalaysianEmployerDashboardController@updateProfile')->name('updateProfile');

    // job post
    Route::resource('job_post', 'PostJobController', [
        'names' => [
            'index' => 'postJob.index',
            'create' => 'postJob.create',
            'store' => 'postJob.store',
            'show' => 'postJob.show',
        ]
    ]);

    Route::get('approved-job-posts', 'PostJobController@maApproved')->name('postJob.maApproved');
    Route::get('approved-job-posts/{id}', 'PostJobController@recruitEmployee')->name('postJob.recruit');
    Route::post('approved-job-posts/send/{id}', 'PostJobController@sendJob')->name('postJob.send');

    // candidates
    Route::group(['prefix' => 'candidates/', 'as' => 'candidates.'], function () {
        Route::get('new', 'CandidateController@new_candidates')->name('new');
        Route::get('new-list/{applied_job_id}', 'CandidateController@newCandidateList')->name('newCandidateList');
        Route::get('show/{id}', 'CandidateController@show')->name('show');
        Route::get('show-offered/{offered_candidate_id}', 'CandidateController@showOfferedCandidate')->name('showOfferedCandidate');
        Route::get('show-booked/{offered_candidate_id}', 'CandidateController@showBookedCandidate')->name('showBookedCandidate');
        Route::get('edit-result/{id}', 'CandidateController@editCandidateResult')->name('editCandidateResult');
        Route::post('update-result/{id}', 'CandidateController@updateCandidateResult')->name('updateCandidateResult');
        Route::get('edit-interview/{offered_candidate_id}', 'CandidateController@editInterview')->name('editInterview');
        Route::post('update-interview/{offered_candidate_id}', 'CandidateController@updateInterview')->name('updateInterview');
        Route::get('result', 'CandidateController@candidates_result')->name('result');
        Route::get('finalized', 'CandidateController@finalized_candidates')->name('finalized');
        Route::get('tickets_booked_list', 'CandidateController@tickets_booked_list')->name('tickets_booked_list');
    });

    // Visa Process
    Route::group(['prefix' => 'visa-process/', 'as' => 'VisaProcess.'], function () {
        Route::get('required', 'VisaProcessController@visa_required')->name('required');
        Route::get('show-required-candidate/{offered_candidate_id}', 'VisaProcessController@showVisaRequiredCandidate')->name('showVisaRequiredCandidate');
        Route::get('requested', 'VisaProcessController@visa_requested')->name('requested');
        Route::get('show-requested-candidate/{offered_candidate_id}', 'VisaProcessController@showVisaRequestedCandidate')->name('showVisaRequestedCandidate');
        Route::get('approved', 'VisaProcessController@visa_approved')->name('approved');
        Route::get('show-approved-candidate/{offered_candidate_id}', 'VisaProcessController@showVisaApprovedCandidate')->name('showVisaApprovedCandidate');
        Route::get('rejected', 'VisaProcessController@visa_rejected')->name('rejected');
        Route::get('show-rejected-candidate/{offered_candidate_id}', 'VisaProcessController@showVisaRejectedCandidate')->name('showVisaRejectedCandidate');
    });
});
