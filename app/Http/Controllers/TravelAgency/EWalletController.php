<?php

namespace App\Http\Controllers\TravelAgency;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class EWalletController extends Controller
{
    //
    public function index(){
        return view('TravelAgency.eWallet.index');
    }

      public function wallet_card(){
        return view('TravelAgency.eWallet.wallet_card');
    }
}
