<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BaseRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }


    /**
     * 表单验证报错时，执行的方法
     */
    public function failedValidation( \Illuminate\Contracts\Validation\Validator $validator ) {
        // 此处为返回前端的信息，仅举例用，暂未封装公共返回数据的接口
        exit(json_encode(array(
            'code' => 205,
            # 返回全部报错信息
            //'msg' => $validator->getMessageBag()
            # 返回遇到的第一个报错信息
            'msg' => $validator->getMessageBag()->first(),
            'time' => time()
        )));
    }
}
