<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Rider;
use App\Models\RiderIncomeExpend;
use App\Models\School;
use Illuminate\Support\Facades\DB;

class RiderController extends Controller
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

        $list = Rider::with('school')->whereIn('status',[3,4])->where($where)->select('id','name','add_time','phone','school_id','status')->paginate(15);

        foreach ($list as $k => $item) {
            $item->countNum = (new RiderIncomeExpend())->statisticsOrderNum($item->id);
            $item->money = (new RiderIncomeExpend())->statisticsDispatchingSum($item->id);
        }

        $school_list = School::where('level',2)->select('id','name')->get();
        return view('admin.rider.index',compact('list','school_list'));
    }

    /**
     * 查看骑手详情 
     * 
     */
    public function show($id)
    {
        return '这是骑手详情__'.$id;
    }

    /**
     * 设置状态
     */
    public function status($id,$status)
    {
        $res =  Rider::where('id',$id)->update(['status'=>$status]);
        if (!$res) {
            show_msg(201,'设置失败');
        }
        show_msg(200,'设置成功');
    }


    /**
     * 审核列表 
     * 
     */
    public function checkIndex(Request $request)
    {
        $where = [];
        !empty($request->input('school_id')) ? $where[] = ['school_id','=',$request->input('school_id')] : null;
        !empty($request->input('name')) ? $where[] = ['name','like', "%" . $request->input('name') . "%"] : null;
        !empty($request->input('status')) ? $whereIn = [$request->input('status')] : $whereIn = [1,2];

        $list = Rider::with('school')->whereIn('status',$whereIn)->where($where)->paginate(15);

        $school_list = School::where('level',2)->select('id','name')->get();

        return view('admin.rider.check_index',compact('list','school_list'));
    }

    /**
     * 查看审核详情 
     * 
     */
    public function checkShow($id)
    {
        return '这是审核详情__'.$id;
    }


    /**
     * 删除
     * 
     */
    public function del($id)
    {
        $res = Rider::where('id',$id)->delete();
        if (!$res) {
            show_msg(201,'删除失败');
        }
        show_msg(200,'删除成功');
    }


}
