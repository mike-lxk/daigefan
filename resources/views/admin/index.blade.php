<!DOCTYPE HTML>
<html>

<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" type="text/css" href="{{ asset('admin') }}/static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="{{ asset('admin') }}/static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="{{ asset('admin') }}/lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="{{ asset('admin') }}/static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="{{ asset('admin') }}/static/h-ui.admin/css/style.css" />
    <title>后台管理</title>
</head>

<body>
    <header class="navbar-wrapper">
        <div class="navbar navbar-fixed-top">
            <div class="container-fluid cl">
                <a class="logo navbar-logo f-l mr-10 hidden-xs" href="{{ route('admin.index') }}">饭点送后台管理系统</a>
                <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
                <nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
                    <ul class="cl">
                        <li>超级管理员</li>
                        <li class="dropDown dropDown_hover">
                            <a href="#" class="dropDown_A">Mike<i class="Hui-iconfont">&#xe6d5;</i></a>
                            <ul class="dropDown-menu menu radius box-shadow">
                                <li><a href="{{ route('admin.logout') }}">退出</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <aside class="Hui-aside">
        <div class="menu_dropdown bk_2">
            @foreach ($node_list as $vo)
                @if ($vo->level == 1)
                    <dl id="menu-article">
                        <dt>
                            <i class="Hui-iconfont">{{$vo->icons}}</i>&nbsp;&nbsp;{{$vo->name}}
                            <i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
                        </dt>
                        <dd>
                            @foreach ($node_list as $v)
                                 @if ($v->fid == $vo->id)
                                    <ul>
                                        <li>
                                            <a data-href="{{ route($v->link_url) }}" data-title="{{$v->name}}" href="javascript:void(0)">{{$v->name}}</a>
                                        </li>
                                    </ul>
                                @endif
                            @endforeach
                        </dd>
                    </dl>
                @endif
            @endforeach
        </div>
    </aside>
    <div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
    <section class="Hui-article-box">
        <div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
            <div class="Hui-tabNav-wp">
                <ul id="min_title_list" class="acrossTab cl">
                    <li class="active">
                        <span title="我的桌面" data-href="welcome.html">我的桌面</span>
                        <em></em></li>
                </ul>
            </div>
            <div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a></div>
        </div>
        <div id="iframe_box" class="Hui-article">
            <div class="show_iframe">
                <div style="display:none" class="loading"></div>
                <iframe scrolling="yes" frameborder="0" src="{{ route('admin.welcome') }}"></iframe>
            </div>
        </div>
    </section>

    <div class="contextMenu" id="Huiadminmenu">
        <ul>
            <li id="closethis">关闭当前 </li>
            <li id="closeall">关闭全部 </li>
        </ul>
    </div>
    <!--_footer 作为公共模版分离出去-->
    <script type="text/javascript" src="{{ asset('admin') }}/lib/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="{{ asset('admin') }}/lib/layer/2.4/layer.js"></script>
    <script type="text/javascript" src="{{ asset('admin') }}/static/h-ui/js/H-ui.min.js"></script>
    <script type="text/javascript" src="{{ asset('admin') }}/static/h-ui.admin/js/H-ui.admin.js"></script>
    <!--/_footer 作为公共模版分离出去-->

    <!--请在下方写此页面业务相关的脚本-->
    <script type="text/javascript" src="{{ asset('admin') }}/lib/jquery.contextmenu/jquery.contextmenu.r2.js"></script>

</body>

</html>