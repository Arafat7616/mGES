<?php

namespace App\Http\Controllers;

use App\Candidate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;

class FrontendController extends Controller
{


    public function reboot()
    {
        Artisan::call('cache:clear');
        Artisan::call('route:clear');
        Artisan::call('view:clear');
        file_put_contents(storage_path('logs/laravel.log'), '');
        Artisan::call('key:generate');
        Artisan::call('config:cache');
        return '<center><h1>System Rebooted!</h1></center>';
    }

    public function candidateCV($id){
        $candidate = Candidate::find($id);
        return view('Candidate.cv.workerpdf')->with('candidate', $candidate);
    }

    public function policeCertificate($id){

        $candidate = Candidate::find($id);
        return view('Others.policeCertificate.certificate')->with('candidate', $candidate);
    }

    public function medicalCertificate($id){

        $candidate = Candidate::find($id);
        return view('Others.medical_certificate')->with('candidate', $candidate);
    }
    public function trainingCertificate($id){

        $candidate = Candidate::find($id);
        return view('Others.training_certificate')->with('candidate', $candidate);
    }

    public function biomatricCertificate($id){

        $candidate = Candidate::find($id);
        return view('Others.biomatric_certificate')->with('candidate', $candidate);
    }

    public function index()
    {
        return view('LandingPage.index');
    }

    public function about()
    {
        return view('LandingPage.about');
    }

    public function mgesAbout()
    {
        return view('LandingPage.mgesAbout');
    }

    public function contact()
    {
        return view('LandingPage.contact');
    }

    public function medicalCenter()
    {
        return view('LandingPage.madicalCenter');
    }

    public function requirtmentAgency()
    {
        return view('LandingPage.recruitmentAgencies');
    }

    public function insurance()
    {
        return view('LandingPage.insurance');
    }
}
