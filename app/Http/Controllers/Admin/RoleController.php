<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\RoleRequest;
use App\Models\Manager;
use App\Models\Menu;
use App\Models\Role;

class RoleController extends Controller
{
    /**
     * 列表 
     * 
     */
    public function index(Request $request)
    {
        // 搜索条件
        $list = Role::with('manager')->get();
        return view('admin.role.index',compact('list'));
    }


    /**
     * 新增 
     * 
     */
    public function create()
    {
        $list = Menu::where('status',1)->get();  
        return view('admin.role.add',compact('list'));
    }


    /**
     * 保存新增 
     * 
     */
    public function insert(RoleRequest $request)
    {
        $data = $request->post();
        $res = Role::create($data);
        if (!$res) {
            show_msg(201,'添加失败');
        }
        show_msg(200,'添加成功');
    }


    /**
     * 展示编辑 
     * 
     */
    public function edit($id)
    {
        $list = Menu::where('status',1)->select('id','fid','name','level')->get();  
        $info = Role::select('id','name','depict','node_ids')->find($id);
        return view('admin.role.edit',compact('list','info'));
    }


    /**
     * 保存编辑
     * 
     */
    public function update(RoleRequest $request,$id)
    {
        $data = $request->post();
        unset($data['_token']);
        $res = Role::where('id',$id)->update($data);
        if (!$res) {
            show_msg(201,'更新失败');
        }
        show_msg(200,'更新成功');
    }


    /**
     * 删除 
     * 
     */
    public function del($id)
    {
        $count = Manager::where('role_id',$id)->count();
        if ($count) {
            show_msg(204,'该角色下存在管理员，不可删除');
        }
        $res =  Role::where('id',$id)->delete();
        if (!$res) {
            show_msg(201,'删除失败');
        }
        show_msg(200,'删除成功');
    }
     
}
