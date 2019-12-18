<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\AdvertPositionRequest;
use App\Models\AdvertPosition;

class AdvertPositionController extends Controller
{
    /**
     * 列表 
     * 
     */
    public function index(Request $request)
    {
        $list = AdvertPosition::get();
        return view('admin.advertposition.index',compact('list'));
    }


    /**
     * 展示新增 
     * 
     */
    public function create()
    {
        return view('admin.advertposition.add');
    }


    /**
     * 保存新增 
     * 
     */
    public function insert(AdvertPositionRequest $request)
    {
        $data = $request->post();
        $res = AdvertPosition::create($data);
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
        $info = AdvertPosition::where('id',$id)->first();
        return view('admin.advertposition.edit',compact('info'));
    }


    /**
     * 保存编辑 
     * 
     */
    public function update(AdvertPositionRequest $request,$id)
    {
        $data = $request->post();
        unset($data['_token']);
        $res = AdvertPosition::where('id',$id)->update($data);
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
        $res = AdvertPosition::where('id',$id)->delete();
        if (!$res) {
            show_msg(201,'删除失败');
        }
        show_msg(200,'删除成功');
    }


    /**
     * 设置状态 
     * 
     */
    public function status($id,$status)
    {
        $res =  AdvertPosition::where('id',$id)->update(['status'=>$status]);
        if (!$res) {
            show_msg(201,'设置失败');
        }
        show_msg(200,'设置成功');
    }
     
     
}
