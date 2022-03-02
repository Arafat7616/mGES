<?php

namespace App\Http\Controllers;

use App\JobPost;
use Illuminate\Http\Request;

class DemandLetterController extends Controller
{
    public function demandLetter($id)
    {
        $post = JobPost::findOrFail($id);
        return view('qrcode_result', compact('post'));
    }
}
