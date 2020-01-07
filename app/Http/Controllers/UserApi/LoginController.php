<?php

namespace App\Http\Controllers\UserApi;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use EasyWeChat\Factory;

class LoginController extends Controller
{
    /**
     * 获取openid信息
     *
     * @return void
     */
    public function getAuth(Request $request)
    {
        $code = $request->param('code');
        $config = config('wechat.mini_program.default');
        $wechat = Factory::miniProgram($config);
        $result = $wechat->auth->session($code);
 
        if (isset($result['errcode'])) { // 获取失败
            show_msg($result['errcode'],$result['errmsg']);
        }
        show_msg(200,'获取 openid 成功',$result);
    }


    /**
     * 基本信息授权-保存入库
     *
     * @return void
     */
    public function insert()
    {
        echo 1;die;
    }


    /**
     * 快捷登录
     *
     * @return void
     */
    public function celerityLogin()
    {
        echo 1;die;
    }


    /**
     * 手机号登录
     *
     * @return void
     */
    public function login()
    {
        echo 1;die;
    }


    /**
     * 获取手机号验证码
     *
     * @return void
     */
    public function getCode()
    {
        echo 1;die;
    }
}
