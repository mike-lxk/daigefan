@extends('layout.main')

@section('content')
<nav class="breadcrumb">
    <i class="Hui-iconfont">&#xe67f;</i>首页
    <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container">
    <div class="cl pd-5 bg-1 bk-gray mt-20"><span class="l"><a href="javascript:;" onclick="add_page('添加品类','/admin/category/create','600','400')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加品类</a></span> </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-hover table-bg table-sort">
            <thead>
                <tr class="text-c">
                    <th width="25"><input type="checkbox" name="" value=""></th>
                    <th width="80">ID</th>
                    <th width="100">图标</th>
                    <th width="100">名称</th>
                    <th width="100">排序</th>
                    <th width="100">操作</th>
                </tr>
            </thead>
            <tbody>
                @foreach($list as $item)
                <tr class="text-c">
                    <td><input type="checkbox" value="{{ $item->id }}" name="ids[]"></td>
                    <td>{{ $item->id }}</td>
                    <td><img src="{{$item->img}}" style="width:60px"></td>
                    <td>{{$item->name}}</td>
                    <td>{{$item->sort}}</td>
					<td class="td-manage">
						<a title="编辑" href="javascript:;" onclick="edit_page('编辑品类','/admin/category/edit/{{$item->id}}','600','400')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6df;</i></a>&nbsp;&nbsp;
						<a title="删除" href="javascript:;" onclick="del(this,'/admin/category/del','{{$item->id}}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6e2;</i></a>
					</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection

@section('js')

<script>
    $(function() {
        // datatables初始化
        $('.table-sort').dataTable({
            // 以第2列为初始排序
            order: [
                [1, 'asc']
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