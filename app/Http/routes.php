<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/


/* Route::get('/', 'HomeController@index');*/

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]); 
Route::get('/', 'Home\IndexController@index');
// 前端路由集合
Route::group(['namespace' => 'Home'], function()
{
    Route::get('/', 'IndexController@index');
    Route::get('index/lists', 'IndexController@lists');
    Route::get('index/men', 'IndexController@men');
    Route::get('index/women', 'IndexController@women');
    Route::get('index/single', 'IndexController@single');
    Route::match(['get','post'], 'index/test', 'IndexController@test');
    Route::resource('index', 'IndexController');
});

Route::group(['prefix' => 'admin', 'namespace' => 'Admin', 'middleware' => 'auth'], function()
{
    Route::get('/', 'AdminHomeController@index');
    Route::resource('pages', 'PagesController');
});
