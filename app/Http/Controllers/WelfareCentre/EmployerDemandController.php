<?php

namespace App\Http\Controllers\WelfareCentre;

use App\Http\Controllers\Controller;
use App\JobPost;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use Intervention\Image\ImageManagerStatic as Image;

class EmployerDemandController extends Controller
{
    //
    public function received(){
        $job_posts = JobPost::where('forward_to_wsc',1)->orderBy('id','DESC')->get();
        return view('WelfareCentre.employerDemand.received',compact('job_posts'));
    }

    public function send(){
        $job_posts = JobPost::where('status', 'Verified')->orderBy('id','DESC')->get();
        return view('WelfareCentre.employerDemand.received',compact('job_posts'));
    }

    public function approved(){
        $job_posts = JobPost::where('status','Approved')->where('wsc_send_status',0)->orderBy('id','DESC')->get();
        return view('WelfareCentre.employerDemand.approved',compact('job_posts'));
    }

    public function rejected(){
        $job_posts = JobPost::where('status','Rejected')->orderBy('id','DESC')->get();
        return view('WelfareCentre.employerDemand.rejected',compact('job_posts'));
    }

    public function show($id){

        $job_post = JobPost::findOrFail($id);
        return view('WelfareCentre.employerDemand.show',compact('job_post'));
    }

    public function edit($id){

        $job_post = JobPost::findOrFail($id);
        return view('WelfareCentre.employerDemand.edit',compact('job_post'));
    }

    public function update(Request $request , $id){
        $request->validate([
            'demandLetter' => 'mimes:pdf',
        ]);

        $job_post = JobPost::findOrFail($id);

        $job_post->bhc_approval    =   $request->jobPostStatus;
        $job_post->rejection_reason    =  $request->reasonToReject;

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

    public function send_to_me_and_ba($id){
        $job_post = JobPost::findOrFail($id);
        $job_post->wsc_send_status = 1;
        $job_post->update();

        return back()->withToastSuccess('Successfully Forwarded');
    }
}
