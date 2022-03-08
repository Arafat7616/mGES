<?php

namespace App\Http\Controllers\WelfareCentre;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class EWalletController extends Controller
{
    //
    public function index(){
        return view('WelfareCentre.eWallet.index');
      }

      public function wallet_card(){
        return view('WelfareCentre.eWallet.wallet_card');
      }
}
