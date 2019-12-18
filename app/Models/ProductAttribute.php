<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductAttribute extends Model
{
    # 白名单
    // protected $fillable = ['允许添加的字段名'];
    # 黑名单
    protected $guarded = [];

    public $timestamps = false;

    // 获取一级属性集合
    public function attribute($attribute)
    {
        if (!$attribute) return [];
        $attributeArr = explode(',',$attribute);
        return $this->whereIn('id',$attributeArr)->pluck('name');
    }
}
