<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    # 白名单
    // protected $fillable = ['允许添加的字段名'];
    # 黑名单
    protected $guarded = [];

    public $timestamps = false;

    public function manager()
    {
        return $this->hasMany(Manager::class,'role_id','id');
    }
}
