<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RiderIncomeExpend extends Model
{
    # 白名单
    // protected $fillable = ['允许添加的字段名'];
    # 黑名单
    protected $guarded = [];

    public $timestamps = false;


    // 骑手配送单量统计
    public function statisticsOrderNum($riderId)
    {
        return $this->where([['rider_id','=',$riderId],['type','=',1]])->count();
    }

    // 骑手配送费总计收入统计
    public function statisticsDispatchingSum($riderId)
    {
        return $this->where([['rider_id','=',$riderId],['type','=',1]])->sum('current_money');
    }
}
