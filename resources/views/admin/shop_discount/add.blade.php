@extends('layout.main')

@section('content')
<article class="page-container">
    <form class="form form-horizontal" id="form-shop_discount">
        @csrf
        <input type="hidden" name="shop_id" value="{{$shop_id}}">
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>满减门槛：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="" placeholder="满减门槛" id="threshold" name="threshold"  onblur="input_check(this)" autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>满减金额：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text"  value="" placeholder="满减金额" id="face_value" name="face_value"  onblur="input_check(this)"  autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><span class="c-red">*</span>平台承担金额：</label>
            <div class="formControls col-xs-8 col-sm-9">
            <input type="text" class="input-text"  value="" placeholder=" 平台承担金额" id="platform_assume" name="platform_assume"  onblur="input_check(this)" autocomplete = 'off'>
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-3 col-sm-offset-3">
                <input class="btn btn-primary radius" type="button"   onclick="shop_discount_submit('/admin/shop_discount/insert')" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                <button onclick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</article>

@endsection

@section('js')
<script src="{{ asset('admin') }}/js/shop.js"></script>

@endsection