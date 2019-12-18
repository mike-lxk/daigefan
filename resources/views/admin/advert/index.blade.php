@extends('layout.main')

@section('content')
<nav class="breadcrumb">
    <i class="Hui-iconfont">&#xe67f;</i>首页
    <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container">
    <div class="cl pd-5 bg-1 bk-gray mt-20"><span class="l"><a href="javascript:;" onclick="add_page('添加广告','/admin/advert/create','800','600')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加广告</a></span> </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-hover table-bg table-sort">
            <thead>
                <tr class="text-c">
                    <th width="25"><input type="checkbox" name="" value=""></th>
                    <th width="80">ID</th>
                    <th width="100">广告图片</th>
                    <th width="100">广告位名称</th>
                    <th width="100">广告名称</th>
                    <th width="150">起止时间</th>
                    <th width="50">排序</th>
                    <th width="130">覆盖范围</th>
                    <th width="130">剩余时间（天）</th>
                    <th width="100">状态</th>
                    <th width="100">操作</th>
                </tr>
            </thead>
            <tbody>
                @foreach($list as $item)
                <tr class="text-c">
                    <td><input type="checkbox" value="{{ $item->id }}" name="ids[]"></td>
                    <td>{{ $item->id }}</td>
                    <td><img src="{{$item->imgurl}}" style="height:72px"></td>
                    <td>{{$item->advert_position->name}}</td>
                    <td>{{$item->title}}</td>
                    <td>{{$item->str_start_time}} - {{$item->str_end_time}}</td>
                    <td>{{$item->sort}}</td>
                    <td>{{$item->school->name ?? '全部'}}</td>
                    <td>{{$item->remaining_time}}</td>
					<td class="td-status">
                        <span @if($item->status == 0) class="label label-primary radius" @elseif($item->status == 1) class="label label-success radius"  @elseif($item->status == 2) class="label label-warning radius" @else class="label label-danger radius" @endif>{{$item->mb_status}}</span>
                    </td>
					<td class="td-manage">
                        @if($item->status == 1)
                            <a style="text-decoration:none" onclick="edit_status('/admin/advert/status/{{$item->id}}/2')" href="javascript:;" title="暂停投放"><i class="Hui-iconfont" style="font-size:16px;">&#xe631;</i></a>&nbsp;&nbsp;
                        @elseif ($item->status == 2)  
                            <a style="text-decoration:none" onclick="edit_status('/admin/advert/status/{{$item->id}}/1')" href="javascript:;" title="恢复投放"><i class="Hui-iconfont" style="font-size:16px;">&#xe6e1;</i></a>&nbsp;&nbsp;
                        @endif 
						<a title="编辑" href="javascript:;" onclick="edit_page('编辑广告','/admin/advert/edit/{{$item->id}}','800','600')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6df;</i></a>&nbsp;&nbsp;
						<a title="删除" href="javascript:;" onclick="del(this,'/admin/advert/del','{{$item->id}}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6e2;</i></a>
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
                    targets: [0, 10],
                    orderable: false
                }
            ],
            // 客户搜索隐藏
            searching: false,
        })
    });
</script>

@endsection