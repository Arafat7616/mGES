<?php

namespace App\Http\Controllers\BangladeshRecruitingAgency;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class EWalletController extends Controller
{
    //
    public function index(){
        return view('BangladeshRecruitingAgency.eWallet.index');
      }

      public function wallet_card(){
        return view('BangladeshRecruitingAgency.eWallet.wallet_card');
      }
}
