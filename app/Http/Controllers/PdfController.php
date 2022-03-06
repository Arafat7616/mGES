<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade as PDF;

class PdfController extends Controller
{
    // function print()
    // {

    //     $pdf = PDF::loadView('print_pdf');

    //     return $pdf->stream('cv.pdf');

    // }

    function print()
    {

        return view('print_pdf');

    }
}
