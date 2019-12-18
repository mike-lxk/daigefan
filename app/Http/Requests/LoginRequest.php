<?php

namespace App\Http\Requests;


/**
 * 登录验证
 */
class LoginRequest extends BaseRequest
{
    public function rules() {
        return [
            // 表单的字段名  =>  规则名 多个规则用 | 隔开
            'username' => 'required|between:2,6',
            'password' => 'required',
            // 'code' => 'required|captcha'
        ];
    }
    // 错误提示信息
    public function messages() {
        return [
            // 表单字段名.规则名  => 你想输出的话
            'username.required' => '用户名必须要写的啊！',
            'username.between' => '账号在2到6个字之间',
            'password.required' => '密码必须填写',
            // 'code.required' => '验证必须填写',
            // 'code.captcha' => '验证码不正确'
        ];
    }
}
