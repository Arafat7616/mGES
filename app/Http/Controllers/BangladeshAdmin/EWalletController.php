<?php

namespace App\Http\Controllers\BangladeshAdmin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class EWalletController extends Controller
{
  public function index(){
    return view('BangladeshAdmin.eWallet.index');
  }
}
