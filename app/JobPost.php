<?php

namespace App;

use App\Company;

use Illuminate\Database\Eloquent\Model;

class JobPost extends Model
{
    protected $fillable = [
        'id',
        'job_category_id',
        'user_id',
        'company_id',
        'employment_type',
        'gender',
        'age_limit',
        'salary',
        'job_location',
        'job_vacancy',
        'end_date',
        'demand_letter',
        'selected_wsc',
        'appointment_date',
        'appointment_time',
        'rejection_reason',
        'mra_id',
        'recruiting_type',
        'forward_to_bhc',
        'forward_to_wsc',
        'status',
    ];

    public function company()
    {
        return $this->belongsTo(Company::class);
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function job_category()
    {
        return $this->belongsTo(JobCategory::class);
    }
    public function offeredCandidate()
    {
        return $this->hasMany(OfferedCandidate::class, 'job_post_id');
    }
    public function notification()
    {
        return $this->hasOne(Notification::class, 'job_post_id');
    }
    public function braInterests()
    {
        return $this->hasMany(BRAInterest::class, 'job_post_id');
    }
    public function jobDistributedBras()
    {
        return $this->hasMany(JobDistributeInBRA::class, 'job_post_id');
    }
}
