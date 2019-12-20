<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Feedback;

class FeedbackController extends Controller
{
    /**
     * 列表 
     * 
     */
    public function index(Request $request)
    {
        !empty($request->input('status')) ? $where[] = ['status','=',$request->input('status')] : null;
        $list = Feedback::with('user')->orderBy('id')->paginate(3);
        return view('admin.feedback.index',compact('list'));
    }


    /**
     * 删除
     * 
     */
    public function del($id)
    {
        $res = Feedback::where('id',$id)->delete();
        if (!$res) {
            show_msg(201,'删除失败');
        }
        show_msg(200,'删除成功');
    }


    /**
     * 查看详情
     * 
     */
    public function show($id)
    {
        $info = Feedback::with('user')->where('id',$id)->first();
        dd($info);
        return view('admin.feedback.show',compact('info'));
    }


    /**
     * 设置状态 
     * 
     */
    public function status($id,$status)
    {
        $res =  Feedback::where('id',$id)->update(['status'=>$status]);
        if (!$res) {
            show_msg(201,'设置失败');
        }
        show_msg(200,'设置成功');
    }
}
