<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\User;

class UserController extends Controller
{
    /**
     * 列表 
     * 
     */
    public function index(Request $request)
    {
        $where = [];
        !empty($request->input('nickname')) ? $where[] = ['nickname','like', "%" . $request->input('nickname') . "%"] : null;
        $list = User::where($where)->select('id','nickname','phone','add_time','status')->paginate(15);

        foreach ($list as $k => $item) {
            $item->statistics = (new Order())->orderStatistics($item->id);
        }

        return view('admin.user.index',compact('list'));
    }


    /**
     * 回收站列表 
     * 
     */
    public function recycleIndex(Request $request)
    {
        $where = [];
        !empty($request->input('nickname')) ? $where[] = ['nickname','like', "%" . $request->input('nickname') . "%"] : null;
        $list = User::onlyTrashed()->where($where)->select('id','nickname','phone','add_time','status')->paginate(15);

        foreach ($list as $k => $item) {
            $item->statistics = (new Order())->orderStatistics($item->id);
        }

        return view('admin.user.recycle_index',compact('list'));
    }
     


    /**
     * 设置【回收站设置】
     * 
     */
    public function del($id)
    {
        $res = User::where('id',$id)->delete();
        if (!$res) {
            show_msg(201,'删除失败');
        }
        show_msg(200,'删除成功');
    }


    /**
     * 恢复回收站的数据 
     * 
     */
    public function restore($id)
    {
        $res = User::withTrashed()->where('id',$id)->restore();
        if (!$res) {
            show_msg(201,'恢复失败');
        }
        show_msg(200,'恢复成功');
    }


    /**
     * 详情页 
     * 
     */
    public function show($id)
    {
        return '这是用户的详情页_'.$id;
    }
     
}
