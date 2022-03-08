<?php

namespace App\Http\Controllers\MalaysianEmployer;

use App\Http\Controllers\Controller;
use App\JobCategory;
use App\JobDistributeInBRA;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\JobPost;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use Intervention\Image\ImageManagerStatic as Image;

class PostJobController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $job_posts = JobPost::with('user')->where('company_id', Auth::user()->id)->orderBy('id', 'DESC')->get();
        return view('MalaysianEmployer.PostJob.index', compact('job_posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $job_categories = JobCategory::where('status', 'active')->orderBy('id', 'DESC')->get();
        $welfares = User::where('user_type', 'welfare-service-center-company')->orderBy('id', 'DESC')->get();
        $malaysiaAgenies = User::where('user_type', 'malaysia-recruiting-agency')->orderBy('id', 'DESC')->get();
        return view('MalaysianEmployer.PostJob.create', compact('job_categories', 'welfares', 'malaysiaAgenies'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return $request;
        $this->validate($request, [
            'employmentType' => 'required',
            'gender' => 'required',
            'ageLimit' => 'required',
            'salary' => 'required',
            'jobLocation' => 'required',
            'jobCategory' => 'required',
            'jobVacancy' => 'required|numeric',
            'endDate' => 'required',
            'demandLetter' => 'mimes:pdf',
            'recruiting_type' => 'required',
            // // 'wsc' => 'required',
            // 'appointmentDate' => 'required',
            // 'appointmentTime' => 'required',
        ]);

        $job_post = new JobPost();
        $job_post->job_category_id = $request->jobCategory;
        $job_post->user_id = Auth::user()->id;
        $job_post->company_id = Auth::user()->id;
        $job_post->employment_type = $request->employmentType;
        $job_post->recruiting_type = $request->recruiting_type;
        $job_post->gender = $request->gender;
        $job_post->age_limit = $request->ageLimit;
        $job_post->salary = $request->salary;
        $job_post->job_location = $request->jobLocation;
        $job_post->job_vacancy = $request->jobVacancy;
        $job_post->end_date = $request->endDate;
        // $job_post->selected_wsc = $request->wsc;
        // $job_post->appointment_date = $request->appointmentDate;
        // $job_post->appointment_time = $request->appointmentTime;
        if ($request->recruiting_type != 'self') {
            $job_post->mra_id = $request->agency_id;
        }

        if ($request->hasFile('demandLetter')) {
            $pdf             = $request->file('demandLetter');
            $folder_path       = 'uploads/demand-letter/';
            $pdf_new_name    = Str::random(20) . '-' . now()->timestamp . '.' . $pdf->getClientOriginalExtension();
            // save to server
            $request->demandLetter->move(public_path($folder_path), $pdf_new_name);
            $job_post->demand_letter   = $folder_path . $pdf_new_name;
        }

        try {
            $job_post->save();
           session()->flash('success', 'Successfully saved !');
            return back();
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */


    public function show($id)
    {
        $job_post = JobPost::findOrFail($id);

        $rec_agency = JobDistributeInBRA::where('job_post_id',$id)->get();


        return view('MalaysianEmployer.PostJob.show', compact('job_post','rec_agency'));
    }


    public function forward($id){
        $job_post = JobPost::findorFail($id);
        $job_post->forward_status = 'Forwarded';
        try {
            $job_post->save();
            session()->flash('success', 'Successfully Forwarded !');
            return back();
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }
    }

    public function forward_to_bhc($id){
        $job_post = JobPost::findorFail($id);
        $job_post->forward_to_bhc = 1;
        try {
            $job_post->save();
            session()->flash('success', 'Successfully Forwarded to Bangladesh High Comission !');
            return back();
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }
    }


    public function maApproved()
    {
        $job_posts = JobPost::where('ma_status',['Approved'])->orderBy('id', 'DESC')->get();
        return view('MalaysianEmployer.PostJob.ma_approved', compact('job_posts'));
    }

    public function bhcApproved()
    {
        $job_posts = JobPost::where('bhc_approval',1)->orderBy('id', 'DESC')->get();
        return view('MalaysianEmployer.PostJob.bhcApproved', compact('job_posts'));
    }

    public function bhcApproved_view($id)
    {
        $job_post = JobPost::find($id);
        return view('MalaysianEmployer.PostJob.bhcApproved_view', compact('job_post'));
    }

    public function recruitEmployee($id)
    {
        $job_post = JobPost::findOrFail($id);
        $malaysiaAgenies = User::where('user_type', 'malaysia-recruiting-agency')->orderBy('id', 'DESC')->get();
        return view('MalaysianEmployer.PostJob.recruit_employee', compact('job_post','malaysiaAgenies'));
    }

    public function sendJob(Request $request,$id){

        // dd($request->all());
        $request->validate([
             'recruiting_type' => 'required',
        ]);

         $job_post = JobPost::findOrFail($id);
        $job_post->recruiting_type = $request->recruiting_type;
        if ($request->recruiting_type != 'self') {
            $job_post->mra_id = $request->agency_id;
        }

        try {
            $job_post->save();
           session()->flash('success', 'Successfully saved !');
            return back();
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }

    }

    public function getDemandLetter(){

        $jobPosts = JobPost::where('user_id',Auth::user()->id)->get();
        // $jobDistributedBras = JobDistributeInBRA::where('memp_status','Demand')->get();
        return view('MalaysianEmployer.PostJob.getDemandLetter', compact('jobPosts'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('MalaysianEmployer.PostJob.edit');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
