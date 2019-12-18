<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class MenuRequest extends BaseRequest
{
    public function rules() {
        return [
            // 表单的字段名  =>  规则名 多个规则用 | 隔开
            'name' => 'required|between:2,10',
            'status' => 'required',

        ];
    }
    // 错误提示信息
    public function messages() {
        return [
            // 表单字段名.规则名  => 你想输出的话
            'name.required' => '菜单名必须要写的啊！',
            'name.between' => '菜单名在2到10个字之间',
            'status.required' => '请选择菜单状态',
        ];
    }
}
