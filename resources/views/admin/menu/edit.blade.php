@extends('layout.main')

@section('content')
<div class="page-container">
    <form action="" id="form-menu">
    @csrf
	<div class="row cl" style="margin-bottom:15px;margin-right:25px;">
		<label class="form-label col-xs-4 col-sm-3" style="text-align:right;"><span class="c-red">*</span>上级菜单名：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<select name="fid" size="1" class="select" >
				<option value=0>顶级分类</option>
                @foreach($list as $item)
					<option value="{{$item->id}}"  {{$info->fid == $item->id ? 'selected' : ''}}  >
						{{str_repeat('--',$item->level - 1 )}}{{$item->name}}
					</option>
                @endforeach
			</select>
		</div>
	</div>
	<div class="row cl" style="margin-bottom:15px;margin-right:25px;">
		<label class="form-label col-xs-4 col-sm-3" style="text-align:right;"><span class="c-red">*</span>菜单名：</label>
		<div class="formControls col-xs-8 col-sm-9 skin-minimal">
			<input type="text" name="name" value="{{$info->name}}" class="input-text" onblur="input_check(this)"  autocomplete = 'off'>
		</div>
	</div>
	<div class="row cl" style="margin-bottom:15px;margin-right:25px;">
		<label class="form-label col-xs-4 col-sm-3" style="text-align:right;">路由(route)：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="text" name="link_url" value="{{$info->link_url}}" class="input-text"  autocomplete = 'off'>
		</div>
	</div>
	<div class="row cl" style="margin-bottom:15px;margin-right:25px;">
		<label class="form-label col-xs-4 col-sm-3" style="text-align:right;">状态：</label>
		<div class="formControls col-xs-8 col-sm-9"><span class="btn-upload form-group">
			<input type="radio" name="status" value="1" {{$info->status == 1 ? 'checked' : '' }} >开启
			<input type="radio" name="status" value="0" {{$info->status == 0 ? 'checked' : '' }} >关闭
		</span> </div>
	</div>
	<div class="row cl">
		<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
            <input class="btn btn-primary radius" type="button"  onclick="menu_submit('/admin/menu/update/{{$info->id}}')" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
            <button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
		</div>
    </div>
    </form>
</div>


@endsection

@section('js')
<script src="{{ asset('admin') }}/js/manager.js"></script>
@endsection