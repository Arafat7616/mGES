<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo;

    public function redirectTo()
    {
        if (Auth::user()->user_type == 'super-admin') {

            return 'super-admin/dashboard';

        } elseif (Auth::user()->user_type == 'malaysian-employer') {
            return 'malaysian-employer/dashboard';
        } elseif (Auth::user()->user_type == 'welfare-service-center-company') {
            return 'welfare-centre/dashboard';
        }elseif(Auth::user()->user_type == 'bangladesh-high-commission')
        {
            return 'bangladesh-high-commission/dashboard';
        }
        elseif(Auth::user()->user_type == 'malaysia-admin')
        {
            return 'malaysia-admin/dashboard';
        }
        elseif(Auth::user()->user_type == 'malaysia-embassy')
        {
            return 'malaysia-embassy/dashboard';
        }
        elseif (Auth::user()->user_type == 'master-one-stop-service') {
            return 'one-stop-service/dashboard';
        } elseif (Auth::user()->user_type == 'child-one-stop-service') {
            return 'child-one-stop-service/dashboard';
        } elseif (Auth::user()->user_type == 'medical-agency') {
            return 'medical-agency/dashboard';
        } elseif (Auth::user()->user_type == 'training-agency') {
            return 'training-agency/dashboard';
        } elseif (Auth::user()->user_type == 'biometric-agency') {
            return 'biometric-agency/dashboard';
        } elseif (Auth::user()->user_type == 'travel-agency') {
            return 'travel-agency/dashboard';
        }elseif(Auth::user()->user_type == 'malaysia-recruiting-agency')
        {
            return 'malaysia-recruiting-agency/dashboard';
        } elseif (Auth::user()->user_type == 'bangladesh-recruiting-agency') {
            return 'bangladesh-recruiting-agency/dashboard';
        } elseif (Auth::user()->user_type == 'bangladeshi-admin') {
            return 'bangladesh-admin/dashboard';
        }
        elseif (Auth::user()->user_type == 'employer') {
        } 
        elseif (Auth::user()->user_type == 'call-center') {
            return 'call-center/dashboard';
        } 
        else {
            return route('login');
        }
    }

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
