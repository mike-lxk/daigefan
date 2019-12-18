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
    <form action="{{route('admin.shop.check_index')}}" method="get">
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
            <span class="select-box inline">
                <select name="status" class="select">
                    <option value="">请选择审核状态</option>
                    <option value="">全部</option>
                    <option value="1">待审核</option>
                    <option value="2">未通过</option>
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
                    <th width="60">经营品类</th>
                    <th width="150">所在学校</th>
                    <th width="50">所在地址</th>
                    <th width="70">入驻时间</th>
                    <th width="60">审核状态</th>
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
                    <td>{{$item->category->name}}</td>
                    <td>{{$item->school->name}}</td>
                    <td>{{$item->address}}</td>
                    <td>{{$item->str_add_time}}</td>
                    <td>{{$item->status == 1 ? '待审核' : '未通过'}}</td>
					<td class="td-manage">
                        @if ($item->status == 1) 
                        <a style="text-decoration:none" onClick="check_status(this,'/admin/shop/status/{{$item->id}}')" href="javascript:;" title="审核">审核</a>
                        @endif
                        &nbsp;&nbsp;
                        <a title="查看详情" href="javascript:;" onclick="full_page('{{$item->shop_name}}-查看详情','/admin/shop/check_show/{{$item->id}}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe720;</i></a>
                        
					</td>
                </tr>
                @endforeach
            </tbody>
        </table>
        {{ $list->links() }}
    </div>
</div>
@endsection

@section('js')
<script src="{{ asset('admin') }}/js/shop.js"></script>
@endsection
