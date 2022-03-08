<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Candidate extends Model
{
    protected $fillable = [
        'id',
        'role_id',
        'job_category_id',
        'job_id',
        'company_id',
        'pre_medical_id',
        'pre_training_id',
        'pre_biomatric_id',
        'pre_medical_status',
        'pre_training_status',
        'pre_biomatric_status',
        'ready_to_travel',
        'selected_osc_id',
        'present_address',
        'permanent_address',
        'candidate_name',
        'nationality',
        'candidate_dob',
        'candidate_gender',
        'passport_number',
        'phone_number',
        'candidate_email',
        'candidate_password',
        'country',
        'pre_medical_certificate',
        'pre_traning_certificate',
        'pre_medical_report',
        'pre_training_report',
        'created_by',
        'updated_by',
        'pre_medical_comments',
        'pre_training_comments',
        'approval_status',
        'payment_assigned',
        'status',
        'result_status',
        'permission_status',
        'sending_status',
        'offer_letter',
        'employer_comments',
        'offered_status',
        'created_id',
        'updated_id',
    ];

    public function company()
    {
        return $this->belongsTo(Company::class, 'company_id');
    }
    public function medicalAgency()
    {
        return $this->belongsTo(User::class, 'pre_medical_id');
    }

    public function role()
    {
        return $this->belongsTo(Role::class, 'role_id');
    }

    public function job_category()
    {
        return $this->belongsTo(JobCategory::class, 'job_category_id');
    }
    public function offered_candidate()
    {
        return $this->hasOne(OfferedCandidate::class, 'candidate_id');
    }
    public function lost_passport_service()
    {
        return $this->hasOne(LostPassportService::class, 'candidate_id');
    }
    public function change_visa_service()
    {
        return $this->hasOne(ChangeVisaService::class, 'candidate_id');
    }
    public function charity_service()
    {
        return $this->hasOne(CharityService::class, 'candidate_id');
    }
}
