<?php

namespace App\Http\Controllers;

use App\Review;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class RatingController extends Controller
{
    public function index()
    {
        return view('Others.Rating');
    }

    public function submit(Request $req, $id)
    {
        $review = new Review();

        $review->receiver_id = $id;
        $review->provider_id = Auth::user()->id;
        $review->ratings = $req->input('rating');

        try {
            $review->save();
            Session::flash('success', 'Success !');
            return redirect()->back();
        } catch (\Exception $exception) {
            Session::flash('danger', $exception->getMessage());
            return redirect()->back();
        }

    }

    public function modal($id)
    {
        return view('Others.review_popup')->with('receiver_id', $id);
    }
}
