<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ShopDiscountRequest extends BaseRequest
{
    public function rules() {
        return [
            // 表单的字段名  =>  规则名 多个规则用 | 隔开
            'shop_id'    => 'required|numeric',
            'threshold'          => 'required|numeric',
            'face_value'      => 'required|numeric',
            'platform_assume'    => 'numeric',
        ];
    }

    // 错误提示信息
    public function messages() {
        return [
            // 表单字段名.规则名  => 你想输出的话
            'shop_id.required'     => '店铺主键值不能为空',
            'shop_id.numeric'     => '店铺主键值格式不正确',
            'face_value.required'     => '满减金额不能为空',
            'face_value.numeric'     => '满减金额格式不正确',
            'threshold.required'      => '满减门槛不能为空',
            'threshold.numeric'      => '满减门槛格式不正确',
            'platform_assume.numeric' => '平台承担格式不正确',
        ];
    }
}
