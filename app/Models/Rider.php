<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Rider extends Model
{
    # 白名单
    // protected $fillable = ['允许添加的字段名'];
    # 黑名单
    protected $guarded = [];

    public $timestamps = false;

    public function school()
    {
        return $this->belongsTo(School::class);

    }


}
