<?php

namespace App\Http\Controllers\MedicalAgency;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class EWalletController extends Controller
{
    //
    public function index(){
        return view('MedicalAgency.eWallet.index');
      }

      public function wallet_card(){
        return view('MedicalAgency.eWallet.wallet_card');
      }
}
