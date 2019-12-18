<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RoleRequest extends BaseRequest
{
    public function rules() {
        return [
            // 表单的字段名  =>  规则名 多个规则用 | 隔开
            'name' => 'required|between:2,10|unique:roles',
            'node_ids' => 'required',

        ];
    }
    // 错误提示信息
    public function messages() {
        return [
            // 表单字段名.规则名  => 你想输出的话
            'name.required' => '角色名名必须要写的啊！',
            'name.between' => '角色名在2到10个字之间',
            'name.unique' => '角色名已经存在啦',
            'node_ids.required' => '请选择网站菜单',
        ];
    }
}
