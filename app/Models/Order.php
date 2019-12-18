<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    # 白名单
    // protected $fillable = ['允许添加的字段名'];
    # 黑名单
    protected $guarded = [];

    public $timestamps = false;

    // 本月开始时间
    public $currentMouthStart;
    // 本月结束时间
    public $currentMouthEnd;

    public function __construct()
    {
        $this->currentMouthStart = mktime(0,0,0,date('m'),1,date('Y'));   
        $this->currentMouthEnd = mktime(23,59,59,date('m'),date('t'),date('Y'));  
    }

    // 获取总订单量
    public function totalOrderNum($shop_id){
        return $this->where('shop_id',$shop_id)->whereNotIn('status',[1,4,9])->count();
    }

    // 获取当月订单量
    public function mouthOrderNum($shop_id){
        return $this->where('shop_id',$shop_id)->whereNotIn('status',[1,4,9])->whereBetween('add_time',[$this->currentMouthStart,$this->currentMouthEnd])->count();
    }

    // 获取当天订单量
    public function dayOrderNum($shop_id){
        return $this->where('shop_id',$shop_id)->whereNotIn('status',[1,4,9])->whereBetween('add_time',[strtotime(date('Y-m-d 00:00:00')),strtotime(date('Y-m-d 23:59:59'))])->count();
    }
}
