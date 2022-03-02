<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FrontedController extends Controller
{
    public function index(){
        return view('LandingPage.index');
    }
}
