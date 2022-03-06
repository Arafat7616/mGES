<?php

namespace App\Http\Controllers;

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
