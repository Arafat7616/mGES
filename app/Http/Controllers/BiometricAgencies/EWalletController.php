<?php

namespace App\Http\Controllers\BiometricAgencies;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class EWalletController extends Controller
{
    //
    public function index(){
        return view('BiometricAgencies.eWallet.index');
      }

      public function wallet_card(){
        return view('BiometricAgencies.eWallet.wallet_card');
      }
}
