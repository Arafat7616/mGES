<?php

use Illuminate\Support\Facades\Route;


// Child One Stop Service
Route::group(['prefix' => 'child-one-stop-service/', 'namespace' => 'OneStopService_Child', 'as' => 'OneStopService_Child.', 'middleware' => ['auth', 'child-one-stop-service']], function () {
    Route::get('/dashboard', 'OneStopService_ChildDashboardController@dashboard')->name('dashboard');
    Route::get('/company-profile-view', 'OneStopService_ChildDashboardController@companyPrfileView')->name('companyPrfileView');
    Route::get('/edit-profile', 'OneStopService_ChildDashboardController@editProfile')->name('editProfile');
    Route::post('/update-profile', 'OneStopService_ChildDashboardController@updateProfile')->name('updateProfile');

    Route::post('/company-profile-submit', 'OneStopService_ChildDashboardController@companyPrfileSubmit')->name('companyPrfileSubmit');

    Route::get('show-company-profile/{user_id}', 'CompanyController@showCompanyProfile')->name('company.showCompanyProfile');
    // medical-agency
    Route::get('medical-agencies', 'MedicalAgencyController@all')->name('medicalAgency.all');

    // training-agency
    Route::get('training-agencies', 'TrainingAgencyController@all')->name('trainingAgency.all');

    // Candidate
    Route::group(['prefix' => 'candidate/', 'as' => 'candidate.'], function () {
        Route::get('show-profile/{offered_candidate_id}', 'CandidateController@showCandidateProfile')->name('showCandidateProfile');
        Route::get('show-final-profile/{offered_candidate_id}', 'CandidateController@showFinalCandidateProfile')->name('showFinalCandidateProfile');
        Route::get('show-biometric-profile/{offered_candidate_id}', 'CandidateController@showBiometricCandidateProfile')->name('showBiometricCandidateProfile');
        Route::get('interview-status/{offered_candidate_id}', 'CandidateController@interviewStatus')->name('interviewStatus');
        Route::post('interview-status-store/{offered_candidate_id}', 'CandidateController@interviewStatusStore')->name('interviewStatusStore');
        Route::post('initial-payment-store/{offered_candidate_id}', 'CandidateController@initialPaymentStore')->name('initialPaymentStore');
        Route::get('initial-payment/{offered_candidate_id}', 'CandidateController@initialPayment')->name('initialPayment');
        Route::get('selected', 'CandidateController@selected')->name('request');
        Route::get('interview', 'CandidateController@interview')->name('approved');
        Route::get('finalized', 'CandidateController@finalized')->name('finalized');
        Route::post('status-change/{offered_candidate_id}/{result_status}', 'CandidateController@candidateStatusChange')->name('candidateStatusChange');
    });


    // Biometric Candidate
    Route::group(['prefix' => 'biometric-candidate/', 'as' => 'biometric.'], function () {
        Route::get('required', 'BiometricController@required')->name('required');
        Route::get('completed', 'BiometricController@completed')->name('completed');
        Route::get('assign-medical-training/{offered_candidate_id}', 'BiometricController@assignMedicalTraining')->name('assignMedicalTraining');
        Route::post('assign-medical-training-store/{offered_candidate_id}', 'BiometricController@assignMedicalTrainingStore')->name('assignMedicalTrainingStore');
        Route::get('show-paid-profile/{offered_candidate_id}', 'BiometricController@showPaidCandidateProfile')->name('showPaidCandidateProfile');
        Route::get('upload/{offered_candidate_id}', 'BiometricController@uploadBiometric')->name('uploadBiometric');
        Route::post('upload-store/{offered_candidate_id}', 'BiometricController@uploadBiometricStore')->name('uploadBiometricStore');
        Route::get('assign-agency/{offered_candidate_id}', 'BiometricController@assignBiometricAgency')->name('assignBiometricAgency');
        Route::post('assign-agency-store/{offered_candidate_id}', 'BiometricController@assignBiometricAgencyStore')->name('assignBiometricAgencyStore');
    });

    // Visa Process
    Route::group(['prefix' => 'visa-process/', 'as' => 'visa.'], function () {
        Route::get('requested', 'VisaProcessController@requested')->name('requested');
        Route::get('show-requested-candidate/{offered_candidate_id}', 'VisaProcessController@showVisaRequestedCandidate')->name('showVisaRequestedCandidate');
        Route::get('approved', 'VisaProcessController@approved')->name('approved');
        Route::get('show-approved-candidate/{offered_candidate_id}', 'VisaProcessController@showVisaApprovedCandidate')->name('showVisaApprovedCandidate');
        Route::get('rejected', 'VisaProcessController@rejected')->name('rejected');
        Route::get('show-rejected-candidate/{offered_candidate_id}', 'VisaProcessController@showVisaRejectedCandidate')->name('showVisaRejectedCandidate');
    });
});
