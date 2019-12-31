<?php

namespace App\Models;

use Hash;
use Illuminate\Database\Eloquent\Model;

class Manager extends Model
{
    
    # 白名单
    // protected $fillable = ['允许添加的字段名'];
    # 黑名单
    protected $guarded = ['_token','password_confirmation'];

    public $timestamps = false;


    /**
     * 管理员登录
     * @param array $data
     * @return bool
     */
    public function login(array $data) 
    {
        // 根据用户名来查询用户是否存在
        $info = self::where('username', $data['username'])->first();
        // 此用户不存在
        if (!$info) {
            return false;
        }
        // 密码不正确
        if (!Hash::check($data['password'], $info->password)) {
            return false;
        }

        // 写入session
        session(['admin.manager' => $info]);
        return true;
    }


    // 最进一次登录时间 获取器        get+字段名+Attribute($value)
    public function getLastLoginTimeAttribute($value) 
    {
        return date('Y年m月d日 H时i分', $value);
    }

    // 创建时间 获取器       get+字段名+Attribute($value)
    public function getCreateTimeAttribute($value) 
    {
        return date('Y-m-d H:i', $value);
    }

    public function role()
    {
        return $this->belongsTo(Role::class);

    }

    // 修改器 - 修改密码
    public function setPasswordAttribute($value)
    {
        $this->attributes['password'] = bcrypt($value);
    }
    
     
}
