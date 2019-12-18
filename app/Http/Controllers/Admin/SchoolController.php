<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\SchoolRequest;
use App\Models\School;

class SchoolController extends Controller
{
    /**
     * 列表 
     * 
     */
    public function index(Request $request)
    {
        $where[] = ['level','=',2];
        !empty($request->input('fid')) ? $where[] = ['fid','=',$request->input('fid')] : null;
        !empty($request->input('name')) ? $where[] = ['name','like', "%" . $request->input('name') . "%"] : null;
        
        $area_list = School::where('level',1)->select('id','name')->get();
        $list = School::with('canteens')->where($where)->get();
        foreach ($list as &$item) {
            $item->area = School::where('id',$item['fid'])->value('name');
        }
        unset($item); // 删除索引
        return view('admin.school.index',compact('list','area_list'));
    }


    /**
     * 展示新增 
     * 
     */
    public function create()
    {
        $area_list = School::where('level',1)->select('id','name')->get();
        return view('admin.school.add',compact('area_list'));
    }


    /**
     * 保存新增 
     * 
     */
    public function insert(SchoolRequest $request)
    {
        $data = $request->post();
        $res = School::create($data);
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
        $area_list = School::select('id','name')->where('level',1)->get();  
        $info = School::find($id);
        return view('admin.school.edit',compact('area_list','info'));
    }


    /**
     * 保存编辑 
     * 
     */
    public function update(SchoolRequest $request,$id)
    {
        $data = $request->post();
        unset($data['_token']);
        $res = School::where('id',$id)->update($data);
        if (!$res) {
            show_msg(201,'更新失败');
        }
        show_msg(200,'更新成功');
    }


}
