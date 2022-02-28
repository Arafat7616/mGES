<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    public function index(){
        if(Auth::user())
        {
            if (Auth::user()->user_type == 'super-admin') {
                return redirect()->to('super-admin/dashboard');
            } elseif (Auth::user()->user_type == 'employer-company') {
                return redirect()->to('employer-company/dashboard');
            } elseif (Auth::user()->user_type == 'welfare-service-center-company') {
                return redirect()->to('welfare-centre/dashboard');
            }elseif(Auth::user()->user_type == 'bangladesh-high-commission')
            {
                return redirect()->to('bangladesh-high-commission/dashboard');
            }
            elseif(Auth::user()->user_type == 'malaysia-admin')
            {
                return redirect()->to('malaysia-admin/dashboard');
            }
            elseif(Auth::user()->user_type == 'malaysia-embassy')
            {
                return redirect()->to('malaysia-embassy/dashboard');
            }
            elseif (Auth::user()->user_type == 'master-one-stop-service') {
                return redirect()->to('one-stop-service/dashboard');
            } elseif (Auth::user()->user_type == 'child-one-stop-service') {
                return redirect()->to('child-one-stop-service/dashboard');
            } elseif (Auth::user()->user_type == 'medical-company') {
                return redirect()->to('medical-agency/dashboard');
            } elseif (Auth::user()->user_type == 'training-agency') {
                return redirect()->to('training-agency/dashboard');
            } elseif (Auth::user()->user_type == 'travel-company') {
                return redirect()->to('/dashboard');
            } elseif (Auth::user()->user_type == 'biometric-company') {
                return redirect()->to('biometric-agency/dashboard');
            }elseif(Auth::user()->user_type == 'malaysia-recruiting-agency')
            {
                return redirect()->to('malaysia-recruiting-agency/dashboard');
            } elseif (Auth::user()->user_type == 'bangladesh-recruiting-agency') {
                return redirect()->to('bangladesh-recruiting-agency/dashboard');
            } elseif (Auth::user()->user_type == 'bangladeshi-admin') {
                return redirect()->to('bangladesh-admin/dashboard');
            } elseif (Auth::user()->user_type == 'employer') {
            } else {
                return redirect()->to('/login');
            }
        }
        else{
            return view('auth.login');
        }

    }
}
