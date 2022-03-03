<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FrontendController extends Controller
{
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
}
