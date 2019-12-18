@extends('layout.main')
@section('css')
<link rel="stylesheet" type="text/css" href="/css/pagination.css" />
@endsection

@section('content')
<nav class="breadcrumb">
    <i class="Hui-iconfont">&#xe67f;</i>首页
    <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container">
    <form action="{{route('admin.shop.index')}}" method="get">
        <div class="text-c r">
            <span class="select-box inline">
                <select name="school_id" class="select">
                    <option value="">请选择学校</option>
                    <option value="">全部</option>
                    @foreach ($school_list as $item) 
                    <option value="{{$item->id}}" {{request()->get('school_id') == $item->id ? 'selected' : ''}}>{{$item->name}}</option>
                    @endforeach
                </select>
            </span>
            <input type="text" class="input-text" style="width:250px" placeholder="商家名称" name="shop_name" id="shop_name" value="{{request()->get('shop_name','')}}"  autocomplete = 'off'>
            <button type="submit" class="btn btn-success radius" id="searchbtn"><i class="Hui-iconfont">&#xe665;</i> 搜商家</button>
        </div>
    </form>
    <div class="mt-40">
	<div class="cl pd-5 bg-1 bk-gray"> <span class="r">共有数据：<strong>{{$list->total()}}</strong> 条</span> </div>

        <table class="table table-border table-bordered table-hover table-bg">
            <thead>
                <tr class="text-c">
                    <th width="25"><input type="checkbox" name="" value=""></th>
                    <th width="50">ID</th>
                    <th width="60">商家logo</th>
                    <th width="100">门店名称</th>
                    <th width="60">联系人</th>
                    <th width="80">联系方式</th>
                    <th width="150">所在学校</th>
                    <th width="50">在售商品数</th>
                    <th width="60">月销售额（元）</th>
                    <th width="60">销售总额（元）</th>
                    <th width="70">入驻时间</th>
                    <th width="60">操作</th>
                </tr>
            </thead>
            <tbody>
                @foreach($list as $item)
                <tr class="text-c">
                    <td><input type="checkbox" value="{{ $item->id }}" name="ids[]"></td>
                    <td>{{$item->id }}</td>
                    <td><img src="{{$item->logo_img}}" style="height:60px"></td>
                    <td>{{$item->shop_name}}</td>
                    <td>{{$item->link_name}}</td>
                    <td>{{$item->link_tel}}</td>
                    <td>{{$item->school->name}}</td>
                    <td>{{$item->sale_num}}</td>
                    <td>{{$item->mouth_money}}</td>
                    <td>{{$item->total_money}}</td>
                    <td>{{$item->str_add_time}}</td>
					<td class="td-manage">
                        <a title="查看详情" href="javascript:;" onclick="full_page('{{$item->shop_name}}-查看详情','/admin/shop/show/{{$item->id}}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe720;</i></a>
                        <a title="满减活动" href="javascript:;" onclick="full_page('{{$item->shop_name}}-满减活动','/admin/shop_discount/index/{{$item->id}}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe681;</i></a>
                        @if ($item->status == 3) 
                        <a title="禁用" href="javascript:;" onclick="edit_status('/admin/shop/status/{{$item->id}}/4')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe631;</i></a>
                        @else
                        <a title="启用" href="javascript:;" onclick="edit_status('/admin/shop/status/{{$item->id}}/3')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6e1;</i></a>
                        @endif
						<a title="编辑" href="javascript:;" onclick="edit_page('{{$item->shop_name}}-编辑','/admin/shop/edit/{{$item->id}}','800','600')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6df;</i></a>
                        
					</td>
                </tr>
                @endforeach
            </tbody>
        </table>
        {{ $list->links() }}
    </div>
</div>
@endsection
