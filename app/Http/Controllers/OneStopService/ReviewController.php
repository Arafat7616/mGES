<?php

namespace App\Http\Controllers\OneStopService;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    //
    public function index()
    {
        $agency = User::where('user_type','bangladesh-recruiting-agency')->latest()->get();
        return view('OneStopService.review.index', compact('agency'));
    }
}
