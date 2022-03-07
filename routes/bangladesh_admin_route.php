<?php

use Illuminate\Support\Facades\Route;

// Bangladesh Admin route
Route::group(['prefix' => 'bangladesh-admin/', 'namespace' => 'BangladeshAdmin', 'as' => 'BangladeshAdmin.', 'middleware' => ['auth', 'bangladesh-admin','prevent-back-history']], function () {
    Route::get('/dashboard', 'BangladeshAdminDashboardController@dashboard')->name('dashboard');
    Route::get('/company-profile-view', 'BangladeshAdminDashboardController@companyPrfileView')->name('companyPrfileView');
    Route::get('/edit-profile', 'BangladeshAdminDashboardController@editProfile')->name('editProfile');
    Route::post('/update-profile', 'BangladeshAdminDashboardController@updateProfile')->name('updateProfile');

    // company
    Route::get('show-company-profile/{user_id}', 'CompanyController@showCompanyProfile')->name('company.showCompanyProfile');
    Route::post('company-request-approve/{company_id}', 'CompanyController@approveNow')->name('company.approveNow');
    Route::post('company-request-reject/{company_id}', 'CompanyController@rejectNow')->name('company.rejectNow');

    // Recruiting agency
    Route::group(['prefix' => 'bangladesh-recruiting-agency/', 'as' => 'bangladeshRecruitingAgency.'], function () {
        Route::post('approve/{company_id}', 'BangladeshRecruitingAgencieController@approveNow')->name('approveNow');
        Route::post('reject/{company_id}', 'BangladeshRecruitingAgencieController@rejectNow')->name('rejectNow');
        Route::get('request', 'BangladeshRecruitingAgencieController@request')->name('request');
        Route::get('approved', 'BangladeshRecruitingAgencieController@approved')->name('approved');
        Route::get('rejected', 'BangladeshRecruitingAgencieController@rejected')->name('rejected');
    });

    // Call Center
    Route::group(['prefix' => 'call-center/', 'as' => 'callCenter.'], function () {
        Route::post('approve/{id}', 'CallCenterController@approveNow')->name('approveNow');
        Route::post('reject/{id}', 'CallCenterController@rejectNow')->name('rejectNow');
        Route::get('request', 'CallCenterController@request')->name('request');
        Route::get('approved', 'CallCenterController@approved')->name('approved');
        Route::get('rejected', 'CallCenterController@rejected')->name('rejected');
        Route::get('show/{id}', 'CandidateController@show')->name('show');
        
    });

    // One stop services
    Route::group(['prefix' => 'one-stop-services/', 'as' => 'oneStopService.'], function () {
        Route::post('approve/{company_id}', 'OneStopServiceController@approveNow')->name('approveNow');
        Route::post('reject/{company_id}', 'OneStopServiceController@rejectNow')->name('rejectNow');
        Route::get('request', 'OneStopServiceController@request')->name('request');
        Route::get('approved', 'OneStopServiceController@approved')->name('approved');
        Route::get('rejected', 'OneStopServiceController@rejected')->name('rejected');
    });

    // Welfare service centers
    Route::group(['prefix' => 'welfare-service-center/', 'as' => 'welfareServiceCenter.'], function () {
        Route::post('approve/{company_id}', 'WelfareServiceCenterController@approveNow')->name('approveNow');
        Route::post('reject/{company_id}', 'WelfareServiceCenterController@rejectNow')->name('rejectNow');
        Route::get('request', 'WelfareServiceCenterController@request')->name('request');
        Route::get('approved', 'WelfareServiceCenterController@approved')->name('approved');
        Route::get('rejected', 'WelfareServiceCenterController@rejected')->name('rejected');
    });

    // Bangladesh High Commission
    Route::group(['prefix' => 'bangladesh-high-commission/', 'as' => 'bangladeshHighCommission.'], function () {
        Route::post('approve/{company_id}', 'BangladeshHighCommissionController@approveNow')->name('approveNow');
        Route::post('reject/{company_id}', 'BangladeshHighCommissionController@rejectNow')->name('rejectNow');
        Route::get('request', 'BangladeshHighCommissionController@request')->name('request');
        Route::get('approved', 'BangladeshHighCommissionController@approved')->name('approved');
        Route::get('rejected', 'BangladeshHighCommissionController@rejected')->name('rejected');
    });

    //job posts
    Route::get('total-job-post', 'JobPostController@index')->name('total_job_post.index');
    Route::get('bra-interested-job-posts/', 'JobPostController@braInterested')->name('jobPost.braInterested');
    Route::get('job-posts-show/{id}', 'JobPostController@JobPostShow')->name('JobPostShow');
    Route::get('vacancy_approval', 'JobPostController@vacancy_approval')->name('vacancy_approval');
    Route::get('bhc_approval', 'JobPostController@bhc_approval')->name('bhc_approval');
    Route::get('view-vacancy/{applied_job_id}', 'JobPostController@viewVacancy')->name('jobPost.viewVacancy');
    Route::get('bhc_approval/{applied_job_id}', 'JobPostController@bhc_approval_list')->name('jobPost.bhc_approval');
    Route::get('approve-vacancy/{applied_job_id}', 'JobPostController@approveVacancy')->name('jobPost.approveVacancy');
    Route::post('approve-vacancy-store/{applied_job_id}', 'JobPostController@approveVacancyStore')->name('jobPost.approveVacancyStore');
    Route::post('reject-vacancy/{applied_job_id}', 'JobPostController@rejectVacancy')->name('jobPost.rejectVacancy');
    Route::get('job-notification-store/{job_post_id}', 'JobPostController@notificationStore')->name('jobPost.notificationStore');
    Route::get('distribute-candidates/{job_post_id}', 'JobPostController@distributeCandidates')->name('jobPost.distributeCandidates');
    Route::get('bhcApproved_view/{id}', 'JobPostController@JobPostShow')->name('jobPost.bhcApproved_view');
    Route::get('send-demand-letter/{id}', 'JobPostController@sendDemandLetter')->name('jobPost.sendDemandLetter');

    //Candidate
    Route::group(['prefix' => 'candidate/', 'as' => 'candidate.'], function () {
        Route::get('requests', 'CandidateController@requests')->name('requests');
        Route::get('view-requested/{applied_job_id}', 'CandidateController@viewRequested')->name('viewRequested');
        Route::get('show/{id}', 'CandidateController@show')->name('show');
        Route::get('show-final-profile/{offered_candidate_id}', 'CandidateController@showFinalCandidate')->name('showFinalCandidate');
        Route::get('show-booked-profile/{offered_candidate_id}', 'CandidateController@showBookedCandidate')->name('showBookedCandidate');
        Route::post('forward/{id}', 'CandidateController@forwardNow')->name('forwardNow');
        Route::post('forward-to-malaysia/{offered_candidate_id}', 'CandidateController@forwardToMalaysia')->name('forwardToMalaysia');
        Route::get('forwarded', 'CandidateController@forwarded')->name('forwarded');
        Route::get('reviewed', 'CandidateController@reviewed')->name('reviewed');
        Route::get('finalized', 'CandidateController@finalized')->name('finalized');
        Route::get('tickets-booked-List', 'CandidateController@tickets_booked_List')->name('tickets_booked_List');
        Route::get('from-bra', 'CandidateController@fromBra')->name('fromBra');
        Route::post('forward-to-ssc', 'CandidateController@forwardToSSC')->name('forwardToSSC');
    });

    //Visa Process
    Route::group(['prefix' => 'visa-process/', 'as' => 'visaProcess.'], function () {
        Route::get('visa-request-candidate/{offered_candidate_id}', 'VisaProcessController@visaRequestCandidate')->name('visaRequestCandidate');
        Route::get('visa-approved-candidate/{offered_candidate_id}', 'VisaProcessController@visaApprovedCandidate')->name('visaApprovedCandidate');
        Route::get('visa-rejected-candidate/{offered_candidate_id}', 'VisaProcessController@visaRejectedCandidate')->name('visaRejectedCandidate');
        Route::get('requests', 'VisaProcessController@requests')->name('requests');
        Route::get('approved', 'VisaProcessController@approved')->name('approved');
        Route::get('rejected', 'VisaProcessController@rejected')->name('rejected');
    });

    //E-Wallet
    Route::group(['prefix' => 'e-wallet/', 'as' => 'eWallet.'], function () {
        Route::get('wallet', 'EWalletController@index')->name('index');
        Route::get('wallet_card', 'EWalletController@wallet_card')->name('wallet_card');
    });
});
