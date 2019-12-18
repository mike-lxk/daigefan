<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\MenuRequest;
use App\Models\Menu;

class MenuController extends Controller
{
    /**
     * 列表 
     * 
     */
    public function index(Request $request)
    {
        $arr = Menu::orderBy('fid','asc')->orderBy('sort','asc')->get();
        $list = get_node($arr);
        foreach ($list as $k => $v) {
            if ($list[$k]['fid'] == 0) {
                $list[$k]['fid'] = "无上级分类";
            } else {
                $list[$k]['fid'] = Menu::where("id", $list[$k]['fid'])->value("name");
            }
        }

        return view('admin.menu.index',compact('list'));
    }


    /**
     * 新增 
     * 
     */
    public function create()
    {
        $arr = Menu::select('id','fid','name','level')->orderBy('fid','asc')->orderBy('sort','asc')->get(); 
        $list = get_node($arr); 
        return view('admin.menu.add',compact('list'));
    }


    /**
     * 保存新增 
     * 
     */
    public function insert(MenuRequest $request)
    {
        $data = $request->post();
        $data['link_url'] = $data['link_url'] ?? '';
        $data['fid'] == 0 ? $data['level'] = 1 : $data['level'] = 2;
        $res = Menu::create($data);
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
        $arr = Menu::select('id','fid','name','level')->orderBy('fid','asc')->orderBy('sort','asc')->get();  
        $list = get_node($arr);
        $info = Menu::find($id);
        return view('admin.menu.edit',compact('list','info'));
    }


    /**
     * 保存编辑 
     * 
     */
    public function update(MenuRequest $request,$id)
    {
        $data = $request->post();
        $data['link_url'] = $data['link_url'] ?? '';
        $data['fid'] == 0 ? $data['level'] = 1 : $data['level'] = 2;
        unset($data['_token']);
        // 判断是否存在子集，存在则不可修改层级；
        if (Menu::where('fid',$id)->count()) {
            if ($data['fid'] != 0) {
                show_msg(204,'当前分类存在子集，不可修改当前层级');
            }
        }
        $res = Menu::where('id',$id)->update($data);
        if (!$res) {
            show_msg(201,'修改失败');
        }
        show_msg(200,'修改成功');
    }


    /**
     * 设置状态 
     * 
     */
    public function status($id,$status)
    {
        $ids = Menu::where('fid',$id)->pluck('id')->toArray();
        if (!$status) {
            array_push($ids,$id);
        } else {
            $ids = [$id];
        }

        $res =  Menu::whereIn('id',$ids)->update(['status'=>$status]);
        if (!$res) {
            show_msg(201,'设置失败');
        }
        show_msg(200,'设置成功');
    }
     

    /**
     * 删除 
     * 
     */
    public function del($id)
    {
        if (Menu::where('id',$id)->value('level') == 1 && Menu::where('fid',$id)->count()) {
            show_msg(204,'存在子集，不可删除');
        }
        $res =  Menu::where('id',$id)->delete();
        if (!$res) {
            show_msg(201,'删除失败');
        }
        show_msg(200,'删除成功');
    }
    

    /**
     * 排序 
     * 
     */
    public function sort(Request $request)
    {
        $ids = $request->input('ids');
        $sort = $request->input('sort');
        $num = 0;
        
        for ($i = 0; $i < count($ids); $i++) {
            if (Menu::where('id',$ids[$i])->update(['sort' => $sort[$i]]) !== false) {
                $num += 1;
            }
        }
        if ($num != count($ids)) {
            show_msg(201,'排序存在缺漏，请确认');
        }
        show_msg(200,'排序成功');
    }
     




}
