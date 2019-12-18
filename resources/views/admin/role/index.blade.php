@extends('layout.main')

@section('content')

<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 管理员管理 <span class="c-gray en">&gt;</span> 角色管理 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="cl pd-5 bg-1 bk-gray"> <span class="l"><a class="btn btn-primary radius" href="javascript:;" onclick="add_page('添加角色','/admin/role/create','1000','560')"><i class="Hui-iconfont">&#xe600;</i> 添加角色</a> </span> </div>
	<table class="table table-border table-bordered table-hover table-bg">
		<thead>
			<tr>
				<th scope="col" colspan="6">角色管理</th>
			</tr>
			<tr class="text-c">
				<th width="25"><input type="checkbox" value="" name=""></th>
				<th width="40">ID</th>
				<th width="200">角色名</th>
				<th>用户列表</th>
				<th width="300">描述</th>
				<th width="70">操作</th>
			</tr>
		</thead>
		<tbody>
			@foreach($list as $item)
				<tr class="text-c">
					<td><input type="checkbox" value="{{$item->id}}" name="choose"></td>
					<td>{{$item->id}}</td>
					<td>{{$item->name}}</td>
					<td>{{implode(',',array_column(json_decode($item->manager,true),'username'))}}</td>
					<td>{{$item->depict}}</td>
					<td class="f-14">
                        <a title="编辑" href="javascript:;" onclick="edit_page('角色编辑','/admin/role/edit/{{$item->id}}','1000','560')" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6df;</i></a>&nbsp;&nbsp;
                        <a title="删除" href="javascript:;"  onclick="del(this,'/admin/role/del','{{$item->id}}')"  class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6e2;</i></a></td>
				</tr>
			@endforeach
		</tbody>
	</table>
</div>

@endsection

@section('js')

<script>
    $(function() {
        // datatables初始化
        $('.table-sort').dataTable({
            // 以第2列为初始排序
            order: [
                [1, 'desc']
            ],
            // 设置 第1列和最后一列不排序
            columnDefs: [
                // 第1列和第10列不排序 因为索引是从0开始
                {
                    targets: [0, 5],
                    orderable: false
                }
            ],
            // 客户搜索隐藏
            searching: false,
        })
    });
</script>

@endsection