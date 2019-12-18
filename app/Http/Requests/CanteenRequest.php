<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CanteenRequest extends BaseRequest
{
    public function rules() {
        return [
            // 表单的字段名  =>  规则名 多个规则用 | 隔开
            'school_id' => 'required|numeric',
            'name' => 'required',
            'account' => 'required',
            'cleartext' => 'required',
            'withdraw_cycle' => 'required',

        ];
    }
    // 错误提示信息
    public function messages() {
        return [
            // 表单字段名.规则名  => 你想输出的话
            'school_id.required' => '学校要选呀',
            'school_id.numeric' => '学校类型不对呀',
            'name.required' => '名称必须要写的啊！',
            'account.required' => '账户要写呀',
            'cleartext.required' => '密码要写呀',
            'withdraw_cycle.required' => '提现模式要选呀',
        ];
    }
}
