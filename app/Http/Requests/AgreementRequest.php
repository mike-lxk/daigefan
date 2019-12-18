<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AgreementRequest extends BaseRequest
{
    public function rules() {
        return [
            // 表单的字段名  =>  规则名 多个规则用 | 隔开
            'title' => 'required|between:2,10',
            'platfrom' => 'required',
            'content' => 'required'
        ];
    }
    // 错误提示信息
    public function messages() {
        return [
            // 表单字段名.规则名  => 你想输出的话
            'title.required' => '标题必须要写的啊！',
            'title.between' => '标题在2到10个字之间',
            'platfrom.required' => '所属平台必须选择',
            'content.required' => '内容必须填写',
        ];
    }
}
