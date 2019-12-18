@extends('layout.main')

@section('content')

<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 管理员管理 <span class="c-gray en">&gt;</span> 权限管理 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="cl pd-5 bg-1 bk-gray mt-20">
		<span class="l">
			<a href="javascript:;" onclick="add_page('添加菜单节点','/admin/menu/create','500','320')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加权限节点</a>
			<a href="javascript:;" onclick="menu_sort('/admin/menu/sort')" class="btn btn-danger radius"><i class="Hui-iconfont"></i> 更新排序</a>
		</span>
	</div>
	<form class="form form-horizontal" id="form-menu-index">
		@csrf
		<table class="table table-border table-bordered table-bg">
			<thead>
				<tr>
					<th scope="col" colspan="7">菜单节点</th>
				</tr>
				<tr class="text-c">
					<th width="25">序号</th>
					<th width="25">排序</th>
					<th width="100">菜单名称</th>
					<th width="100">上级菜单</th>
					<th width="100">链接URL</th>
					<th width="50">状态</th>
					<th width="80">操作</th>
				</tr>
			</thead>
			<tbody>
				@foreach($list as $key => $item)
				<tr class="text-c">
					<td>{{$key}}</td>
					<td width="25">
						<input name='sort[]' type="text" value="{{$item->sort}}"/ style="width: 40%;height: 20px;text-align:center;" onkeyup="this.value=this.value.replace(/\D/g,'')" class="sorf">
						<input name='ids[]' type="hidden" value="{{$item->id}}" class="ids"/>
					</td>
					<td style="text-align:left">
						{{str_repeat('- - - ',$item->level - 1)}}{{$item->name}}
					</td>
					<td style="text-align:left">{{$item->fid}}</td>
					<td style="text-align:left">{{$item->link_url}}</td>
					@if($item->status == 1)
					<td class="td-status"><span class="label label-success radius">已启用</span></td>
					<td class="td-manage">
						<a style="text-decoration:none" onclick="edit_status('/admin/menu/status/{{$item->id}}/0')" href="javascript:;" title="停用"><i class="Hui-iconfont" style="font-size:16px;">&#xe631;</i></a>&nbsp;&nbsp;
						<a title="编辑" href="javascript:;" onclick="edit_page('菜单编辑','/admin/menu/edit/{{$item->id}}','500','420')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6df;</i></a>&nbsp;&nbsp;
						<a title="删除" href="javascript:;" onclick="del(this,'/admin/menu/del','{{$item->id}}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6e2;</i></a>
					</td>
					@else
					<td class="td-status"><span class="label label-default radius">已禁用</span></td>
					<td class="td-manage">
						<a style="text-decoration:none" onclick="edit_status('/admin/menu/status/{{$item->id}}/1')" href="javascript:;" title="启用"><i class="Hui-iconfont" style="font-size:16px;">&#xe6e1;</i></a>&nbsp;&nbsp;
						<a title="编辑" href="javascript:;" onclick="edit_page('菜单编辑','/admin/menu/edit/{{$item->id}}','500','420')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6df;</i></a>&nbsp;&nbsp;
						<a title="删除" href="javascript:;" onclick="del(this,'/admin/menu/del','{{$item->id}}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6e2;</i></a>
					</td>
					@endif
				</tr>
				@endforeach
			</tbody>
		</table>
	</form>
</div>

@endsection

@section('js')
<script src="{{ asset('admin') }}/js/manager.js"></script>
@endsection