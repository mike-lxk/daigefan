@extends('layout.main')

@section('content')

<article class="page-container">
	<form class="form form-horizontal" id="form-agreement">
        @csrf
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>标题：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" placeholder="" id="title" name="title" value="{{$info->title}}" onblur="input_check(this)"  autocomplete = 'off'>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">
				<span class="c-red">*</span>所属平台：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
					<select name="platfrom" class="select">
						<option value="">请选择所属平台</option>
                        <option value="1" {{$info->platfrom == '用户端' ? 'selected' : ''}}>用户端</option>
                        <option value="2" {{$info->platfrom == '商家端' ? 'selected' : ''}}>商家端</option>
                        <option value="3" {{$info->platfrom == '骑手端' ? 'selected' : ''}}>骑手端</option>
					</select>
				</span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">内容详情：</label>
			<div class="formControls col-xs-8 col-sm-9"> 
				<script id="editor" name='content' type="text/plain" style="width:100%;height:300px;">{!! $info->content !!}</script> 
			</div>
		</div>
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onclick="agreement_submit('/admin/agreement/update/{{$info->id}}')"  class="btn btn-primary radius" type="button"><i class="Hui-iconfont">&#xe632;</i> 确认修改</button>
				<button onclick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</form>
</article>

@endsection

@section('js')
<script type="text/javascript" src="{{ asset('admin') }}/lib/ueditor/1.4.3/ueditor.config.js"></script> 
<script type="text/javascript" src="{{ asset('admin') }}/lib/ueditor/1.4.3/ueditor.all.min.js"> </script> 
<script type="text/javascript" src="{{ asset('admin') }}/lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>
<script src="{{ asset('admin') }}/js/agreement.js"></script>

@endsection