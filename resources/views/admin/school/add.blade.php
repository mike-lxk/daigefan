@extends('layout.main')

@section('content')

<article class="page-container">
    <form class="form form-horizontal" id="form-school">
        @csrf
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>学校区域：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box">
                    <select name="fid" class="select">
                        <option value="">请选择学校区域</option>
                        @foreach ($area_list as $item) 
                            <option value="{{$item->id}}">{{$item->name}}</option>
                        @endforeach
                    </select>
                </span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>学校名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="" placeholder="学校名称" id="name" name="name"  onblur="input_check(this)" autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>经度（E）：</label>
            <div class="formControls col-xs-8 col-sm-9">
            <input type="text" class="input-text"  value="" placeholder="经度（E）" id="longitude" name="longitude"  onblur="input_check(this)" autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3">纬度（N）：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="" placeholder="纬度（N）" id="latitude" name="latitude"  onblur="input_check(this)"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>订单预估送达时间：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="30" placeholder="订单预估送达时间" id="completion_time" name="completion_time"  onblur="input_check(this)"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>骑手取餐时间：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="15" placeholder="骑手取餐时间" id="fetch_time" name="fetch_time"  onblur="input_check(this)"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-3 col-sm-offset-3">
                <input class="btn btn-primary radius" type="button"   onclick="school_submit('/admin/school/insert')" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                <button onclick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</article>

@endsection

@section('js')
<script src="{{ asset('admin') }}/js/configuration.js"></script>

@endsection