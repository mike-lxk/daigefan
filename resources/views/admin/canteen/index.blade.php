@extends('layout.main')

@section('content')
<nav class="breadcrumb">
    <i class="Hui-iconfont">&#xe67f;</i>首页
    <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container">
    <form action="{{route('admin.canteen.index')}}" method="get">
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
            <input type="text" class="input-text" style="width:250px" placeholder="食堂名称" name="name" id="name" value="{{request()->get('name','')}}"  autocomplete = 'off'>
            <button type="submit" class="btn btn-success radius" id="searchbtn"><i class="Hui-iconfont">&#xe665;</i> 搜食堂</button>
        </div>
    </form>
    <div class="cl pd-5 bg-1 bk-gray mt-40"><span class="l"><a href="javascript:;" onclick="add_page('添加食堂','/admin/canteen/create','800','500')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加食堂</a></span> </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-hover table-bg table-sort">
            <thead>
                <tr class="text-c">
                    <th width="25"><input type="checkbox" name="" value=""></th>
                    <th width="80">ID</th>
                    <th width="100">食堂名称</th>
                    <th width="150">所属学校</th>
                    <th width="100">抽成比例</th>
                    <th width="100">账户名</th>
                    <th width="150">密码</th>
                    <th width="50">提现模式</th>
                    <th width="100">操作</th>
                </tr>
            </thead>
            <tbody>
                @foreach($list as $item)
                <tr class="text-c">
                    <td><input type="checkbox" value="{{ $item->id }}" name="ids[]"></td>
                    <td>{{$item->id }}</td>
                    <td>{{$item->name}}</td>
                    <td>{{$item->school->name}}</td>
                    <td>{{$item->cut_proportion}}</td>
                    <td>{{$item->account}}</td>
                    <td>{{$item->cleartext}}</td>
                    <td>T+{{$item->withdraw_cycle}}</td>
					<td class="td-manage">
                        <a title="编辑" href="javascript:;" onclick="edit_page('编辑食堂','/admin/canteen/edit/{{$item->id}}','800','500')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6df;</i></a>
						<a title="删除" href="javascript:;" onclick="del(this,'/admin/canteen/del','{{$item->id}}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6e2;</i></a>
                        
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