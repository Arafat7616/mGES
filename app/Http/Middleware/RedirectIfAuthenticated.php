<?php

namespace App\Http\Middleware;

use App\Providers\RouteServiceProvider;
use Closure;
use Illuminate\Support\Facades\Auth;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {

        if (Auth::guard($guard)->check() && Auth::user()->user_type == 'super-admin') {
            return redirect()->route('SuperAdmin.dashboard');
        } elseif (Auth::guard($guard)->check() && Auth::user()->user_type == 'malaysian-employer') {
            return redirect()->route('MalaysianEmployer.dashboard');
        } elseif (Auth::guard($guard)->check() && Auth::user()->user_type == 'welfare-service-center-company') {
            return redirect()->route('WelfareCentre.dashboard');
        }elseif(Auth::guard($guard)->check() && Auth::user()->user_type == 'bangladesh-high-commission')
        {
            return redirect()->route('BangladeshHighCommission.dashboard');
        } elseif (Auth::guard($guard)->check() && Auth::user()->user_type == 'malaysia-admin') {
            return redirect()->route('MalaysiaAdmin.dashboard');
        } elseif (Auth::guard($guard)->check() && Auth::user()->user_type == 'master-one-stop-service') {
            return redirect()->route('OneStopService.dashboard');
        } elseif (Auth::guard($guard)->check() && Auth::user()->user_type == 'child-one-stop-service') {
            return redirect()->route('OneStopService_Child.dashboard');
        } elseif (Auth::guard($guard)->check() && Auth::user()->user_type == 'travel-agency') {
            return redirect()->route('TravelAgency.dashboard');
        } elseif (Auth::guard($guard)->check() && Auth::user()->user_type == 'biometric-agency') {
            return redirect()->route('BiometricAgencies.dashboard');
        } elseif (Auth::guard($guard)->check() && Auth::user()->user_type == 'candidate') {
            return redirect()->route('Candidate.dashboard');
        } elseif (Auth::guard($guard)->check() && Auth::user()->user_type == 'malaysia-embassy') {
            return redirect()->route('MalaysiaEmbassy.dashboard');
        } elseif (Auth::guard($guard)->check() && Auth::user()->user_type == 'medical-agency') {
            return redirect()->route('MedicalAgency.dashboard');
        } elseif (Auth::guard($guard)->check() && Auth::user()->user_type == 'training-agency') {
            return redirect()->route('TrainingAgency.dashboard');
        } elseif (Auth::guard($guard)->check() && Auth::user()->user_type == 'bangladesh-recruiting-agency') {
            return redirect()->route('BangladeshRecruitingAgency.dashboard');
        } elseif (Auth::guard($guard)->check() && Auth::user()->user_type == 'bangladeshi-admin') {
            //return redirect()->route('BangladeshAdmin.dashboard');
        } else {
            return $next($request);
        }
    }
}
