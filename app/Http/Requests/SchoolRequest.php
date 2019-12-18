<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SchoolRequest extends BaseRequest
{
    public function rules() {
        return [
            // 表单的字段名  =>  规则名 多个规则用 | 隔开
            'name' => 'required|unique:schools',
            'fid' => 'required',
            'longitude' => 'required',
            'latitude'  => 'required',
            'completion_time'  => 'required|numeric',
            'fetch_time'  => 'required|numeric',

        ];
    }
    // 错误提示信息
    public function messages() {
        return [
            // 表单字段名.规则名  => 你想输出的话
            'name.required' => '学校名必须要写的啊！',
            'name.unique' => '学校名已经存在啦',
            'fid.required' => '请选择学区',
            'longitude.required' => '请填写经度',
            'latitude.required' => '请填写纬度',
            'completion_time.required' => '请填写订单预估送达时间',
            'completion_time.numeric' => '订单预估送达时间必须为整数',
            'fetch_time.required' => '请填写骑手取餐时间',
            'fetch_time.numeric' => '骑手取餐时间必须为整数',
        ];
    }
}
