<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ManagerRequest extends BaseRequest
{
    public function rules() {
        return [
            // 表单的字段名  =>  规则名 多个规则用 | 隔开
            'username' => 'required|between:2,6|unique:managers',
            'password' => 'required|between:6,12|confirmed',
            'role_id' => 'required',

        ];
    }
    // 错误提示信息
    public function messages() {
        return [
            // 表单字段名.规则名  => 你想输出的话
            'username.required' => '用户名必须要写的啊！',
            'username.between' => '账号在2到6个字之间',
            'password.required' => '密码必须填写',
            'password.between' => '密码在6到12个字之间',
            'password.confirmed' => '两次密码输入不正确',
            'role_id.required' => '请选择角色',
        ];
    }
}
