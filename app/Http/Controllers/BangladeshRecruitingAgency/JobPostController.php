<?php

namespace App\Http\Controllers\BangladeshRecruitingAgency;

use App\AppliedJob;
use App\BRAInterest;
use App\Candidate;
use App\Http\Controllers\Controller;
use App\JobPost;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class JobPostController extends Controller
{
    public function all()
    {
        $jobPosts = JobPost::where('status', 'Approved')->orderBy('id', 'DESC')->get();
        return view('BangladeshRecruitingAgency.jobPost.all', compact('jobPosts'));
    }

    public function edit($id)
    {
        $jobPost = JobPost::findOrFail($id);
        return view('BangladeshRecruitingAgency.jobPost.edit', compact('jobPost'));
    }

    public function show($id)
    {
        $jobPost = JobPost::findOrFail($id);
        return view('BangladeshRecruitingAgency.jobPost.show', compact('jobPost'));
    }

    public function update(Request $request, $id)
    {
        $job_post = JobPost::findOrFail($id);
        // $job_post->applied_vacancy    =  $request->appliedVacancy;
        // $job_post->remarks    =  $request->remarks;
        // $job_post->applied_date    =  Carbon::now();
        $job_post->status    =  "Applied";


        $applied_job = new AppliedJob();
        $applied_job->job_post_id  = $job_post->id;
        $applied_job->company_id   = $job_post->company->id;
        $applied_job->applier_id   = Auth::user()->id;
        $applied_job->job_vacancy  = $job_post->job_vacancy;
        $applied_job->applied_vacancy   = $request->appliedVacancy;
        $applied_job->remarks      = $request->remarks;
        $applied_job->applier_agency_name   = Auth::user()->name;
        $applied_job->datetime     = Carbon::now();
        $applied_job->status       = "Applied";

        try {
            $job_post->save();
            $applied_job->save();
            session()->flash('success', 'Successfully saved !');
            return back();
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }
    }

    public function selectCandidates($applied_job_id)
    {
        $appliedJob = AppliedJob::findOrFail($applied_job_id);
        $candidates = Candidate::where('job_category_id', $appliedJob->jobPost->job_category->id)
            ->where('created_id', Auth::user()->id)->orderBy('id', 'DESC')->get();
        return view('BangladeshRecruitingAgency.jobPost.select-candidates', compact('candidates', 'appliedJob'));
    }

    public function jobDetails($id)
    {
        $job_post = JobPost::find($id);
        return view('BangladeshRecruitingAgency.jobPost.jobDetails', compact('job_post'));
    }

    public function JobInterested($id)
    {

        $intersted = new BRAInterest();
        $intersted->bra_id = Auth::user()->id;
        $intersted->job_post_id = $id;
        $intersted->save();

        try {
            $intersted->save();
            session()->flash('success', 'Your Action is Recorded !');
            return back();
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }
    }
}
