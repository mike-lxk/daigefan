<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Models\Manager;

class LoginController extends Controller
{
    /**
     * 登录页面 
     * 
     */
    public function login()
    {
        if (session('admin.manager')) {
            return redirect()->route('admin.index');
        }
        return view('admin.login');

    }

    /**
     * 登录处理 
     * 
     */
    public function doLogin(LoginRequest $request)
    {
        if((new Manager())->login($request->post())){
            return redirect()->route('admin.index')->with('msg_ok','登录成功');
        }else{
            return redirect()->back()->with('error','登录失败请重新登录');
        }

    }


    // 用户退出
    public function logout() {
        session()->flush();
        return redirect(route('admin.login'))->with('msg_tips','请重新登录');
    }
     

    /**
     * 添加用户 
     * 
     */
    // public function addUser(UserRequest $request)
    // {
    //     $data = $request->post();
    //     $res =  User::create($data);

    //     Log::info('添加用户');

    //     Cache::store('redis')->put('USER_CONFIRM:'.$res->id,$res->id,1);

        
    //     /**
    //      * Cache::store('redis')->put('USER_CONFIRM:'.$res->id,$res->id,3);
    //      * 等同于：
    //      * $redis = Redis::connect('default');   // 在切换redis数据库的时候，很实用
    //      * $redis->put('USER_CONFIRM:'.$res->id,$res->id,3);
    //      */
    //     return $res;
    // }


    /**
     * 编辑用户 
     * 
     */
    // public function editUser($id)
    // {
    //     $info = User::find($id);
        
    //     return response()->json($info);
    // }

    /**
     * 保存用户
     * 
     * 
     */
    // public function updateUser(UserRequest $request,$id)
    // {
    //     $data = $request->post();
    //     $data['password'] = md5($data['password']);
    //     unset($data['password_confirmation']);

    //     $res =  User::where('id',$id)->update($data);
    //     if ($res) {
    //         Cache::store('redis')->forget('USER_CONFIRM:'.$id);
    //         return response()->json(['code'=>200]);
    //     }
    //     return response()->json(['code'=>201]);
    // }
     

    /**
     * 查看当前用户信息 
     * 
     */
    // public function show($id)
    // {
    //     # 方式一
    //     $info = User::find($id);
    //     $more = $info->userinfo;

    //     # 方式二：预加载 推荐写法
    //     $info = User::with('userinfo')->find($id)->toArray();
    //     dump($info);die;
    // }
     

    /**
     * 删除用户 
     * 
     */
    // public function delUser($id)
    // {
    //     $res =  User::where('id',$id)->delete();
    //     dump($res);
    // }

    /**
     * 列表 
     * 
     */
    // public function index()
    // {
    //     $list = User::get();
    //     return response()->json(['code'=>200,'list'=>$list]);
    // }


    /**
     * 获取当前用户的文章 
     * 
     */
    // public function getUserArticles()
    // {
    //     # 方式一：不能带条件
    //     // $info = User::find(1);
    //     // $list = $info->articles->toArray();

    //     # 方式二：可以带条件【可筛选需要的字段】
    //     // $info = User::find(1);
    //     // $list = $info->articles()->where([['id','>',1],['hots','=',2]])->select('title','content')->get()->toArray();

    //     # 方案三：预加载，可带条件【不可筛选需要的字段】
    //     $list = User::with(['articles'=>function($query){
    //         $query->where([['id','>',1],['hots','=',2]]);
    //     }])->where('id',1)->first()->toArray();
    //     dump($list);
    // }
     
}
