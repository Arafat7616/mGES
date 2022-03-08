<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class TravelEnquiry extends Model
{
    protected $fillable = [
        'id',
        'oss_id',
        'start_point',
        'end_point',
        'tickets_required',
        'date_of_journey',
        'end_date',
        'oss_comments',
        'enquiry_status',
        'created_date',
        'deleted'
    ];

    public function submittedTravelEnquiry()
    {
        return $this->hasOne(SubmittedTravelEnquiry::class, 'enquiry_id')->where('travel_agency_id', Auth::user()->id);
    }

    public function oss()
    {
        return $this->belongsTo(User::class, 'oss_id');
    }
}
