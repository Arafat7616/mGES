<?php

namespace App\Http\Controllers\OneStopService;

use App\Candidate;
use App\Http\Controllers\Controller;
use App\OfferedCandidate;
use App\User;
use Illuminate\Http\Request;

class CandidateController extends Controller
{
    public function selected(){
        $candidates = Candidate::where('result_status','!=','Assigned')->where('offered_status', true)->orderBy('id','DESC')->get();
        return view('OneStopService.candidate.selected', compact('candidates'));
    }

    public function uploadFaceMatch($candidate_id){
        $candidate = Candidate::findOrFail($candidate_id);
        return view('OneStopService.candidate.upload-face-match', compact('candidate','wscList'));
    }

    public function interview(){
        $offeredCandidates = OfferedCandidate::whereIn('result_status', ['Interview','Updated','Under-Interview-Process'])->orderBy('id','DESC')->get();
        return view('OneStopService.candidate.interview', compact('offeredCandidates'));
    }

    public function finalized(){
        $offeredCandidates = OfferedCandidate::where('result_status',
        'Finalized')->orderBy('id','DESC')->get();
        return view('OneStopService.candidate.finalized', compact('offeredCandidates'));
    }

    public function ticketBooked(){
        $offeredCandidates = OfferedCandidate::whereIn('travel_status', ['Activated','Forwarded','Ticket-Issued'])->orderBy('id','DESC')->get();
        return view('OneStopService.candidate.ticketBooked', compact('offeredCandidates'));
    }

    public function showReviewedCandidate($candidate_id){
        $candidate = Candidate::findOrFail($candidate_id);
        return view('OneStopService.candidate.show-candidate', compact('candidate'));
    }

    public function showFinalCandidate($offered_candidate_id){
        $offeredCandidate = OfferedCandidate::findOrfail($offered_candidate_id);
        $candidate = Candidate::findOrFail($offeredCandidate->candidate_id);
        return view('OneStopService.candidate.show-final-candidate', compact('offeredCandidate','candidate'));
    }

    public function showBookedCandidate($offered_candidate_id)
    {
        $offeredCandidate = OfferedCandidate::findOrFail($offered_candidate_id);
        return view('OneStopService.candidate.show-booked-candidate', compact('offeredCandidate'));
    }

    public function assignSelectedCandidate($candidate_id){
        $candidate = Candidate::findOrFail($candidate_id);
        $wscList = User::where('user_type','child-one-stop-service')->where('active_status','Approved')->orderBy('id','DESC')->get();
        return view('OneStopService.candidate.assign-selected-candidate', compact('candidate','wscList'));
    }

    public function assignSelectedCandidateStore(Request $request , $candidate_id){
        $request->validate([
            'fees' =>  'required',
            'wsc' =>  'required',
        ]);
        $candidate = Candidate::findOrfail($candidate_id);
        $candidate->result_status = 'Assigned';
        $candidate->selected_osc_id = $request->wsc;
        $candidate->payment_assigned = $request->fees;

        try {
            $candidate->save();
            session()->flash('success', 'Successfully saved !');
            return back();
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }
    }

    public function assignInterviewOsc($offered_candidate_id){
        $offeredCandidate = OfferedCandidate::findOrfail($offered_candidate_id);
        $candidate = Candidate::findOrFail($offeredCandidate->candidate_id);
        $wscList = User::where('user_type','child-one-stop-service')->where('active_status','Approved')->orderBy('id','DESC')->get();
        return view('OneStopService.candidate.assign-interview-osc', compact('candidate','offeredCandidate','wscList'));
    }

    public function assignInterviewOscStore(Request $request , $offered_candidate_id){
        $request->validate([
            'wsc' =>  'required',
        ]);
        $offeredCandidate = OfferedCandidate::findOrfail($offered_candidate_id);
        $offeredCandidate->result_status = 'Under-Interview-Process';
        $offeredCandidate->interview_osc_id = $request->wsc;

        try {
            $offeredCandidate->save();
            session()->flash('success', 'Successfully saved !');
            return back();
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }
    }

    public function requestToVisa($offered_candidate_id){
        $offeredCandidate = OfferedCandidate::findOrFail($offered_candidate_id);
        $offeredCandidate->result_status = "Visa-Requested";
        try {
            $offeredCandidate->save();
            return response()->json([
                'type' => 'success',
                'message' => 'Successfully Stored'
            ]);
        }catch (\Exception $exception){
            return response()->json([
                'type' => 'error',
                'message' => $exception->getMessage()
            ]);
        }
    }
}
