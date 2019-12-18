<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\CategoryRequest;
use App\Models\Category;

class CategoryController extends Controller
{
    /**
     * 列表 
     * 
     */
    public function index()
    {
        $list = Category::get();
        return view('admin.category.index',compact('list'));
    }


    /**
     * 展示新增 
     * 
     */
    public function create()
    {
        return view('admin.category.add');
    }


    /**
     * 保存新增 
     * 
     */
    public function insert(CategoryRequest $request)
    {
        $data = $request->post();
        $res = Category::create($data);
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
        $info = Category::where('id',$id)->first();
        return view('admin.category.edit',compact('info'));
    }


    /**
     * 保存编辑 
     * 
     */
    public function update(CategoryRequest $request,$id)
    {
        $data = $request->post();
        unset($data['_token']);
        $res = Category::where('id',$id)->update($data);
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
        $res = Category::where('id',$id)->delete();
        if (!$res) {
            show_msg(201,'删除失败');
        }
        show_msg(200,'删除成功');
    }
}
