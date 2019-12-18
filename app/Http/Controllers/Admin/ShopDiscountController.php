<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\ShopDiscountRequest;
use App\Models\ShopDiscount;

class ShopDiscountController extends Controller
{
    /**
     * 列表 
     * 
     */
    public function index(Request $request,int $id)
    {
        $list = ShopDiscount::where([['shop_id','=',$id],['delete','=',0]])->orderBy('threshold')->get();
        return view('admin.shop_discount.index',compact('list','id'));
    }


    /**
     * 展示新增 
     * 
     */
    public function create($shop_id)
    {
        return view('admin.shop_discount.add',compact('shop_id'));
    }


    /**
     * 保存新增 
     * 
     */
    public function insert(ShopDiscountRequest $request)
    {
        $data = $request->post();
        if (ShopDiscount::where([['shop_id','=',$data['shop_id']],['delete','=',0]])->count() >= 3) {
            show_msg(204,'商家满减最多添加三个');
        }
        $res = ShopDiscount::create($data);
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
        $info = ShopDiscount::find($id);
        return view('admin.shop_discount.edit',compact('info'));
    }


    /**
     * 保存编辑 
     * 
     */
    public function update(ShopDiscountRequest $request,$id)
    {
        $data = $request->post();
        unset($data['_token']);
        $res = ShopDiscount::where('id',$id)->update($data);
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
        $res = ShopDiscount::where('id',$id)->update(['delete'=>1]);
        if (!$res) {
            show_msg(201,'删除失败');
        }
        show_msg(200,'删除成功');
    }
}
