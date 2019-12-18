<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\ManagerRequest;
use App\Models\Manager;
use App\Models\Role;

class ManagerController extends Controller
{
    /**
     * 列表 
     * 
     */
    public function index(Request $request)
    {
        // 搜索条件
        $where = [];
        $ltime = $request->input('ltime');
        $rtime = $request->input('rtime');
        $keywords = $request->input('keywords');
        !empty($keywords) ? $where[] = ['username','like', "%" . $keywords . "%"] : null;
        if (!empty($ltime) && empty($rtime)) {
            $where[] = ['create_time',">=", strtotime($ltime)];
        } else if (!empty($rtime) && empty($ltime)) {
            $where[] = ['create_time',"<=", strtotime($rtime) + 24 * 3600];
        } else if (!empty($rtime) && !empty($ltime)) {
            $where[] = ['create_time',">=", strtotime($ltime)];
            $where[] = ['create_time',"<=", strtotime($rtime) + 24 * 3600];
        }
        $list = Manager::with('role')->where($where)->get();
        return view('admin.manager.index',compact('list'));
    }


    /**
     * 新增 
     * 
     */
    public function create()
    {
        $list = Role::select('id','name')->get();  

        return view('admin.manager.add',compact('list'));
    }


    /**
     * 保存新增 
     * 
     */
    public function insert(ManagerRequest $request)
    {
        $data = $request->post();
        $data['password'] = bcrypt($data['password']);
        $data['create_time'] = time();
        $data['last_login_time'] = time();
        $data['ip'] = $request->ip();
        unset($data['password_confirmation']);
        $res = Manager::create($data);
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
        $list = Role::select('id','name')->get();  
        $info = Manager::select('id','username','password','phone','role_id')->find($id);
        return view('admin.manager.edit',compact('list','info'));
    }


    /**
     * 保存编辑
     * 
     */
    public function update(ManagerRequest $request,$id)
    {
        $data = $request->post();
        if ($data['password'] == 'zzzzzz') {
            unset($data['password']);
        } else {
            $data['password'] =  bcrypt($data['password']);
        }
        unset($data['_token']);
        unset($data['password_confirmation']);
        $res = Manager::where('id',$id)->update($data);
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
        $res =  Manager::where('id',$id)->delete();
        if (!$res) {
            show_msg(201,'删除失败');
        }
        show_msg(200,'删除成功');
    }
     
     
     
     
     
     

}
