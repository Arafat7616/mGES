<?php

use Illuminate\Support\Facades\Route;

// Malaysia Admin route
Route::group(['prefix' => 'malaysia-admin/', 'namespace' => 'MalaysiaAdmin', 'as' => 'MalaysiaAdmin.', 'middleware' => ['auth', 'malaysia-admin']], function () {
    Route::get('/dashboard', 'MalaysiaAdminDashboardController@dashboard')->name('dashboard');
    Route::get('/company-profile-view', 'MalaysiaAdminDashboardController@companyPrfileView')->name('companyPrfileView');

    Route::get('/edit-profile', 'MalaysiaAdminDashboardController@editProfile')->name('editProfile');
    Route::post('/update-profile', 'MalaysiaAdminDashboardController@updateProfile')->name('updateProfile');

    // company
    Route::group(['prefix' => 'company/', 'as' => 'company.'], function () {
        Route::get('show-profile/{user_id}', 'CompanyController@showCompanyProfile')->name('showCompanyProfile');
        Route::post('request-approve/{company_id}', 'CompanyController@approveNow')->name('approveNow');
        Route::post('request-reject/{company_id}', 'CompanyController@rejectNow')->name('rejectNow');
    });


    /* Code By Monir
        Malaysia Recruiting Agency Approval 
    */
    Route::group(['prefix' => 'mra-request/', 'as' => 'mraRequest.'], function () {
        Route::get('new', 'MraRequestController@new')->name('new');
        Route::get('new/edit/{id}', 'MraRequestController@edit')->name('edit');
        Route::post('new/update/{id}', 'MraRequestController@update')->name('update');
        Route::get('approved', 'MraRequestController@approved')->name('approved');
        Route::get('rejected', 'MraRequestController@rejected')->name('rejected');
    });

     /* Code By Monir
        Employer Job Post Demand
    */
     Route::group(['prefix' => 'employer-job-post-demand/', 'as' => 'employerDemand.'], function () {
        Route::get('new', 'EmployerDemandController@new')->name('new');
        Route::get('received', 'EmployerDemandController@received')->name('received');
        Route::get('edit/{id}', 'EmployerDemandController@edit')->name('edit');
        Route::post('update/{id}', 'EmployerDemandController@update')->name('update');
        Route::get('approved', 'EmployerDemandController@approved')->name('approved');
        Route::get('rejected', 'EmployerDemandController@rejected')->name('rejected');
        Route::get('show/{id}', 'EmployerDemandController@show')->name('show');
    });


    /* Code By Monir End*/

    // Employer Requests
    Route::group(['prefix' => 'employer-request/', 'as' => 'employerRequest.'], function () {
        Route::get('new', 'EmployerRequestController@new')->name('new');
        Route::get('new/edit/{id}', 'EmployerRequestController@edit')->name('edit');
        Route::post('new/update/{id}', 'EmployerRequestController@update')->name('update');
        Route::get('approved', 'EmployerRequestController@approved')->name('approved');
        Route::get('rejected', 'EmployerRequestController@rejected')->name('rejected');
    });

    // Malaysia Embassy
    Route::group(['prefix' => 'malaysia-embassy/', 'as' => 'MalaysiaEmbassy.'], function () {
        Route::get('new-request', 'MalaysiaEmbassyController@new')->name('new');
        Route::get('approved-request', 'MalaysiaEmbassyController@approved')->name('approved');
        Route::get('rejected-request', 'MalaysiaEmbassyController@rejected')->name('rejected');
    });

    // job category route
    Route::resource('jobCategory', 'JobCategoryController');

    // Visa Process
    Route::group(['prefix' => 'visa/', 'as' => 'visa.'], function () {
        Route::get('requested', 'VisaRequestController@requested')->name('requested');
        Route::get('approved', 'VisaRequestController@approved')->name('approved');
        Route::get('rejected', 'VisaRequestController@rejected')->name('rejected');
        Route::get('status-offered-candidate/{offered_candidate_id}', 'VisaRequestController@visaStatusOfferedCandidate')->name('visaStatusOfferedCandidate');
        Route::post('status-offered-candidate-update/{offered_candidate_id}', 'VisaRequestController@visaStatusOfferedCandidateUpdate')->name('visaStatusOfferedCandidateUpdate');
        Route::get('show-applied-candidate/{offered_candidate_id}', 'VisaRequestController@showVisaAppliedCandidate')->name('showVisaAppliedCandidate');
        Route::get('show-approved-candidate/{offered_candidate_id}', 'VisaRequestController@showVisaApprovedCandidate')->name('showVisaApprovedCandidate');
        Route::get('show-rejected-candidate/{offered_candidate_id}', 'VisaRequestController@showVisaRejectedCandidate')->name('showVisaRejectedCandidate');
    });

    // candidates --- ready to travel
    Route::get('travel-received-candidates', 'CandidateController@travelReceived')->name('candidate.travelReceived');
    Route::get('show-travel-candidate/{offered_candidate_id}', 'CandidateController@travelCandidateProfile')->name('candidate.travelCandidateProfile');
});
