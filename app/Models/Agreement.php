<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Agreement extends Model
{
    # 白名单
    // protected $fillable = ['允许添加的字段名'];
    # 黑名单
    protected $guarded = [];

    public $timestamps = false;

    public function getPlatfromAttribute($value)
    {
        $status = ['1' => '用户端','2' => '商家端','3' => '骑手端',];
        return $status[$value];
    }

    public function getSaveTimeAttribute($value)
    {
        return date('Y-m-d H:i', $value);
    }

}
