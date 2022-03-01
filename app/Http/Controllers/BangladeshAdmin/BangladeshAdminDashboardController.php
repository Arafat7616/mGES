<?php

namespace App\Http\Controllers\BangladeshAdmin;

use App\Http\Controllers\Controller;
use App\Notification;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;
use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Support\Facades\Session;


class BangladeshAdminDashboardController extends Controller
{
    public function dashboard()
    {

        return view('BangladeshAdmin.welcome');
    }

    public function companyPrfileView()
    {
        $user = User::find(Auth::user()->id);
        return view('BangladeshAdmin.profile', compact('user'));
    }

    public function editProfile()
    {
        $user = Auth::user();
        return view('BangladeshAdmin.profile-edit', compact('user'));
    }

    public function updateProfile(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'logo' => 'nullable|image',
        ]);
        $user = Auth::user();

        $user->name = $request->name;
        if ($request->hasFile('logo')) {
            if ($user->image != null)
                File::delete(public_path($user->image)); //Old image delete
            $image             = $request->file('logo');
            $folder_path       = 'uploads/images/users/';
            $image_new_name    = Str::random(20) . '-' . now()->timestamp . '.' . $image->getClientOriginalExtension();
            //resize and save to server
            Image::make($image->getRealPath())->save($folder_path . $image_new_name);
            $user->logo   = $folder_path . $image_new_name;
        }
        try {
            $user->save();
            // return back()->withSuccess('Updated successfully!');
            Session::flash('success', 'Successfully Updated !!');
            return redirect()->back();
        } catch (\Exception $exception) {
            // return back()->withErrors( 'Something went wrong !'.$exception->getMessage());
            Session::flash('danger', $exception->getMessage());
            return redirect()->back();
        }
    }
}
