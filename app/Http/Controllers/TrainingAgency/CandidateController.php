<?php

namespace App\Http\Controllers\TrainingAgency;

use App\Candidate;
use App\Http\Controllers\Controller;
use App\OfferedCandidate;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Intervention\Image\ImageManagerStatic as Image;

class CandidateController extends Controller
{
    public function new()
    {
        $candidates = Candidate::where('pre_training_id', Auth::user()->id)->where('pre_training_status', 0)->orderBy('id', 'DESC')->get();
        return view('TrainingAgency.candidate.new', compact('candidates'));
    }

    public function show($candidate_id)
    {
        $candidate = Candidate::findOrFail($candidate_id);
        return view('TrainingAgency.candidate.show-profile', compact('candidate'));
    }

    public function trainingReport($candidate_id)
    {
        $candidate = Candidate::findOrFail($candidate_id);
        return view('TrainingAgency.candidate.training-report', compact('candidate'));
    }

    public function  uploadTrainingReport(Request $request, $id)
    {

        $candidate = Candidate::findOrFail($id);
        $candidate->pre_training_status = $request->pre_training_status;
        $candidate->pre_training_comments = $request->pre_training_comments;

        try {
            $candidate->save();
            session()->flash('success', 'Successfully saved !');
            return back();
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }
    }

    public function reported()
    {
        $candidates = Candidate::where('pre_training_id', Auth::user()->id)->whereIn('pre_training_status', [1, 2])->orderBy('id', 'DESC')->get();
        return view('TrainingAgency.candidate.reported', compact('candidates'));
    }
}
