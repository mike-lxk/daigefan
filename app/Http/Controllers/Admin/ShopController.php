<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\ShopRequest;
use App\Models\Order;
use App\Models\Product;
use App\Models\ProductAttribute;
use App\Models\School;
use App\Models\Shop;
use App\Models\ShopWithdraw;

class ShopController extends Controller
{
    /**
     * 列表 
     * 
     */
    public function index(Request $request)
    {
        $where = [];
        !empty($request->input('school_id')) ? $where[] = ['school_id','=',$request->input('school_id')] : null;
        !empty($request->input('shop_name')) ? $where[] = ['shop_name','like', "%" . $request->input('shop_name') . "%"] : null;

        $list = Shop::with('school')->whereIn('status',[3,4])->where($where)->select('id','shop_name','logo_img','school_id','link_name','link_tel','add_time','status')->paginate(15);

        foreach ($list as $item) {
            $item->sale_num = (new Product())->saleNum($item->id);
            $item->mouth_money = (new ShopWithdraw())->mouthMoney($item->id);
            $item->total_money = (new ShopWithdraw())->totalMoney($item->id);
        }

        $school_list = School::where('level',2)->select('id','name')->get();
        return view('admin.shop.index',compact('list','school_list'));
    }


    /**
     * 展示详情 
     * 
     */
    public function show($id)
    {
        // 商家信息
        $info = Shop::with('shop_mores')->with('school')->with('canteen')->where('id',$id)->first();
        // 在售商品信息
        $productList = Product::with('product_classify')->where([['shop_id','=',$id],['delete','=',0],['status','=',1]])->select('id','name','price','attribute_ids','product_classify_id')->get();
        foreach ($productList as $item) {
            $item->attribute_arr = (new ProductAttribute())->attribute($item->attribute_ids);
        }
        # 结算信息
        $settlement['total_order_num'] = (new Order())->totalOrderNum($id);
        $settlement['month_order_num'] = (new Order())->mouthOrderNum($id);
        $settlement['day_order_num'] = (new Order())->dayOrderNum($id);
        $settlement['can_settlement_money'] = (new ShopWithdraw())->canSettlementMoney($id,$info->withdraw_cycle);
        $settlement['wait_settlement_money'] = (new ShopWithdraw())->waitSettlementMoney($id,$info->withdraw_cycle);
        $settlement['month_money'] = (new ShopWithdraw())->mouthMoney($id);
        $settlement['total_money'] = (new ShopWithdraw())->totalMoney($id);

        return view('admin.shop.show',compact('info','productList','settlement'));
    }

   
    /**
     * 展示编辑 
     * 
     */
    public function edit($id)
    {
        $info = Shop::where('id',$id)->first();
        return view('admin.shop.edit',compact('info'));
    }


    /**
     * 保存编辑 
     * 
     */
    public function update(ShopRequest $request,$id)
    {
        $data = $request->post();
        unset($data['_token']);
        $res = Shop::where('id',$id)->update($data);
        if (!$res) {
            show_msg(201,'更新失败');
        }
        show_msg(200,'更新成功');
    }


    /**
     * 设置状态
     */
    public function status($id,$status)
    {
        $res =  Shop::where('id',$id)->update(['status'=>$status]);
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
        !empty($request->input('shop_name')) ? $where[] = ['shop_name','like', "%" . $request->input('shop_name') . "%"] : null;
        !empty($request->input('status')) ? $whereIn = [$request->input('status')] : $whereIn = [1,2];

        $list = Shop::with('school')->with('category')->whereIn('status',$whereIn)->where($where)->select('id','shop_name','logo_img','school_id','category_id','address','link_name','link_tel','add_time','status')->paginate(15);

        $school_list = School::where('level',2)->select('id','name')->get();

        return view('admin.shop.check_index',compact('list','school_list'));
    }


    /**
     * 查看审核详情 
     * 
     */
    public function CheckShow($id)
    {
        return '这是审核详情__'.$id;
    }
     
     


}
