<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ShopWithdraw extends Model
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

    // 获取本月销售额
    public function mouthMoney($shop_id)
    {
        //收入
        $total_money = $this->where([['shop_id','=',$shop_id],['type','=',1]])->whereBetween('add_time',[$this->currentMouthStart,$this->currentMouthEnd])->sum('money');
        //退款支出
        $total_refund_money = $this->where([['shop_id','=',$shop_id],['type','=',6]])->whereBetween('add_time',[$this->currentMouthStart,$this->currentMouthEnd])->sum('money');
        $data = $total_money - $total_refund_money;

        return sprintf("%.2f",$data);
    }

    // 获取总销售额
    public function totalMoney($shop_id)
    {
        //收入
        $total_money = $this->where([['shop_id','=',$shop_id],['type','=',1]])->sum('money');
        //退款支出
        $total_refund_money = $this->where([['shop_id','=',$shop_id],['type','=',6]])->sum('money');
        $data = $total_money - $total_refund_money;
        
        return sprintf("%.2f",$data);
    }


    // 获取可结算金额
    public function canSettlementMoney($shop_id,$withdraw_cycle)
    {
        return null;
    }


    // 获取待结算金额
    public function waitSettlementMoney($shop_id,$withdraw_cycle)
    {
        return null;
    }

}
