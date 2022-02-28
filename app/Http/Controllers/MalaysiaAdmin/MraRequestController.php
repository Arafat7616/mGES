<?php

namespace App\Http\Controllers\MalaysiaAdmin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Whoops\Run;

class MraRequestController extends Controller
{
    public function new(){
        $users = User::where('user_type','malaysia-recruiting-agency')->where('active_status', 'Pending')->orderBy('id','DESC')->get();
        return view('MalaysiaAdmin.mraRequest.new', compact('users'));
    }

    public function approved(){
        $users = User::where('user_type','malaysia-recruiting-agency')->where('active_status', 'Approved')->orderBy('id','DESC')->get();
        return view('MalaysiaAdmin.mraRequest.approved', compact('users'));
    }

    public function rejected(){
        $users = User::where('user_type','malaysia-recruiting-agency')->where('active_status', 'Rejected')->orderBy('id','DESC')->get();
        return view('MalaysiaAdmin.mraRequest.rejected', compact('users'));
    }

    public function edit($id){
        $user = User::findOrFail($id);
        return view('MalaysiaAdmin.mraRequest.edit', compact('user'));
    }

    public function update(Request $request , $id){

        $request->validate([
            ''
        ]);

        $user = User::find($id);

        $user->company_name    =   $request->companyName;
        $user->active_status    =  $request->activeStatus;
        $user->company_register_number    =   $request->companyRegisterNumber;
        $user->domain       =   $request->domain;
        $user->phone        =   $request->phoneNumber;
        $user->address1    =   $request->address1;
        $user->address2    =   $request->address2;


        try {
            $user->save();
            return back()->withToastSuccess('Approved Successfully.');
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }
    }
}
