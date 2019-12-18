@extends('layout.main')

@section('css')
<meta name="csrf-token" content="{{ csrf_token() }}">
<link rel="stylesheet" type="text/css" href="{{ asset('admin') }}/css/mike_css.css">
@endsection

@section('content')

<article class="page-container">
    <form class="form form-horizontal" id="form-advert">
        @csrf
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>广告位名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box">
                    <select name="advert_position_id" class="select">
                        <option value="">请选择广告位</option>
                        @foreach ($advert_position_list as $item) 
                            <option value="{{$item->id}}" {{$info->advert_position_id == $item->id ? 'selected' : ''}}>{{$item->name}}</option>
                        @endforeach
                    </select>
                </span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>广告名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="{{$info->title}}" placeholder="广告名称" id="title" name="title"  onblur="input_check(this)" autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>覆盖范围：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box">
                    <select name="coverage" class="select">
                        <option value="">请选择覆盖范围</option>
                        <option value="0" {{$info->coverage == 0 ? 'selected' : ''}}>全部</option>
                        @foreach ($school_list as $item) 
                            <option value="{{$item->id}}" {{$info->coverage == $item->id ? 'selected' : ''}}>{{$item->name}}</option>
                        @endforeach
                    </select>
                </span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>广告指向：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box">
                    <select name="type" class="select">
                        <option value="">请选择广告指向</option>
                        <option value="1" {{$info->type == 1 ? 'selected' : ''}}>内链(本小程序内部链接)</option>
                        <option value="2" {{$info->type == 2 ? 'selected' : ''}}>外链（H5链接）</option>
                        <option value="3" {{$info->type == 3 ? 'selected' : ''}}>静态图</option>
                    </select>
                </span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3">指向链接：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="{{$info->link_url}}" placeholder="指向链接" id="link_url" name="link_url"  onblur="input_check(this)"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3">广告投放时间：</label>
            <div class="formControls col-xs-8 col-sm-9">
            <input type="text" onfocus="WdatePicker()" name="start_time" id="datemin" value="{{$info->str_start_time}}" class="input-text Wdate" style="width:33%;"  autocomplete = 'off'>
            -
            <input type="text" onfocus="WdatePicker()" name="end_time" id="datemax" value="{{$info->str_end_time}}" class="input-text Wdate" style="width:33%;"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>位置排序：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="{{$info->sort}}" placeholder="位置排序" id="sort" name="sort"  onblur="input_check(this)"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>广告图：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <div class="imgbox" id="mike_img_style_big">
					<div class="imgnum">
						<input type="file" class="filepath" name="" value="" />
						<input type="hidden" name="imgurl" value="{{$info->imgurl}}" id="imgurl" />
						<img src="{{$info->imgurl}}" class="img1" />
					</div>
				</div>
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-3 col-sm-offset-3">
                <input class="btn btn-primary radius" type="button"   onclick="advert_submit('/admin/advert/update/{{$info->id}}')" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                <button onclick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</article>

@endsection

@section('js')
<script src="{{ asset('admin') }}/js/advertposition.js"></script>

@endsection