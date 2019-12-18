@extends('layout.main')

@section('content')

<article class="page-container">
<form class="form form-horizontal" id="form-role">
    @csrf
	<div class="row cl" style="margin-bottom:15px;margin-right:25px;">
		<label class="form-label col-xs-4 col-sm-2" style="text-align:right;"><span class="c-red">*</span>角色名称：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="text" class="input-text" value="{{$info->name}}" id="name" name="name" onblur="input_check(this)"  autocomplete = 'off'>
		</div>
	</div>
	<div class="row cl" style="margin-bottom:15px;margin-right:25px;">
		<label class="form-label col-xs-4 col-sm-2" style="text-align:right;">备注：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="text" class="input-text" value="{{$info->depict}}" placeholder="" id="depict" name="depict"  autocomplete = 'off'>
		</div>
	</div>
	<div class="row cl" style="margin-bottom:15px;margin-right:25px;">
		<label class="form-label col-xs-4 col-sm-2" style="text-align:right;">网站菜单：</label>
		<div class="formControls col-xs-8 col-sm-9">
            @foreach($list as $item)
                    @if($item->fid == 0)
					<dl class="permission-list">
						<dt>
							<label>
								<input type="checkbox" value="{{$item->id}}" name="choose" id="user-Character-0" {{in_array($item->id, explode(',',$info->node_ids))? 'checked' : ''}} >
								{{$item->name}}</label>
						</dt>
						<dd>
                            @foreach($list as $utils)
                                @if($utils->fid == $item->id)
									<label class="">
										<input type="checkbox" value="{{$utils->id}}" name="choose"  {{in_array($utils->id, explode(',',$info->node_ids))? 'checked' : ''}} id="user-Character-0-0-0">
										{{$utils->name}}
									</label>&nbsp;&nbsp;&nbsp;
                                @endif
                            @endforeach
						</dd>
                    </dl>
                @endif
            @endforeach
		</div>
	</div>
	<div class="row cl">
		<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
            <input class="btn btn-primary radius" type="button"  onclick="role_submit('/admin/role/update/{{$info->id}}')" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
            <button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
		</div>
    </div>
</form>
</article>
@endsection

@section('js')
<script src="{{ asset('admin') }}/js/manager.js"></script>
@endsection