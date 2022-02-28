<?php

namespace App\Http\Controllers\BangladeshAdmin;

use App\AppliedJob;
use App\JobPost;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Notification;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class JobPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $jobPosts = JobPost::where('ma_status', 'Approved')->where('recruiting_type', '!=', null)->orderBy('id', 'DESC')->get();
        return view('BangladeshAdmin.Jobposts.totalJobPost', compact('jobPosts'));

    }
    public function JobPostShow($id)
    {
        $job_post = JobPost::FindOrFail($id);
        return view('BangladeshAdmin.Jobposts.JobPostsShow', compact('job_post'));

    }

    public function viewVacancy($applied_job_id)
    {
        $appliedJob = AppliedJob::FindOrFail($applied_job_id);
        return view('BangladeshAdmin.Jobposts.view-vacancy', compact('appliedJob'));

    }

    public function approveVacancy($applied_job_id)
    {
        $appliedJob = AppliedJob::FindOrFail($applied_job_id);
        return view('BangladeshAdmin.Jobposts.approve-vacancy', compact('appliedJob'));

    }

    public function approveVacancyStore(Request $request,$id)
    {
        $request->validate([
            'approvedVacancy' =>  'required|numeric',
        ]);

        $appliedJob = AppliedJob::FindOrFail($id);

        $appliedJob->approved_vacancy  = $request->approvedVacancy;
        $appliedJob->approved_company_name   = Auth::user()->company_name;
        $appliedJob->approved_by   = Auth::user()->name;
        $appliedJob->approved_id  = Auth::user()->id;
        $appliedJob->approved_date   = Carbon::now();
        $appliedJob->approved_remarks      = $request->comments;
        $appliedJob->status       = "Approved";
        try {
            $appliedJob->save();
            return back()->withToastSuccess('Successfully saved.');
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }
    }

    public function rejectVacancy($id){
        $appliedJob = AppliedJob::FindOrFail($id);
        $appliedJob->status = "Rejected";
        try {
            $appliedJob->save();
            return response()->json([
                'type' => 'success',
                'message' => 'Successfully Rejected'
            ]);
        }catch (\Exception $exception){
            return response()->json([
                'type' => 'error',
                'message' => $exception->getMessage()
            ]);
        }
    }

    public function notificationStore($job_post_id){
        $jobPost = JobPost::find($job_post_id);

        $notification = new Notification();
        $notification->title = 'New Job Post';
        $notification->text = 'Need '.$jobPost->job_vacancy.' employe for '.$jobPost->company->company_name;
        $notification->notification_for = 'bangladesh-recruiting-agency';
        $notification->notification_from =$jobPost->user_id;
        $notification->created_by =  Auth::user()->id;
        $notification->jobpost_id = $job_post_id;
        $notification->save();

        try {
            $notification->save();
            return response()->json([
                'type' => 'success',
                'message' => 'Successfully Rejected'
            ]);
        }catch (\Exception $exception){
            return response()->json([
                'type' => 'error',
                'message' => $exception->getMessage()
            ]);
        }
    }

    public function vacancy_approval()
    {
        $appliedVacancies = AppliedJob::orderby('id', 'DESC')->get();
        return view('BangladeshAdmin.Jobposts.VacancyApproval', compact('appliedVacancies'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\JobPost  $jobPost
     * @return \Illuminate\Http\Response
     */
    public function show(JobPost $jobPost)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\JobPost  $jobPost
     * @return \Illuminate\Http\Response
     */
    public function edit(JobPost $jobPost)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\JobPost  $jobPost
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, JobPost $jobPost)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\JobPost  $jobPost
     * @return \Illuminate\Http\Response
     */
    public function destroy(JobPost $jobPost)
    {
        //
    }
}
