@extends('layout.main')
@section('css')
<link rel="stylesheet" type="text/css" href="/css/pagination.css" />
@endsection
@section('content')
<nav class="breadcrumb">
    <i class="Hui-iconfont">&#xe67f;</i>首页
    <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container">
    <form action="{{route('admin.user.recycle_index')}}" method="get">
        <div class="text-c r">
            <input type="text" class="input-text" style="width:250px" placeholder="姓名" name="nickname" id="nickname" value="{{request()->get('nickname','')}}"  autocomplete = 'off'>
            <button type="submit" class="btn btn-success radius" id="searchbtn"><i class="Hui-iconfont">&#xe665;</i> 搜用户</button>
        </div>
    </form>
    <div class="mt-40">
    <div class="cl pd-5 bg-1 bk-gray"> <span class="r">共有数据：<strong>{{$list->total()}}</strong> 条</span> </div>
        <table class="table table-border table-bordered table-hover table-bg">
            <thead>
                <tr class="text-c">
                    <th width="80">ID</th>
                    <th width="100">会员昵称</th>
                    <th width="150">绑定手机号</th>
                    <th width="50">累计交易次数</th>
                    <th width="50">累计交易金额</th>
                    <th width="100">注册时间</th>
                    <th width="100">操作</th>
                </tr>
            </thead>
            <tbody>
                @foreach($list as $item)
                <tr class="text-c">
                    <td>{{$item->id }}</td>
                    <td>{{$item->nickname}}</td>
                    <td>{{$item->phone}}</td>
                    <td>{{$item->statistics->num}}</td>
                    <td>{{$item->statistics->money}}</td>
                    <td>{{date('Y-m-d',$item->add_time)}}</td>
					<td class="td-manage">
                        <a title="查看详情" href="javascript:;" onclick="full_page('查看详情','/admin/user/show/{{$item->id}}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe720;</i></a>
                        <a title="恢复" href="javascript:;" onclick="restore(this,'/admin/user/restore','{{$item->id}}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6e1;</i></a>
					</td>
                </tr>
                @endforeach
            </tbody>
        </table>
        {{ $list->links() }}
    </div>
</div>
@endsection
