<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class School extends Model
{
    # 白名单
    // protected $fillable = ['允许添加的字段名'];
    # 黑名单
    protected $guarded = [];

    public $timestamps = false;

    // 食堂
    public function canteens()
    {
        # 我有一个从表模型， 叫做Canteen，通过从表的外键值名 跟我的主键值名相连
        return $this->hasMany(Canteen::class,'school_id','id');

        # 这里我们可以只要简写为：
        # return $this->hasMany(Canteen::class);
        # 但是是有条件的：
        #   外键值名 在创建表或创建数据迁移的时候，需满足 外键值名 = "模型名" + "_" + "主表的主键值名"
        #   所以这里就要求我们在设计数据表时主键值名以及外键值名要考虑这点
    }


    

     
}
