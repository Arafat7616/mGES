<?php

namespace App\Http\Controllers\MedicalAgency;

use App\Candidate;
use App\Http\Controllers\Controller;
use App\OfferedCandidate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class CandidateController extends Controller
{
    public function new(){
        $candidates = Candidate::where('pre_medical_id', Auth::user()->id)->where('pre_medical_status', 0)->orderBy('id','DESC')->get();
        return view('MedicalAgency.candidate.new', compact('candidates'));
    }

    public function show($candidate_id){
        $candidate = Candidate::findOrFail($candidate_id);
        return view('MedicalAgency.candidate.show-profile', compact('candidate'));
    }

    public function medicalReport($candidate_id){
        $candidate = Candidate::findOrFail($candidate_id);
        return view('MedicalAgency.candidate.medical-report', compact('candidate'));
    }

    public function  uploadMedicalReport(Request $request, $id){

        $offeredCandidate = Candidate::findOrFail($id);
        $offeredCandidate->pre_medical_status = $request->pre_medical_status;
        $offeredCandidate->pre_medical_comments = $request->pre_medical_comments;

        try {
            $offeredCandidate->save();
           session()->flash('success', 'Successfully saved !');
            return back();
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }
    }

    public function reported(){
        $candidates = Candidate::where('pre_medical_id', Auth::user()->id)->whereIn('pre_medical_status',[1,2] )->orderBy('id','DESC')->get();
        return view('MedicalAgency.candidate.reported', compact('candidates'));
    }
}
