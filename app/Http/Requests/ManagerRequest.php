<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ManagerRequest extends BaseRequest
{
    public function rules() {
        /**
         * 这里要讲一下
         * $this->route('id) ，为什么会写这个值呢，是因为我们走的路由决定的，
         * Route::post('manager/update/{id}', 'ManagerController@update')->name('admin.manager.update')
         * 路由中的参数 {id} 即为 $this->route('id); 至于为什么，我还要再研究
         */
        return [
            // 表单的字段名  =>  规则名 多个规则用 | 隔开
            'username' => 'required|between:2,6|unique:managers,username,'.$this->route('id'),
            'password' => 'required|between:6,12|confirmed',
            'role_id' => 'required',

            /**
             * 关于 数据表唯一索引的验证 unique
             * 格式 ： unique:table,column,except,idColumn 
             * 参数分析：   
             * table:要验证的数据表，、
             * column：要验证的列(一般和字段名一样),
             * except: 排除的字段，
             * idColumn:排除的id字段（一般为id，如果是自定义的，需要写自定义的）
             * 在指定的数据表中，验证字段必须是唯一的。如果没有指定 column，将会使用字段本身的名称。
             */

        ];
    }
    // 错误提示信息
    public function messages() {
        return [
            // 表单字段名.规则名  => 你想输出的话
            'username.required' => '用户名必须要写的啊！',
            'username.between' => '账号在2到6个字之间',
            'password.required' => '密码必须填写',
            'password.between' => '密码在6到12个字之间',
            'password.confirmed' => '两次密码输入不正确',
            'role_id.required' => '请选择角色',
        ];
    }
}
