@extends('layout.main')

@section('content')

<article class="page-container">
	<form class="form form-horizontal" id="form-agreement">
        @csrf
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>标题：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<span>{{$info->title}}</span>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">
				<span class="c-red">*</span>所属平台：</label>
			<div class="formControls col-xs-8 col-sm-9">
				{{$info->platfrom}}
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">内容详情：</label>
			<div class="formControls col-xs-8 col-sm-9"> 
				{!! $info->content !!}
			</div>
		</div>
	</form>
</article>

@endsection
