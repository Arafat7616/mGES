<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{
    protected $fillable = [
        'title',
        'text',
        'notification_for',
        'notification_from',
        'created_by',
        'job_post_id',
        'me_id',
        'staus'
    ];

    public function jobPost()
    {
        return $this->belongsTo(JobPost::class, 'job_post_id');
    }

    public function notificationFrom()
    {
        return $this->belongsTo(User::class, 'notification_from');
    }

    public function employerCompany()
    {
        return $this->belongsTo(User::class, 'me_id');
    }
}
