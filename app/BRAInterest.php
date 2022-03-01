<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BRAInterest extends Model
{
    protected $fillable = [
        'id',
        'bar_id',
        'job_post',
        'status',
    ];
}
