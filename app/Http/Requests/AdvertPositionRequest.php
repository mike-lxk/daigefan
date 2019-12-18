<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdvertPositionRequest extends BaseRequest
{
    public function rules() {
        return [
            // 表单的字段名  =>  规则名 多个规则用 | 隔开
            'name' => 'required',
            'white' => 'required|numeric',
            'height' => 'required|numeric',
            'num' => 'required|numeric',

        ];
    }
    // 错误提示信息
    public function messages() {
        return [
            // 表单字段名.规则名  => 你想输出的话
            'name.required' => '广告位名必填',
            'white.required' => '宽度必填',
            'white.numeric' => '宽度为整数',
            'height.required' => '高度必填',
            'height.numeric' => '高度为整数',
            'num.required' => '数量必填',
            'num.numeric' => '数量为整数',
        ];
    }
}
