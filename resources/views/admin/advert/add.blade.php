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
                            <option value="{{$item->id}}">{{$item->name}}</option>
                        @endforeach
                    </select>
                </span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>广告名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="" placeholder="广告名称" id="title" name="title"  onblur="input_check(this)" autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>覆盖范围：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box">
                    <select name="coverage" class="select">
                        <option value="">请选择覆盖范围</option>
                        <option value="0">全部</option>
                        @foreach ($school_list as $item) 
                            <option value="{{$item->id}}">{{$item->name}}</option>
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
                        <option value="1">内链(本小程序内部链接)</option>
                        <option value="2">外链（H5链接）</option>
                        <option value="3">静态图</option>
                    </select>
                </span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3">指向链接：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="" placeholder="指向链接" id="link_url" name="link_url"  onblur="input_check(this)"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3">广告投放时间：</label>
            <div class="formControls col-xs-8 col-sm-9">
            <input type="text" onfocus="WdatePicker()" name="start_time" id="datemin" value="" class="input-text Wdate" style="width:33%;"  autocomplete = 'off'>
            -
            <input type="text" onfocus="WdatePicker()" name="end_time" id="datemax" value="" class="input-text Wdate" style="width:33%;"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>位置排序：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="100" placeholder="位置排序" id="sort" name="sort"  onblur="input_check(this)"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>广告图：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <div class="imgbox" id="mike_img_style_big">
					<div class="imgnum">
						<input type="file" class="filepath" name="" value="" />
						<input type="hidden" name="imgurl" value="" id="imgurl" />
						<img src="{{ asset('admin') }}/images/addUpload.png" class="img1" />
					</div>
				</div>
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-3 col-sm-offset-3">
                <input class="btn btn-primary radius" type="button"   onclick="advert_submit('/admin/advert/insert')" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                <button onclick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</article>

@endsection

@section('js')
<script src="{{ asset('admin') }}/js/advertposition.js"></script>

@endsection