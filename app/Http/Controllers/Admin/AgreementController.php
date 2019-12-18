<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\AgreementRequest;
use App\Models\Agreement;

class AgreementController extends Controller
{
    /**
     * 列表 
     * 
     */
    public function index(Request $request)
    {
        $where = [];
        !empty($request->input('platfrom')) ? $where[] = ['platfrom','=',$request->input('platfrom')] : null;
        $list = Agreement::where($where)->select('id','title','platfrom','save_time')->get();
        return view('admin.agreement.index',compact('list'));
    }


    /**
     * 展示新增 
     * 
     */
    public function create()
    {
        return view('admin.agreement.add');
    }


    /**
     * 展示新增 
     * 
     */
    public function show($id)
    {
        $info = Agreement::where('id',$id)->first();
        return view('admin.agreement.show',compact('info'));
    }


    /**
     * 保存新增 
     * 
     */
    public function insert(AgreementRequest $request)
    {
        $data = $request->post();
        $data['save_time'] = time();
        $res = Agreement::create($data);
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
        $info = Agreement::where('id',$id)->first();
        return view('admin.agreement.edit',compact('info'));
    }


    /**
     * 保存编辑 
     * 
     */
    public function update(AgreementRequest $request,$id)
    {
        $data = $request->post();
        $data['save_time'] = time();
        unset($data['_token']);
        $res = Agreement::where('id',$id)->update($data);
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
        $res = Agreement::where('id',$id)->delete();
        if (!$res) {
            show_msg(201,'删除失败');
        }
        show_msg(200,'删除成功');
    }
     
     
     
     
}
