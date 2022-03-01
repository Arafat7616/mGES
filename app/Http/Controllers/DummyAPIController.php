<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DummyAPIController extends Controller
{
    public function index(Request $request){
        try {
            send_sms($request->body, $request->to);
            return response()->json([
                'type' => 'success',
                'message' => 'Successfully sent sms'
            ]);
        }catch (\Exception $exception){
            return response()->json([
                'type' => 'error',
                'message' => $exception->getMessage()
            ]);
        }
    }
}
