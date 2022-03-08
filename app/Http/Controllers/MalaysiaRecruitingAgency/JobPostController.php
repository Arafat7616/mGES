<?php

namespace App\Http\Controllers\MalaysiaRecruitingAgency;

use App\AppliedJob;
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
        // $jobPosts = JobPost::where('status', 'Approved')->orderBy('id', 'DESC')->get();
        $jobPosts = JobPost::where('ma_status', 'Approved')->where('recruiting_type','agency')->where('mra_id',Auth::user()->id)->orderBy('id', 'DESC')->get();
        return view('MalaysiaRecruitingAgency.jobPost.all', compact('jobPosts'));
    }

    public function edit($id)
    {
        $jobPost = JobPost::findOrFail($id);
        return view('MalaysiaRecruitingAgency.jobPost.edit', compact('jobPost'));
    }

    public function show($id)
    {
        $jobPost = JobPost::findOrFail($id);
        return view('MalaysiaRecruitingAgency.jobPost.show', compact('jobPost'));
    }

    public function update(Request $request, $id)
    {
        $job_post = JobPost::findOrFail($id);
        // $job_post->applied_vacancy    =  $request->appliedVacancy;
        // $job_post->remarks    =  $request->remarks;
        // $job_post->applied_date    =  Carbon::now();
        $job_post->status    =  "Applied";
        $job_post->forward_status = "Forwarded";

        try {
            $job_post->save();
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
        return view('MalaysiaRecruitingAgency.jobPost.select-candidates', compact('candidates', 'appliedJob'));
    }
}
