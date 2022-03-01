<?php

namespace App\Http\Controllers\BangladeshAdmin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;

class BangladeshHighCommissionController extends Controller
{
    public function request(){
        $users = User::where('user_type','bangladesh-high-commission')->where('active_status', 'Pending')->orderBy('id','DESC')->get();
        return view('BangladeshAdmin.bangladeshHighCommission.request', compact('users'));
    }

    public function approved(){
        $users = User::where('user_type','bangladesh-high-commission')->where('active_status', 'Approved')->orderBy('id','DESC')->get();
        return view('BangladeshAdmin.bangladeshHighCommission.approved', compact('users'));
    }

    public function rejected(){
        $users = User::where('user_type','bangladesh-high-commission')->where('active_status', 'Rejected')->orderBy('id','DESC')->get();
        return view('BangladeshAdmin.bangladeshHighCommission.rejected', compact('users'));
    }

    public function approveNow($id){
        $user = User::findOrFail($id);
        $user->active_status = "Approved";
        try {
            $user->save();
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

    public function rejectNow($id){
        $user = User::findOrFail($id);
        $user->active_status = "Rejected";
        try {
            $user->save();
            return response()->json([
                'type' => 'success',
                'message' => 'Successfully Updated'
            ]);
        }catch (\Exception $exception){
            return response()->json([
                'type' => 'error',
                'message' => $exception->getMessage()
            ]);
        }
    }
}
