<?php

namespace App\Http\Controllers\OneStopService;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class EWalletController extends Controller
{
    //
    public function index(){
        return view('OneStopService.eWallet.index');
      }

      public function wallet_card(){
        return view('OneStopService.eWallet.wallet_card');
      }
}
