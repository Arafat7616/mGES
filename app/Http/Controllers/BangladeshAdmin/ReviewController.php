<?php

namespace App\Http\Controllers\BangladeshAdmin;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    //
    public function index()
    {
        $agency = User::where('user_type','bangladesh-recruiting-agency')->latest()->get();
        return view('BangladeshAdmin.review.index', compact('agency'));
    }

}
