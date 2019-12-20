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
    <form action="{{route('admin.feedback.index')}}" method="get">
        <div class="text-c r">
            <span class="select-box inline">
                <select name="status" class="select">
                    <option value="">请选择处理状态</option>
                    <option value=""  >全部</option>
                    <option value="1"  {{request()->get('status') == 1 ? 'selected' : ''}}>未处理</option>
                    <option value="2"  {{request()->get('status') == 2 ? 'selected' : ''}}>已处理</option>
                    <option value="3"  {{request()->get('status') == 3 ? 'selected' : ''}}>不予处理</option>
                </select>
            </span>
            <button type="submit" class="btn btn-success radius" id="searchbtn"><i class="Hui-iconfont">&#xe665;</i> 搜反馈</button>
        </div>
    </form>
    <div class="mt-40">
        <div class="cl pd-5 bg-1 bk-gray"> <span class="r">共有数据：<strong>{{$list->total()}}</strong> 条</span> </div>
        <table class="table table-border table-bordered table-hover table-bg">
            <thead>
                <tr class="text-c">
                    <th width="25"><input type="checkbox" name="" value=""></th>
                    <th width="30">ID</th>
                    <th width="200">反馈内容</th>
                    <th width="60">用户昵称</th>
                    <th width="80">手机号</th>
                    <th width="100">反馈日期</th>
                    <th width="50">状态</th>
                    <th width="100">操作</th>
                </tr>
            </thead>
            <tbody>
                @foreach($list as $item)
                <tr class="text-c">
                    <td><input type="checkbox" value="{{ $item->id }}" name="ids[]"></td>
                    <td>{{$item->id }}</td>
                    <td class="text-l">{{$item->content}}</td>
                    <td>{{$item->user->nickname}}</td>
                    <td>{{$item->user->phone}}</td>
                    <td>{{date('Y-m-d H:i',$item->add_time)}}</td>
                    <td>{{$item->status == 1 ? '未处理' :($item->status == 2 ? '已处理' : '不予处理') }}</td>
					<td class="td-manage">
                        @if ($item->status == 1) 
                            <a style="text-decoration:none" onClick="check_status(this,'/admin/feedback/status/{{$item->id}}')" href="javascript:;" title="处理">处理</a>
                        @endif
                        <a title="查看详情" href="javascript:;" onclick="edit_page('查看详情','/admin/feedback/show/{{$item->id}}','600','400')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe720;</i></a>
						<a title="删除" href="javascript:;" onclick="del(this,'/admin/feedback/del','{{$item->id}}')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont" style="font-size:16px;">&#xe6e2;</i></a>
                        
					</td>
                </tr>
                @endforeach
            </tbody>
        </table>
        {{ $list->links() }}
    </div>
</div>
@endsection

@section('js')

<script src="{{ asset('admin') }}/js/feedback.js"></script>
@endsection