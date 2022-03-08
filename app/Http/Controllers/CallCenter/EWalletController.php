<?php

namespace App\Http\Controllers\CallCenter;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class EWalletController extends Controller
{
    //
    public function index(){
        return view('CallCenter.eWallet.index');
      }

      public function wallet_card(){
        return view('CallCenter.eWallet.wallet_card');
      }
}
