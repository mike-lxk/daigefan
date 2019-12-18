<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Shop extends Model
{
    # 白名单
    // protected $fillable = ['允许添加的字段名'];
    # 黑名单
    protected $guarded = [];

    public $timestamps = false;

    // 追加查询字段【非数据库中字段】
    public $appends = [
        'str_add_time'
    ];

    public function getStrAddTimeAttribute()
    {
        return date('Y-m-d H:i', $this->add_time);
    }

    // 获取所属学校
    public function school()
    {
        # 我属于一个主表模型，名为School（主表），通过我的外键值名，关联主表的主键值名
        return $this->belongsTo(School::class,'school_id','id');
        
        # 这里我们可以只要简写为：
        # return $this->belongsTo(School::class);
        # 但是是有条件的：
        #   外键值名 在创建表或创建数据迁移的时候，需满足 外键值名 = "模型名" + "_" + "主表的主键值名"
        #   所以这里就要求我们在设计数据表时主键值名以及外键值名要考虑这点

    }


    // 获取商家更多信息
    public function shop_mores()
    {
        return $this->hasOne(ShopMore::class);
    }

    // 获取所属食堂
    public function canteen()
    {
        return $this->belongsTo(Canteen::class);
    }

    // 获取所属经营品类
    public function category()
    {
        return $this->belongsTo(Category::class);
    }


}
