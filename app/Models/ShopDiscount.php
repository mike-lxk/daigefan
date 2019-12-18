<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
// use Illuminate\Database\Eloquent\SoftDeletes;

class ShopDiscount extends Model
{
    # 白名单
    // protected $fillable = ['允许添加的字段名'];
    # 黑名单
    protected $guarded = [];

    public $timestamps = false;

    // # 引入软删除
    // use SoftDeletes;
    // // 软删除的表现字段
    // protected $dates = ['deleted_at'];

}
