<?php

namespace App\Http\Controllers\MalaysiaAdmin;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;

class MalaysiaEmbassyController extends Controller
{
    public function new(){
        $users = User::where('user_type','malaysia-embassy')->where('active_status', 'Pending')->orderBy('id','DESC')->get();
        return view('MalaysiaAdmin.MalaysiaEmbassy.new', compact('users'));
    }

    public function approved(){
        $users = User::where('user_type','malaysia-embassy')->where('active_status', 'Approved')->orderBy('id','DESC')->get();
        return view('MalaysiaAdmin.MalaysiaEmbassy.approved', compact('users'));
    }

    public function rejected(){
        $users = User::where('user_type','malaysia-embassy')->where('active_status', 'Rejected')->orderBy('id','DESC')->get();
        return view('MalaysiaAdmin.MalaysiaEmbassy.rejected', compact('users'));
    }
}
