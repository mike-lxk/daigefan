<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MerchantIntention extends Model
{
    # 白名单
    // protected $fillable = ['允许添加的字段名'];
    # 黑名单
    protected $guarded = [];

    public $timestamps = false;
}
