<?php

namespace App\Http\Controllers\MalaysiaRecruitingAgency;

use App\AppliedJob;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AppliedJobController extends Controller
{
    public function applied(){
        $appliedJobs = AppliedJob::where('applier_id', Auth::user()->id)->orderBy('id','DESC')->get();;
        return view('MalaysiaRecruitingAgency.appliedJob.applied', compact('appliedJobs'));
    }

    public function show($id)
    {
        $appliedJob = AppliedJob::findOrFail($id);
        return view('MalaysiaRecruitingAgency.appliedJob.show', compact('appliedJob'));
    }
}
