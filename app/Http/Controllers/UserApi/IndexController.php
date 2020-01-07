<?php

namespace App\Http\Controllers\UserApi;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use EasyWeChat\Factory;

class IndexController extends Controller
{

    /**
     * 首页【当前学校 + 轮播 + 分类】
     *
     * @return void
     */
    public function index()
    {
        $config = config('wechat.mini_program.default');
        $wechat = Factory::miniProgram($config);
    }


    /**
     * 今日特价
     *
     * @return void
     */
    public function todaySale()
    {
        echo 1;die;
    }


    /**
     * 首页专属推荐
     *
     * @return void
     */
    public function privilege()
    {
        echo 1;die;
    }


    /**
     * 专属推荐列表页
     *
     * @return void
     */
    public function privilegeList()
    {
        echo 1;die;
    }


    /**
     * 推荐商家
     *
     * @return void
     */
    public function recommendShop()
    {
        echo 1;die;
    }


    


    
}
