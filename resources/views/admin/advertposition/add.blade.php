@extends('layout.main')

@section('content')

<article class="page-container">
    <form class="form form-horizontal" id="form-advertposition">
        @csrf
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>广告位名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="广告位名称"  id="name" name="name" onblur="input_check(this)"  autocomplete = 'off'> 
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>宽度：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="" placeholder="宽度" id="white" name="white"  onblur="input_check(this)"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>高度：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="高度" id="height" name="height"  onblur="input_check(this)"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>数量：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="数量" id="num" name="num"  onblur="input_check(this)"  autocomplete = 'off'> 
            </div>
        </div>
        <div class="row cl" style="margin-bottom:15px;margin-right:25px;">
		<label class="form-label col-xs-4 col-sm-3" style="text-align:right;">状态：</label>
		<div class="formControls col-xs-8 col-sm-9"><span class="btn-upload form-group">
			<input type="radio" name="status" value="1" checked>开启
			<input type="radio" name="status" value="0">关闭
		</span> </div>
	</div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-3 col-sm-offset-3">
                <input class="btn btn-primary radius" type="button"   onclick="advertposition_submit('/admin/advert_position/insert')" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                <button onclick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</article>

@endsection

@section('js')
<script src="{{ asset('admin') }}/js/advertposition.js"></script>

@endsection