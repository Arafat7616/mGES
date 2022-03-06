<?php

namespace App\Http\Controllers\CallCenter;

use App\Candidate;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CallCenterController extends Controller
{
    public function selectedFromDB(){
        $data = [
            'candidates' =>  Candidate::where('status',1)->get(),
        ];
        return view('CallCenter.candidates.db',$data);
    }

    public function show($id){
        $data = [
            'candidate' => Candidate::findOrFail($id),
        ];

        return view('CallCenter.candidates.show',$data);
    }
}
