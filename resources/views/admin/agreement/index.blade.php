@extends('layout.main')

@section('content')

<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 图文管理 <span class="c-gray en">&gt;</span> 图文列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
    <form action="{{route('admin.agreement.index')}}" method="get">
        <div class="text-c r">
            <span class="select-box inline">
                <select name="platfrom" class="select">
                    <option value="">请选择图文所属平台</option>
                    <option value="">全部</option>
                    <option value="1">用户端</option>
                    <option value="2">商家端</option>
                    <option value="3">骑手端</option>
                </select>
            </span>
            <button type="submit" class="btn btn-success radius" id="searchbtn"><i class="Hui-iconfont">&#xe665;</i> 查询</button>
        </div>
    </form>
    <div class="cl pd-5 bg-1 bk-gray  mt-40"> <span class="l"><a class="btn btn-primary radius" href="javascript:;" onclick="add_page('添加图文','/admin/agreement/create','1000','560')"><i class="Hui-iconfont">&#xe600;</i> 添加图文</a> </span> </div>
    <div class="mt-20">
	<table class="table table-border table-bordered table-hover table-bg">
		<thead>
			<tr>
				<th scope="col" colspan="6">图文列表</th>
			</tr>
			<tr class="text-c">
				<th width="25"><input type="checkbox" value="" name=""></th>
				<th width="40">ID</th>
				<th width="200">标题</th>
				<th width="300">所属平台</th>
				<th width="300">更新时间</th>
				<th width="70">操作</th>
			</tr>
		</thead>
		<tbody>
			@foreach($list as $item)
				<tr class="text-c">
					<td><input type="checkbox" value="{{$item->id}}" name="choose"></td>
					<td>{{$item->id}}</td>
					<td><u style="cursor:pointer" class="text-primary" onclick="edit_page('图文详情','/admin/agreement/show/{{$item->id}}','1000','560')">{{$item->title}} </u> </td>
					<td>{{$item->platfrom}}</td>
					<td>{{$item->save_time}}</td>
					<td class="f-14">
                        <a title="编辑" href="javascript:;" onclick="edit_page('图文编辑','/admin/agreement/edit/{{$item->id}}','1000','560')" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6df;</i></a>&nbsp;&nbsp;
                        <a title="删除" href="javascript:;"  onclick="del(this,'/admin/agreement/del','{{$item->id}}')"  class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6e2;</i></a></td>
				</tr>
			@endforeach
		</tbody>
    </table>
    </div>
</div>

@endsection

@section('js')
<script src="{{ asset('admin') }}/js/agreement.js"></script>
@endsection