@extends('layout.main')

@section('content')
<nav class="breadcrumb">
    <i class="Hui-iconfont">&#xe67f;</i>首页
    <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container">
    <form action="{{route('admin.manager.index')}}" method="get">
        <div class="text-c"> 日期范围：
            <input type="text" onfocus="WdatePicker()" name="ltime" id="datemin" value="{{request()->get('ltime','')}}" class="input-text Wdate" style="width:120px;"  autocomplete = 'off'>
            -
            <input type="text" onfocus="WdatePicker()" name="rtime" id="datemax" value="{{request()->get('rtime','')}}" class="input-text Wdate" style="width:120px;"  autocomplete = 'off'>
            <input type="text" class="input-text" style="width:250px" placeholder="输入管理员名称、电话" name="keywords" id="keywords" value="{{request()->get('keywords','')}}"  autocomplete = 'off'>
            <button type="submit" class="btn btn-success radius" id="searchbtn"><i class="Hui-iconfont">&#xe665;</i> 搜用户</button>
        </div>
    </form>
    <div class="cl pd-5 bg-1 bk-gray mt-20"><span class="l"><a href="javascript:;" onclick="add_page('添加用户','/admin/manager/create','600','400')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加用户</a></span> </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-hover table-bg table-sort">
            <thead>
                <tr class="text-c">
                    <th width="25"><input type="checkbox" name="" value=""></th>
                    <th width="80">ID</th>
                    <th width="100">用户名</th>
                    <th width="130">角色</th>
                    <th width="130">加入时间</th>
                    <th width="70">状态</th>
                    <th width="100">操作</th>
                </tr>
            </thead>
            <tbody>
                @foreach($list as $item)
                <tr class="text-c">
                    <td><input type="checkbox" value="{{ $item->id }}" name="ids[]"></td>
                    <td>{{ $item->id }}</td>
                    <td>{{ $item->username }}</td>
                    <td>{{ $item->role->name }}</td>
                    <td>{{ $item->create_time }}</td>
                    <td class="td-status"><span class="label label-success radius">已启用</span></td>
                    <td class="td-manage">
                        <a title="编辑" href="javascript:;" onclick="edit_page('管理员编辑','/admin/manager/edit/{{$item->id}}','600','400')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6df;</i></a>&nbsp;&nbsp;
                        <a title="删除" href="javascript:;" onclick="del(this,'/admin/manager/del','{{$item->id}}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6e2;</i></a>
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
                [1, 'desc']
            ],
            // 设置 第1列和最后一列不排序
            columnDefs: [
                // 第1列和第10列不排序 因为索引是从0开始
                {
                    targets: [0, 6],
                    orderable: false
                }
            ],
            // 客户搜索隐藏
            searching: false,
        })
    });
</script>

@endsection