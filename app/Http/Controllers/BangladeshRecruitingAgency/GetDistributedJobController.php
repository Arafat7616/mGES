<?php

namespace App\Http\Controllers\BangladeshRecruitingAgency;

use App\BRAInterest;
use App\Http\Controllers\Controller;
use App\JobDistributeInBRA;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class GetDistributedJobController extends Controller
{
    public function index()
    {
        $jobDistributeInBRAs = JobDistributeInBRA::where('bra_id', Auth::user()->id)->orderBy('id', 'DESC')->get();
        return view('BangladeshRecruitingAgency.getDistributedJob.index', compact('jobDistributeInBRAs'));
    }

    public function show($id)
    {
        $getDistributed = JobDistributeInBRA::findOrFail($id);
        return view('BangladeshRecruitingAgency.interestedJob.show', compact('getDistributed'));
    }
}
