<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JobDistributeInBRA extends Model
{
    public function bra()
    {
        return $this->belongsTo(User::class, 'bra_id');
    }
    public function braInterest()
    {
        return $this->belongsTo(BRAInterest::class, 'bra_interest_id');
    }
}
