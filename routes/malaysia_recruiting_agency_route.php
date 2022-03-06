<?php

use Illuminate\Support\Facades\Route;

// malaysia-recruiting-agency route
Route::group(['prefix' => 'malaysia-recruiting-agency/', 'namespace' => 'MalaysiaRecruitingAgency', 'as' => 'MalaysiaRecruitingAgency.', 'middleware' => ['auth', 'malaysia-recruiting-agency','prevent-back-history']], function () {
    Route::get('/dashboard', 'MalaysiaRecruitingAgencyDashboardController@dashboard')->name('dashboard');
    Route::post('/company-prfile-submit', 'MalaysiaRecruitingAgencyDashboardController@companyPrfileSubmit')->name('companyPrfileSubmit');
    Route::get('/company-profile-view', 'MalaysiaRecruitingAgencyDashboardController@companyPrfileView')->name('companyPrfileView');

    Route::get('/edit-profile', 'MalaysiaRecruitingAgencyDashboardController@editProfile')->name('editProfile');
    Route::post('/update-profile', 'MalaysiaRecruitingAgencyDashboardController@updateProfile')->name('updateProfile');


    // Job Posts
    Route::group(['prefix' => 'job-post/', 'as' => 'jobPost.'], function () {
        Route::get('all', 'JobPostController@all')->name('all');
        Route::get('show/{id}', 'JobPostController@show')->name('show');
        Route::get('select-candidates/{applied_job_id}', 'JobPostController@selectCandidates')->name('selectCandidates');
        Route::get('edit/{id}', 'JobPostController@edit')->name('edit');
        Route::post('update/{id}', 'JobPostController@update')->name('update');
    });

    // Applied job
    Route::group(['prefix' => 'applied-job/', 'as' => 'appliedJob.'], function () {
        Route::get('/', 'AppliedJobController@applied')->name('applied');
        Route::get('show/{id}', 'AppliedJobController@show')->name('show');
        Route::get('forwarded', 'AppliedJobController@forwarded')->name('forwarded');
    });

    //Candidates
    Route::group(['prefix' => 'candidate/', 'as' => 'candidate.'], function () {
        Route::get('new', 'CandidateController@new')->name('new');
        Route::post('approve/{candidate_id}/{applied_job_id}', 'CandidateController@approveNow')->name('approveNow');
        Route::post('reject/{id}', 'CandidateController@rejectNow')->name('rejectNow');
        Route::post('store', 'CandidateController@store')->name('store');
        Route::get('all', 'CandidateController@all')->name('all');
        Route::get('show/{id}', 'CandidateController@show')->name('show');
        Route::get('selected', 'CandidateController@selected')->name('selected');
        Route::get('view-selected/{id}', 'CandidateController@viewSelected')->name('viewSelected');
    });
});
