<?php

namespace App\Http\Controllers;

use App\JobDistributeInBRA;
use App\JobPost;
use Illuminate\Http\Request;

class DemandLetterController extends Controller
{
    public function demandLetter($job_post_id,$jobDistributedBra_id = null)
    {
        $post = JobPost::findOrFail($job_post_id);
        if(JobDistributeInBRA::find($jobDistributedBra_id)){
            $jobDistributedBra = JobDistributeInBRA::find($jobDistributedBra_id);
        }else{
            $jobDistributedBra = null;
        }
        return view('qrcode_result', compact('post','jobDistributedBra'));
    }
}
