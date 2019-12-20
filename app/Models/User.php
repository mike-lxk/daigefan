<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class User extends Model
{
    # 白名单
    // protected $fillable = ['允许添加的字段名'];
    # 黑名单
    protected $guarded = [];

    public $timestamps = false;
    
    // 设置软删
    use SoftDeletes;
    protected $dates = ['deleted_at'];

}
