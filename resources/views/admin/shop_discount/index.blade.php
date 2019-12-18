@extends('layout.main')

@section('content')
<div class="page-container">
    <div class="cl pd-5 bg-1 bk-gray mt-20"><span class="l"><a href="javascript:;" onclick="add_page('添加满减活动','/admin/shop_discount/create/{{$id}}','600','300')" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加满减活动</a></span> </div>
    <div>
        <table class="table table-border table-bordered table-hover table-bg">
            <thead>
                <tr class="text-c">
                    <th width="20">ID</th>
                    <th width="100">满减门槛</th>
                    <th width="150">满减金额</th>
                    <th width="100">平台承担金额</th>
                    <th width="80">操作</th>
                </tr>
            </thead>
            <tbody>
                @foreach($list as $item)
                <tr class="text-c">
                    <td>{{$item->id }}</td>
                    <td>{{$item->threshold}}</td>
                    <td>{{$item->face_value}}</td>
                    <td>{{$item->platform_assume}}</td>
					<td class="td-manage">
                        <a title="编辑" href="javascript:;" onclick="edit_page('编辑满减','/admin/shop_discount/edit/{{$item->id}}','600','300')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6df;</i></a>
						<a title="删除" href="javascript:;" onclick="del(this,'/admin/shop_discount/del','{{$item->id}}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6e2;</i></a>
					</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection