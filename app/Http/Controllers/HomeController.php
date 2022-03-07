<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function changePassword(Request $request)
    {
        $this->validate($request, [
            'password' => 'min:5|required_with:confirmPassword|same:confirmPassword',
            'confirmPassword' => 'min:5'
        ]);

        $hashedPassword = Auth::user()->password;
        if (Hash::check($request->oldPassword, $hashedPassword)) {
            if (!Hash::check($request->password, $hashedPassword)) {
                $users = User::find(Auth::user()->id);
                $users->password = bcrypt($request->password);
                User::where('id', Auth::user()->id)->update(array('password' =>  $users->password));
                session()->flash('success', 'Password updated successfully!');
                return back();
            } else {
                return redirect()->back()->withErrors('New password can not be the old password!');
            }
        } else {
            return redirect()->back()->withErrors('Old password doesn\'t matched !');
        }
    }
}
