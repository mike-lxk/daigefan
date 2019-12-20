@extends('layout.main')

@section('content')

<article class="page-container">
    <form class="form form-horizontal" id="form-canteen">
        @csrf
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>学校：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box">
                    <select name="school_id" class="select">
                        <option value="">请选择学校</option>
                        @foreach ($school_list as $item) 
                            <option value="{{$item->id}}">{{$item->name}}</option>
                        @endforeach
                    </select>
                </span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>食堂名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="" placeholder="食堂名称" id="name" name="name"  onblur="input_check(this)" autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>抽成比例：</label>
            <div class="formControls col-xs-8 col-sm-9">
            <input type="text" class="input-text"  value="" placeholder="抽成比例" id="cut_proportion" name="cut_proportion"  onblur="input_check(this)" autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>账户名：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="" placeholder="账户名" id="account" name="account"  onblur="input_check(this)"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>密码：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="30" placeholder="密码" id="cleartext" name="cleartext"  onblur="input_check(this)"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>提现模式：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box">
                    <select name="withdraw_cycle" class="select">
                        <option value="">请选择提现模式</option>
                        <option value="1">T+1</option>
                        <option value="7">T+7</option>
                        <option value="30">T+30</option>
                    </select>
                </span>
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-3 col-sm-offset-3">
                <input class="btn btn-primary radius" type="button"   onclick="canteen_submit('/admin/canteen/insert')" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                <button onclick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</article>

@endsection

@section('js')
<script src="{{ asset('admin') }}/js/configuration.js"></script>

@endsection