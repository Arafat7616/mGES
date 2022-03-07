<?php

use Illuminate\Support\Facades\Route;

// bangladesh-recruiting-agency route
Route::group(['prefix' => 'bangladesh-recruiting-agency/', 'namespace' => 'BangladeshRecruitingAgency', 'as' => 'BangladeshRecruitingAgency.', 'middleware' => ['auth', 'bangladesh-recruiting-agency','prevent-back-history']], function () {
    Route::get('/dashboard', 'BangladeshRecruitingAgencyDashboardController@dashboard')->name('dashboard');
    Route::post('/company-prfile-submit', 'BangladeshRecruitingAgencyDashboardController@companyPrfileSubmit')->name('companyPrfileSubmit');
    Route::get('/company-profile-view', 'BangladeshRecruitingAgencyDashboardController@companyPrfileView')->name('companyPrfileView');
    Route::get('/get-all-notification', 'BangladeshRecruitingAgencyDashboardController@notification')->name('get_all_nofication');

    Route::get('/edit-profile', 'BangladeshRecruitingAgencyDashboardController@editProfile')->name('editProfile');
    Route::post('/update-profile', 'BangladeshRecruitingAgencyDashboardController@updateProfile')->name('updateProfile');

    // Job Posts
    Route::group(['prefix' => 'job-post/', 'as' => 'jobPost.'], function () {
        Route::get('all', 'JobPostController@all')->name('all');
        Route::get('show/{id}', 'JobPostController@show')->name('show');
        Route::get('select-candidates/{applied_job_id}', 'JobPostController@selectCandidates')->name('selectCandidates');
        Route::get('edit/{id}', 'JobPostController@edit')->name('edit');
        Route::post('update/{id}', 'JobPostController@update')->name('update');
        Route::get('/job-details/{jobpostid}', 'JobPostController@jobDetails')->name('jobDetails');
        Route::get('/job-interrested/{jobpostid}', 'JobPostController@JobInterested')->name('jobIntersted');
    });

    // interested-job
    Route::group(['prefix' => 'interested-job/', 'as' => 'interestedJob.'], function () {
        Route::get('/', 'InterestedJobController@index')->name('index');
        Route::get('show/{job_post_id}', 'InterestedJobController@show')->name('show');
    });

    // interested-job
    Route::group(['prefix' => 'get-distributed-job/', 'as' => 'getDistributed.'], function () {
        Route::get('/', 'GetDistributedJobController@index')->name('index');
        Route::get('show/{job_post_id}', 'GetDistributedJobController@show')->name('show');
    });

    //Candidates
    Route::group(['prefix' => 'candidate/', 'as' => 'candidate.'], function () {
        Route::get('new', 'CandidateController@new')->name('new');
        Route::post('approve/{candidate_id}/{applied_job_id}', 'CandidateController@approveNow')->name('approveNow');
        Route::post('reject/{id}', 'CandidateController@rejectNow')->name('rejectNow');
        Route::post('store', 'CandidateController@store')->name('store');
        Route::get('all', 'CandidateController@all')->name('all');
        Route::get('show/{id}', 'CandidateController@show')->name('show');
        Route::get('qr-code-generate/{id}', 'CandidateController@QrCodeGenerate')->name('QrCodeGenerate');
        Route::get('selected', 'CandidateController@selected')->name('selected');
        Route::get('view-selected/{id}', 'CandidateController@viewSelected')->name('viewSelected');
    });
});
