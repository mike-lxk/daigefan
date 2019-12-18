@extends('layout.main')

@section('content')

<article class="page-container">
    
    <form class="form form-horizontal" id="form-shop">
        @csrf
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>门店名称：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span>{{$info->shop_name}}</span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>校内商家排名：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="{{$info->sort}}" placeholder="校内商家排名" id="sort" name="sort"  onblur="input_check(this)" autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>平台抽成比例：</label>
            <div class="formControls col-xs-8 col-sm-9">
            <input type="text" class="input-text"  value="{{$info->segmentation}}" placeholder="平台抽成比例" id="segmentation" name="segmentation"  onblur="input_check(this)" autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>商品调价：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <div class="radio-box" style="padding-left: 0px;">
                    <input name="hike_type" type="radio" id="sex-1" value="1" {{$info->hike_type == 1 ? 'checked' : ''}} >
                    <label for="sex-1">固定金额加价（元）</label>
                </div>
                <div class="radio-box">
                    <input name="hike_type" type="radio" id="sex-2" value="2"  {{$info->hike_type == 2 ? 'checked' : ''}}>
                    <label for="sex-2">按比例提价（百分制）</label>
                </div>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"></label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="{{$info->price_hike}}" placeholder="商品调价" id="price_hike" name="price_hike"   autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>提现模式：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <span class="select-box">
                    <select name="withdraw_cycle" class="select">
                        <option value="">请选择提现模式</option>
                        <option value="1"  {{$info->withdraw_cycle == 1 ? 'selected' : ''}}>T+1</option>
                        <option value="7"  {{$info->withdraw_cycle == 7 ? 'selected' : ''}}>T+7</option>
                        <option value="30" {{$info->withdraw_cycle == 30 ? 'selected' : ''}}>T+30</option>
                    </select>
                </span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3">打印设备编号：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="{{$info->print_device_sn}}" placeholder="打印设备编号" id="print_device_sn" name="print_device_sn"   autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-3 col-sm-offset-3">
                <input class="btn btn-primary radius" type="button"   onclick="shop_submit('/admin/shop/update/{{$info->id}}')" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                <button onclick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</article>

@endsection

@section('js')
<script src="{{ asset('admin') }}/js/shop.js"></script>

@endsection