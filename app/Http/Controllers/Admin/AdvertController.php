<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\AdvertRequest;
use App\Models\Advert;
use App\Models\AdvertPosition;
use App\Models\School;
use DB;

class AdvertController extends Controller
{
    /**
     * 列表 
     * 
     */
    public function index(Request $request)
    {
        $list = Advert::with('advert_position')->with('school')->get();
        // dd($list);
        return view('admin.advert.index',compact('list'));
    }


    /**
     * 展示新增 
     * 
     */
    public function create()
    {
        $advert_position_list = AdvertPosition::where('status',1)->select('id','name')->get();
        $school_list = School::where('level',2)->select('id','name')->get();
        return view('admin.advert.add',compact('advert_position_list','school_list'));
    }


    /**
     * 保存新增 
     * 
     */
    public function insert(AdvertRequest $request)
    {
        $data = $request->post();
        // 判断当前状态是否是投放中
        $data['status'] = $data['start_time'] > date('Y-m-d') ? 0 : 1 ;
        $res = Advert::create($data);
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
        $info = Advert::where('id',$id)->first();
        $advert_position_list = AdvertPosition::where('status',1)->select('id','name')->get();
        $school_list = School::where('level',2)->select('id','name')->get();
        return view('admin.advert.edit',compact('info','advert_position_list','school_list'));
    }


    /**
     * 保存编辑 
     * 
     */
    public function update(AdvertRequest $request,$id)
    {
        $data = $request->post();
        unset($data['_token']);

        # 打印sql 的方法一， 仅适用于查询
        // $res = Advert::where('id',$id)->toSql();
        // var_dump($res);die;
        # 打印sql 的方法二，适用于增删改查 
        // DB::connection()->enableQueryLog();  // 开启QueryLog
        // $res = Advert::where('id',$id)->update($data); // 需要打印的sql语句
        // $sql_log= DB::getQueryLog();  // 获取打印语句
        // var_dump($sql_log);die;

        $data['status'] = $data['start_time'] > date('Y-m-d') ? 0 : 1 ;
        $data['link_url'] = $data['link_url'] ?? '';
        $data['start_time'] = strtotime($data['start_time']);
        $data['end_time'] = strtotime($data['end_time']);

        $res = Advert::where('id',$id)->update($data);
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
        $res = Advert::where('id',$id)->delete();
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
        $res =  Advert::where('id',$id)->update(['status'=>$status]);
        if (!$res) {
            show_msg(201,'设置失败');
        }
        show_msg(200,'设置成功');
    }
     
}
