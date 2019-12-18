@extends('layout.main')

@section('content')
<nav class="breadcrumb">
    <i class="Hui-iconfont">&#xe67f;</i>首页
    <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container">
    <form action="{{route('admin.school.index')}}" method="get">
        <div class="text-c r">
            <span class="select-box inline">
                <select name="fid" class="select">
                    <option value="">请选择学校区域</option>
                    <option value="">全部</option>
                    @foreach ($area_list as $item) 
                    <option value="{{$item->id}}" {{request()->get('fid') == $item->id ? 'selected' : ''}}>{{$item->name}}</option>
                    @endforeach
                </select>
            </span>
            <input type="text" class="input-text" style="width:250px" placeholder="学校名称" name="name" id="name" value="{{request()->get('name','')}}" autocomplete = 'off'>
            <button type="submit" class="btn btn-success radius" id="searchbtn"><i class="Hui-iconfont">&#xe665;</i> 搜学校</button>
        </div>
    </form>
    <div class="cl pd-5 bg-1 bk-gray mt-40"><span class="l"><a href="javascript:;" onclick="add_page('添加学校','/admin/school/create','800','500')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加学校</a></span> </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-hover table-bg table-sort">
            <thead>
                <tr class="text-c">
                    <th width="25"><input type="checkbox" name="" value=""></th>
                    <th width="80">ID</th>
                    <th width="100">学校名称</th>
                    <th width="100">区域</th>
                    <th width="100">经纬度</th>
                    <th width="150">包含食堂</th>
                    <th width="50">订单预估送餐时间值</th>
                    <th width="130">骑手预估取餐时间值</th>
                    <th width="100">操作</th>
                </tr>
            </thead>
            <tbody>
                @foreach($list as $item)
                <tr class="text-c">
                    <td><input type="checkbox" value="{{ $item->id }}" name="ids[]"></td>
                    <td>{{$item->id }}</td>
                    <td>{{$item->name}}</td>
                    <td>{{$item->area}}</td>
                    <td>经度：{{$item->longitude}} &nbsp;&nbsp;&nbsp;&nbsp; 纬度：{{$item->latitude}}</td>
                    <td>{{implode(',',array_column(json_decode($item->canteens,true),'name'))}}</td>
                    <td>{{$item->completion_time}}</td>
                    <td>{{$item->fetch_time}}</td>
					<td class="td-manage">
						<a title="编辑" href="javascript:;" onclick="edit_page('编辑学校','/admin/school/edit/{{$item->id}}','800','500')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6df;</i></a>
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
                    targets: [0, 8],
                    orderable: false
                }
            ],
            // 客户搜索隐藏
            searching: false,
        })
    });
</script>

@endsection