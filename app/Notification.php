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
        'jobpost_id',
        'me_id',
        'staus'
    ];

    public function jobPost()
    {
        return $this->belongsTo(JobPost::class, 'jobpost_id');
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
