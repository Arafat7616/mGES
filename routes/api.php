<?php

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use  App\Http\Controller\DummyAPIController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function () {
//     return User::all();
// });
// Route::post('dummy-mges-app', 'DummyAPIController@index')->name('dummy.index');
// Route::get('/dummy-mges-app', function () {
//     return "Hello";
// });

Route::post('/dummy_mges_app','DummyAPIController@index');
