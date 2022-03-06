<?php

namespace App\Http\Controllers\BangladeshRecruitingAgency;

use App\BRAInterest;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class InterestedJobController extends Controller
{
    public function index()
    {
        $braInterests = BRAInterest::where('bra_id', Auth::user()->id)->orderBy('id', 'DESC')->get();
        return view('BangladeshRecruitingAgency.interestedJob.index', compact('braInterests'));
    }

    public function show($id)
    {
        $braInterest = BRAInterest::findOrFail($id);
        return view('BangladeshRecruitingAgency.interestedJob.show', compact('braInterest'));
    }
}
