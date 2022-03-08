<?php

namespace App\Http\Controllers\OneStopService;

use App\Candidate;
use App\Http\Controllers\Controller;
use App\OfferedCandidate;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;
use Intervention\Image\ImageManagerStatic as Image;

class CandidateController extends Controller
{
    public function receivedFromBa(){
        $candidates = Candidate::where('sending_status', 2)->orderBy('id','DESC')->get();
        return view('OneStopService.candidate.selected', compact('candidates'));
    }

    public function uploadFace($candidate_id){
        $candidate = Candidate::findOrFail($candidate_id);
        return view('OneStopService.candidate.upload-face', compact('candidate'));
    }


    public function uploadFaceStore(Request $request, $candidate_id){
        $candidate = Candidate::findOrFail($candidate_id);

        if($request->hasFile('candidate_picture')){
            if ($candidate->candidate_picture != null)
            File::delete(public_path($candidate->candidate_picture)); // Old image delete
            $image             = $request->file('candidate_picture');
            $folder_path       = 'uploads/images/users/';
            $image_new_name    = Str::random(20).'-'.now()->timestamp.'.'.$image->getClientOriginalExtension();
            //resize and save to server
            Image::make($image->getRealPath())->save($folder_path.$image_new_name);
            $candidate->candidate_picture   = $folder_path . $image_new_name;
        }
        try {
            $candidate->save();
            session()->flash('success', 'Successfully saved !');
            return back();
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }
    }
    public function assignMedicalAgency($candidate_id){
        $medicalAgencies = User::where('user_type', 'medical-agency')->where('active_status', 'Approved')->get();
        $candidate = Candidate::findOrFail($candidate_id);
        return view('OneStopService.candidate.assign-medical-agency', compact('candidate', 'medicalAgencies'));
    }
    public function assignMedicalAgencyStore(Request $request, $candidate_id){
        $candidate = Candidate::findOrFail($candidate_id);
        $candidate->pre_medical_id = $request->medical;
        try {
            $candidate->save();
            session()->flash('success', 'Successfully saved !');
            return back();
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }
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
