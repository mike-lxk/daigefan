<?php

namespace App\Http\Middleware;

use Closure;

/**
 * 后台登录中间件
 */
class CheckLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // 当前请求的路由别名
        $currentRouteName = $request->route()->getName();
        if ($currentRouteName != 'admin.login') {
            if(!session()->has('admin.manager')) {
                // 清空session
                session()->flush();
                // 跳转登录页面
                return redirect(route('admin.login'))->with('msg_tips','请重新登录');
            }
        }
        return $next($request);
    }
}
