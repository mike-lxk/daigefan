<?php

use Illuminate\Http\Request;

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });


Route::group(['prefix' => 'client', 'namespace' => 'UserApi'], function () {

    # 首页
    Route::group(['prefix' => 'index'], function () {
        Route::get('index','IndexController@index')->name('client.index.index');  // 当前学校 + 轮播 + 主分类
        Route::get('today-sale','IndexController@todaySale')->name('client.index.today-sale'); // 今日特价
        Route::get('privilege','IndexController@privilege')->name('client.index.privilege'); // 首页专属推荐
        Route::get('privilege-list','IndexController@privilegeList')->name('client.index.privilege-list'); // 专属推荐列表页
        Route::get('recommend-shop','IndexController@recommendShop')->name('client.index.recommend-shop'); // 推荐商家
    });


    # 登录注册授权组
    Route::group(['prefix' => 'login'], function () {
        Route::get('get-auth','LoginController@getAuth')->name('client.login.get-auth');  // 获取openid信息
        Route::post('insert','LoginController@insert')->name('client.login.today-sale'); // 基本信息授权-保存入库
        Route::post('celerity-login','LoginController@celerityLogin')->name('client.login.celerity-login'); // 快捷登录
        Route::post('login','LoginController@login')->name('client.login.login'); // 手机号登录
        Route::get('get-code','LoginController@getCode')->name('client.login.get-code');  // 获取手机号验证码
    });

    # 用户中心
    Route::group(['prefix' => 'user'], function () {
        Route::get('userinfo','UserController@userInfo')->name('client.user.userinfo');  // 用户信息
    });


    # 搜索
    Route::group(['prefix' => 'search'], function () {
        Route::get('index','SearchController@index')->name('client.search.index');  // 搜索页面
        Route::get('search-index','SearchController@searchIndex')->name('client.search.search-index');  // 搜索页面
    });

});


