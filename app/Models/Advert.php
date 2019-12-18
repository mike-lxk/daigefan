<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Advert extends Model
{
    # 白名单
    // protected $fillable = ['允许添加的字段名'];
    # 黑名单
    protected $guarded = [];

    public $timestamps = false;


    // 追加查询字段【非数据库中字段】
    public $appends = [
        'mb_status',
        'remaining_time',
        'str_start_time',
        'str_end_time'
    ];

    // 针对追加字段进行转换【追加时间戳转换成字符串的字段，保留原状态字段】
    public function getStrStartTimeAttribute()
    {
        return date('Y-m-d', $this->start_time);
    }
     
    // 针对追加字段进行转换【追加时间戳转换成字符串的字段，保留原状态字段】
    public function getStrEndTimeAttribute()
    {
        return date('Y-m-d', $this->end_time);
    }

    // 针对追加字段进行转换【追加状态转换成中文的字段，保留原状态字段】
    public function getMbStatusAttribute()
    {
        $status = ['0' => '未开始','1' => '投放中','2' => '暂停投放','3' => '已过期'];
        return $status[$this->status];
    }

    // 针对追加字段进行转换【追加剩余天数字段】
    public function getRemainingTimeAttribute()
    {
        $remaining_time = ceil(($this->end_time - time()) / 86400);
        return $remaining_time > 0 ? $remaining_time : 0;
    }

    // 广告位
    public function advert_position()
    {
        return $this->belongsTo(AdvertPosition::class);
    }

    // 学校
    public function school()
    {
        return $this->belongsTo(School::class,'coverage');
    }


    // 修改开始时间戳
    public function setStartTimeAttribute($value)
    {
        $this->attributes['start_time'] = strtotime($value);
    }

    // 修改结束时间戳
    public function setEndTimeAttribute($value)
    {
        $this->attributes['end_time'] = strtotime($value);

    }
    

     
    
}
