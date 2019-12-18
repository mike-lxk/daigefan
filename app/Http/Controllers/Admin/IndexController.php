<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Manager;
use App\Models\Menu;
use App\Models\Role;

class IndexController extends Controller
{
    /**
     * 后台首页 
     * 
     */
    public function index()
    {
        // 获取权限
        $role_info = Role::where('id','=',session('admin.manager.role_id'))->first();
        session(['admin.role'=>$role_info]);
        // 获取当前角色的所有权限信息
        $node_list_nosort = Menu::whereIn('id',explode(',',$role_info['node_ids']))->orderBy('sort')->get();
        $node_list = get_node($node_list_nosort);

        return view('admin.index',compact('role_info','node_list'));
    }


    /**
     * 欢迎 
     * 
     */
    public function welcome()
    {
        return view('admin.welcome');
    }
     
     
}
