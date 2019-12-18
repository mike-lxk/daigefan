<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CategoryRequest extends   BaseRequest
{
    public function rules() {
        return [
            // 表单的字段名  =>  规则名 多个规则用 | 隔开
            'name' => 'required',
            'sort' => 'required|numeric',
            'img' => 'required',

        ];
    }
    // 错误提示信息
    public function messages() {
        return [
            // 表单字段名.规则名  => 你想输出的话
            'name.required' => '名称必须要写的啊！',
            'sort.required' => '排序要写呀',
            'sort.numeric' => '排序要数值型',
            'img.required' => '图标要上传呀',
        ];
    }
}
