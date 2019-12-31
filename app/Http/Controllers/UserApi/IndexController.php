<?php

namespace App\Http\Controllers\UserApi;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use EasyWeChat\Factory;

class IndexController extends Controller
{
    public function index()
    {
        echo 1;die;
        // $config = app('wechat.mini_program');
        // dd($config);
        // die;
        // $wechat = Factory::miniProgram($config);
    }
}
