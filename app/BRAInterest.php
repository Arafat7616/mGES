<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BRAInterest extends Model
{
    protected $fillable = [
        'id',
        'bra_id',
        'job_post_id',
        'status',
    ];

    public function bra()
    {
        return $this->belongsTo(User::class, 'bra_id');
    }
}
