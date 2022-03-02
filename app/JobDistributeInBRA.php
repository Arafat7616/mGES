<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JobDistributeInBRA extends Model
{
    public function bra()
    {
        return $this->belongsTo(User::class, 'bra_id');
    }
}
