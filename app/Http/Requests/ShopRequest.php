<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ShopRequest extends BaseRequest
{
    public function rules() {
        return [
            // 表单的字段名  =>  规则名 多个规则用 | 隔开
            'sort'    => 'required|numeric',
            'withdraw_cycle'    => 'required',
        ];
    }

    // 错误提示信息
    public function messages() {
        return [
            // 表单字段名.规则名  => 你想输出的话
            'sort.required'     => '商家排名不能为空',
            'sort.numeric'     => '商家排名格式不正确',
            'withdraw_cycle.required'      => '提现模式必选',
        ];
    }
}
