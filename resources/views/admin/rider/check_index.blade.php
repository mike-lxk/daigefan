@extends('layout.main')

@section('content')
<nav class="breadcrumb">
    <i class="Hui-iconfont">&#xe67f;</i>首页
    <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container">
    <form action="{{route('admin.rider.check_index')}}" method="get">
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
                    <option value="2">审核失败</option>
                </select>
            </span>
            <input type="text" class="input-text" style="width:250px" placeholder="骑手姓名" name="name" id="name" value="{{request()->get('name','')}}"  autocomplete = 'off'>
            <button type="submit" class="btn btn-success radius" id="searchbtn"><i class="Hui-iconfont">&#xe665;</i> 搜骑手</button>
        </div>
    </form>
    <div class="mt-40">
        <table class="table table-border table-bordered table-hover table-bg">
            <thead>
                <tr class="text-c">
                    <th width="80">ID</th>
                    <th width="150">头像</th>
                    <th width="100">姓名</th>
                    <th width="100">昵称</th>
                    <th width="150">联系方式</th>
                    <th width="100">手持身份证照</th>
                    <th width="50">注册所在学校</th>
                    <th width="60">申请时间</th>
                    <th width="60">状态</th>
                    <th width="100">操作</th>
                </tr>
            </thead>
            <tbody>
                @foreach($list as $item)
                <tr class="text-c">
                    <td>{{$item->id }}</td>
                    <td><img src="{{$item->headimgurl}}" style="height:60px"></td>
                    <td>{{$item->name}}</td>
                    <td>{{$item->nickname}}</td>
                    <td>{{$item->phone}}</td>
                    <td><img src="{{$item->hand_card_img}}" style="height:60px"></td>
                    <td>{{$item->school->name}}</td> 
                    <td>{{date('Y-m-d',$item->add_time)}}</td>
                    <td class="td-status">
                        @if($item->status == 1)
                            <span class="label label-success radius">待审核</span>
                        @else
                            <span class="label label-default radius">审核失败</span>
                        @endif
                    </td>
					<td class="td-manage">
                        @if ($item->status == 1) 
                        <a style="text-decoration:none" onClick="check_status(this,'/admin/rider/status/{{$item->id}}')" href="javascript:;" title="审核">审核</a>
                        @endif
                        <a title="查看详情" href="javascript:;" onclick="full_page('查看详情','/admin/rider/check_show/{{$item->id}}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe720;</i></a>
                    
                        <a title="删除" href="javascript:;" onclick="del(this,'/admin/rider/del','{{$item->id}}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6e2;</i></a>

					</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection

@section('js')
<script src="{{ asset('admin') }}/js/rider.js"></script>
@endsection
