@extends('layout.main')
@section('css')
<meta name="csrf-token" content="{{ csrf_token() }}">
<link rel="stylesheet" type="text/css" href="{{ asset('admin') }}/css/mike_css.css">
@endsection

@section('content')

<article class="page-container">
    <form class="form form-horizontal" id="form-category">
        @csrf
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="{{$info->name}}" placeholder="名称" id="name" name="name"  onblur="input_check(this)" autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>排序：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="{{$info->sort}}" placeholder="排序" id="sort" name="sort"  onblur="input_check(this)"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>图标：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <div class="imgbox" id="mike_img_style_small">
					<div class="imgnum">
						<input type="file" class="filepath" name="" value="" />
						<input type="hidden" name="img" value="{{$info->img}}" id="img" />
						<img src="{{$info->img}}" class="img1" />
					</div>
				</div>
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-3 col-sm-offset-3">
                <input class="btn btn-primary radius" type="button"   onclick="category_submit('/admin/category/update/{{$info->id}}')" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                <button onclick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</article>

@endsection

@section('js')
<script src="{{ asset('admin') }}/js/configuration.js"></script>

@endsection