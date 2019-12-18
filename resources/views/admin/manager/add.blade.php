@extends('layout.main')

@section('content')

<article class="page-container">
    <form class="form form-horizontal" id="form-admin">
        @csrf
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>管理员：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="管理员"  id="username" name="username" onblur="input_check(this)"  autocomplete = 'off'> 
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>初始密码：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="password" class="input-text" autocomplete="off" value="" placeholder="密码" id="password" name="password"  onblur="input_check(this)"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>确认密码：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="password" class="input-text" autocomplete="off" placeholder="确认新密码" id="password_confirmation" name="password_confirmation"  onblur="input_check(this)"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>手机：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="手机号" id="phone" name="phone"  onblur="input_check(this)"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3">角色：</label>
            <div class="formControls col-xs-8 col-sm-9"> <span class="select-box" style="width:150px;">
                    <select class="select" name="role_id" id='role_id' size="1">
                        <option value="">请选择角色</option>
                        @foreach($list as $item)
                        <option value="{{$item->id}}">{{$item->name}}</option>
                        @endforeach
                    </select>
                </span> 
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-3 col-sm-offset-3">
                <input class="btn btn-primary radius" type="button" id="admin-add-submit"  onclick="admin_submit('/admin/manager/insert')" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                <button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</article>

@endsection

@section('js')
<script src="{{ asset('admin') }}/js/manager.js"></script>

@endsection