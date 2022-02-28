<?php

namespace App\Http\Controllers\BangladeshAdmin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class EWalletController extends Controller
{
  public function index(){
    return view('BangladeshAdmin.eWallet.index');
  }

  public function wallet_card(){
    return view('BangladeshAdmin.eWallet.wallet_card');
  }
}
