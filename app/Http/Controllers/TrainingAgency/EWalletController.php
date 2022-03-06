<?php

namespace App\Http\Controllers\TrainingAgency;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class EWalletController extends Controller
{
    //
    public function index(){
        return view('TrainingAgency.eWallet.index');
    }

      public function wallet_card(){
        return view('TrainingAgency.eWallet.wallet_card');
    }

}
