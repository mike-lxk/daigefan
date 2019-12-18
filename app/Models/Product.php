<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    # 白名单
    // protected $fillable = ['允许添加的字段名'];
    # 黑名单
    protected $guarded = [];

    public $timestamps = false;

    // 获取在售商品数量
    public function saleNum($shop_id){
        return $this->where([['shop_id','=',$shop_id],['status','=',1]])->count();
    }

    // 获取商品分类
    public function product_classify()
    {
        return $this->belongsTo(ProductClassify::class,'product_classify_id','id');
    }



}
