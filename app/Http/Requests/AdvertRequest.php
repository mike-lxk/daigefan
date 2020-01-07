<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdvertRequest extends BaseRequest
{
    public function rules() {
        return [
            // 表单的字段名  =>  规则名 多个规则用 | 隔开
            'advert_position_id' => 'required',
            'title' => 'required',
            'coverage' => 'required',
            'type' => 'required',
            'start_time' => 'required',
            'end_time' => 'required',
            'imgurl' => 'required|mimes:jpeg,bmp,png,gif|dimensions:min_width=200,min_height=100',  // 限制图片的格式以及分辨率
            'sort' => 'required'
        ];
    }
    // 错误提示信息
    public function messages() {
        return [
            // 表单字段名.规则名  => 你想输出的话
            'advert_position_id.required' => '请选择广告位',
            'title.required' => '请填写广告名',
            'coverage.required' => '请选择覆盖范围',
            'type.required' => '请选择广告指向',
            'start_time.required' => '请选择开始时间',
            'end_time.required' => '请选择结束时间',
            'imgurl.required' => '请选择广告图',
            'imgurl.mimes' =>'头像必须是 jpeg, bmp, png, gif 格式的图片',
            'imgurl.dimensions' => '图片的清晰度不够，宽需要 200px 以上,高需要 100px 以上',
            'sort.required' => '请填写排序'
        ];
    }
}
