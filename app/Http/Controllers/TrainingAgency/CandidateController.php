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
    function new()
    {
        $candidates = Candidate::where('pre_training_id', Auth::user()->id)->where('pre_medical_status', 0)->orderBy('id', 'DESC')->get();
        return view('TrainingAgency.candidate.new', compact('candidates'));
    }

    public function show($id)
    {
        $offeredCandidate = OfferedCandidate::findOrFail($id);
        return view('TrainingAgency.candidate.show-profile', compact('offeredCandidate'));
    }

    public function post_training_report($id)
    {

        $candidate = Candidate::findOrFail($id);

        return view('TrainingAgency.candidate.post_training_report', compact('candidate'));
    }
    public function add_training_report(Request $request, $id)
    {
        $request->validate([
            'post_training_report' => 'mimes:pdf',
        ]);

        $offeredCandidate = OfferedCandidate::findOrFail($id);
        $offeredCandidate->post_training_status = $request->post_training_status;
        $offeredCandidate->post_training_comments = $request->post_training_comments;

        if ($request->hasFile('post_training_report')) {
            $pdf             = $request->file('post_training_report');
            $folder_path       = 'uploads/candidate/post_training_report/';
            $pdf_new_name    = Str::random(20) . '-' . now()->timestamp . '.' . $pdf->getClientOriginalExtension();
            // save to server
            $request->post_training_report->move(public_path($folder_path), $pdf_new_name);
            $offeredCandidate->post_training_report   = $folder_path . $pdf_new_name;
        }

        try {
            $offeredCandidate->save();
            session()->flash('success', 'Successfully saved !');
            return back();
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }
    }

    public function reported()
    {
        $offeredCandidates = OfferedCandidate::where('post_training_status', '!=', 'New')->where('post_training_id', Auth::user()->id)->orderBy('id', 'DESC')->get();
        return view('TrainingAgency.candidate.reported', compact('offeredCandidates'));
    }
}
