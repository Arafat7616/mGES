<?php

namespace App\Http\Controllers\BangladeshRecruitingAgency;

use App\Http\Controllers\Controller;
use App\Notification;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Auth;
use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Support\Facades\Session;

use App\User;

class BangladeshRecruitingAgencyDashboardController extends Controller
{
    public function dashboard()
    {
        $user = User::find(Auth::user()->id);
        if ($user->active_status == "New" || $user->active_status == 'Pending' || $user->active_status == 'Rejected') {
            return view('BangladeshRecruitingAgency.pending-profile', compact('user'));
        }
        return view('BangladeshRecruitingAgency.welcome');
    }

    public function companyPrfileView()
    {
        $user = User::find(Auth::user()->id);
        return view('BangladeshRecruitingAgency.profile', compact('user'));
    }

    public function editProfile()
    {
        $user = Auth::user();
        return view('BangladeshRecruitingAgency.profile-edit', compact('user'));
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

    public function companyPrfileSubmit(Request $request)
    {
        $request->validate([
            'document1' => 'mimes:pdf',
            'document2' => 'mimes:pdf',
            'logo'      => 'image',
        ]);

        $user = User::find(Auth::user()->id);

        $user->company_name    =   $request->companyName;
        $user->active_status    = "Pending";
        $user->abbr            =   $request->abbreviation;
        $user->company_register_number    =   $request->companyRegisterNumber;
        $user->domain       =   $request->domain;
        $user->phone        =   $request->phoneNumber;
        $user->city    =   $request->city;
        $user->state    =   $request->state;
        $user->address1    =   $request->address1;
        $user->address2    =   $request->address2;

        if ($request->hasFile('logo')) {
            $image             = $request->file('logo');
            $folder_path       = 'uploads/profile/';
            $image_new_name    = Str::random(20) . '-' . now()->timestamp . '.' . $image->getClientOriginalExtension();
            //resize and save to server
            Image::make($image->getRealPath())->save($folder_path . $image_new_name);
            $user->logo   = $folder_path . $image_new_name;
        }
        if ($request->hasFile('document1')) {
            $pdf             = $request->file('document1');
            $folder_path       = 'uploads/profile/';
            $pdf_new_name    = Str::random(20) . '-' . now()->timestamp . '.' . $pdf->getClientOriginalExtension();
            // save to server
            $request->document1->move(public_path($folder_path), $pdf_new_name);
            $user->document1   = $folder_path . $pdf_new_name;
        }
        if ($request->hasFile('document2')) {
            $pdf             = $request->file('document2');
            $folder_path       = 'uploads/profile/';
            $pdf_new_name    = Str::random(20) . '-' . now()->timestamp . '.' . $pdf->getClientOriginalExtension();
            // save to server
            $request->document2->move(public_path($folder_path), $pdf_new_name);
            $user->document2   = $folder_path . $pdf_new_name;
        }

        try {
            $user->save();
            return back()->withToastSuccess('Successfully saved.');
        } catch (\Exception $exception) {
            return back()->withErrors('Something going wrong. ' . $exception->getMessage());
        }
    }

    public function notification()
    {
        $notifications = Notification::where('notification_for', 'bangladesh-recruiting-agency')->get();

        // return "hello";

        return view('BangladeshRecruitingAgency.include.notificationBody', compact('notifications'));
    }
}
