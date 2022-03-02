<?php

namespace App\Http\Controllers\BangladeshAdmin;

use App\AppliedJob;
use App\BRAInterest;
use App\JobPost;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\JobDistributeInBRA;
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
    public function braInterested()
    {
        // take array of all interested jobPost ids
        $array = [];
        $jobPostIdArrayFromInterest  = BRAInterest::all();
        foreach($jobPostIdArrayFromInterest as $d){
            array_push($array,$d->job_post_id);
        }
        // take all interested jobPosts
        $jobPosts = JobPost::whereIn('id',$array)->where('ma_status', 'Approved')->where('recruiting_type', '!=', null)->orderBy('id', 'DESC')->get();
        return view('BangladeshAdmin.Jobposts.braInterested', compact('jobPosts'));

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

        $notification->text = 'Need '.$jobPost->job_vacancy.' employe for '.$jobPost->user->name;

        $notification->notification_for = 'bangladesh-recruiting-agency';
        $notification->notification_from =$jobPost->user_id;
        $notification->created_by =  Auth::user()->id;
        $notification->job_post_id = $job_post_id;
        $notification->save();

        try {
            $notification->save();
            return back()->withToastSuccess('Successfully sent notification to all recruiter');
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }


    }

    public function vacancy_approval()
    {
        $appliedVacancies = AppliedJob::orderby('id', 'DESC')->get();
        return view('BangladeshAdmin.Jobposts.VacancyApproval', compact('appliedVacancies'));
    }

    public function distributeCandidates($job_post_id)
    {
        $jobPost = JobPost::findOrFail($job_post_id);

        // take array of all BRA interested
        $BRAInterests  = BRAInterest::where('job_post_id', $job_post_id)->get();
        $BRAInterestsCountedValue  = BRAInterest::where('job_post_id', $job_post_id)->count();

        $totalAmount = $jobPost->job_vacancy;

        $average = $totalAmount/$BRAInterestsCountedValue;
        $first_avg =  round($average);
        $loop_updateable_value = $first_avg;

        $getedValue = [];
        for ($i=1; $i <=$BRAInterestsCountedValue; $i++) {
            if($i == 1){
                array_push($getedValue, $first_avg);
                $loop_updateable_value = $loop_updateable_value;
            }elseif ($i == $BRAInterestsCountedValue) {
                $loop_updateable_value = $loop_updateable_value+$first_avg;
                if($loop_updateable_value > $totalAmount){
                    $loop_updateable_value = $loop_updateable_value-1;
                    array_push($getedValue, $first_avg-1);
                }else{
                    array_push($getedValue, $first_avg);
                }
            }else{
                array_push($getedValue, $first_avg);
                $loop_updateable_value = $loop_updateable_value+$first_avg;
            }
        }
        $messageArray = [];

        foreach ($BRAInterests as $key => $BRAInterest) {
            $jobDistributeInBRA = new JobDistributeInBRA();
            $jobDistributeInBRA->job_post_id = $job_post_id;
            $jobDistributeInBRA->bra_id = $BRAInterest->bra_id;
            $jobDistributeInBRA->bra_interest_id = $BRAInterest->id;
            $jobDistributeInBRA->distributed_vacancy = $getedValue[$key];
            $jobDistributeInBRA->save();

            //array_push($messageArray, $BRAInterest->bra->name, $getedValue[$key]);
        }

        $jobDistributeInBRAs = JobDistributeInBRA::where('job_post_id',$job_post_id)->get();
        return view('BangladeshAdmin.Jobposts.DistributeAlertTable',compact('jobDistributeInBRAs'));

        // try {
        //     return response()->json([
        //         'type' => 'success',
        //         'message' => 'Successfully Rejected',
        //         'messageArray' => $messageArray
        //     ]);
        // }catch (\Exception $exception){
        //     return response()->json([
        //         'type' => 'error',
        //         'message' => $exception->getMessage()
        //     ]);
        // }
    }
}
