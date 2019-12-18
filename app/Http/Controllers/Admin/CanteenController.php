<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\CanteenRequest;
use App\Models\Canteen;
use App\Models\School;

class CanteenController extends Controller
{
    /**
     * 列表 
     * 
     */
    public function index(Request $request)
    {
        $where = [];
        !empty($request->input('school_id')) ? $where[] = ['school_id','=',$request->input('school_id')] : null;
        !empty($request->input('name')) ? $where[] = ['name','like', "%" . $request->input('name') . "%"] : null;
        
        $school_list = School::where('level',2)->select('id','name')->get();
        $list = Canteen::with('school')->where($where)->get();
        // dd($list);
        return view('admin.canteen.index',compact('list','school_list'));
    }


    /**
     * 展示新增 
     * 
     */
    public function create()
    {
        $school_list = School::where('level',2)->select('id','name')->get();
        return view('admin.canteen.add',compact('school_list'));
    }


    /**
     * 保存新增 
     * 
     */
    public function insert(CanteenRequest $request)
    {
        $data = $request->post();
        $data['password'] = bcrypt($data['cleartext']);
        $res = Canteen::create($data);
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
        $school_list = School::where('level',2)->select('id','name')->get();
        $info = Canteen::find($id);
        return view('admin.canteen.edit',compact('school_list','info'));
    }


    /**
     * 保存编辑 
     * 
     */
    public function update(CanteenRequest $request,$id)
    {
        $data = $request->post();
        $data['password'] = bcrypt($data['cleartext']);
        unset($data['_token']);
        $res = Canteen::where('id',$id)->update($data);
        if (!$res) {
            show_msg(201,'更新失败');
        }
        show_msg(200,'更新成功');
    }


    /**
     * 删除
     */
    public function del($id)
    {
        $res = Canteen::where('id',$id)->delete();
        if (!$res) {
            show_msg(201,'删除失败');
        }
        show_msg(200,'删除成功');
    }


}
