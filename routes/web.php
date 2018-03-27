<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('Auth/login');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::post('registro', 'Auth\LoginController@registro')->name('registro');
Route::post('logado', 'Auth\LoginController@logado')->name('logado');
Route::get('/reset', 'Auth\LoginController@reset')->name('reset');
Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
Route::post('reset', 'Auth\LoginController@resetsenha')->name('resetsenha');




