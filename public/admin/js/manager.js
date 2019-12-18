// 管理员模块

$(function () {
    $(".permission-list dt input:checkbox").click(function () {
        $(this).closest("dl").find("dd input:checkbox").prop("checked", $(this).prop("checked"));
    });
    $(".permission-list2 dd input:checkbox").click(function () {
        var l = $(this).parent().parent().find("input:checked").length;
        var l2 = $(this).parents(".permission-list").find(".permission-list2 dd").find("input:checked").length;
        if ($(this).prop("checked")) {
            $(this).closest("dl").find("dt input:checkbox").prop("checked", true);
            $(this).parents(".permission-list").find("dt").first().find("input:checkbox").prop("checked", true);
        }
        else {
            if (l == 0) {
                $(this).closest("dl").find("dt input:checkbox").prop("checked", false);
            }
            if (l2 == 0) {
                $(this).parents(".permission-list").find("dt").first().find("input:checkbox").prop("checked", false);
            }
        }
    });
});


// 管理员 - 保存添加|保存编辑
function admin_submit(url)
{
    var data = $('#form-admin').serialize();
    if ($('#username').val() =='') {
        layer.msg('管理员名必填', { icon: 0 }); return;
    }
    if (!reg_pwd.test($('#password').val())) {
        layer.msg('请设置6-12位的数字、字母组合的密码！', { icon: 0 }); return;
    }
    if ($('#password_confirmation').val() != $('#password').val()) {
        layer.msg('两次密码不一致', { icon: 0 }); return;
    }
    if (!reg_tel.test($('#phone').val())) {
        layer.msg('手机格式不正确', { icon: 0 }); return;
    }
    if ($('#role_id').val() =='') {
        layer.msg('请选择角色', { icon: 0 }); return;
    }
    $.post(url, data, function (res) {
        if (res.code == 200) {
            layer.msg(res.msg, { icon: 1},function(){
                parent.location.reload();
                var index = parent.layer.getFrameIndex(window.name);
                parent.layer.close(index);
            });
        } else if (res.code == 204) {
            layer.msg(res.msg, { icon: 5 });return;
        } else if (res.code == 205) {
            layer.msg(res.msg, { icon: 0 });return;
        } else {
            layer.msg(res.msg, { icon: 2 });return;
        }
    }, "json")
}


// 角色 - 保存添加|保存编辑
function role_submit(url)
{
    var data = {    
            name: $("input[name=name]").val(), 
            depict: $("input[name=depict]").val(),
            node_ids: ischecked("choose").toString(), 
            _token:$("input[name=_token]").val() 
    };
    $.post(url, data, function (res) {
        if (res.code == 200) {
            layer.msg(res.msg, { icon: 1},function(){
                parent.location.reload();
                var index = parent.layer.getFrameIndex(window.name);
                parent.layer.close(index);
            });
        } else if (res.code == 205) {
            layer.msg(res.msg, { icon: 0 });return;
        } else {
            layer.msg(res.msg, { icon: 2 });return;
        }
    }, "json")
}



// 菜单 - 保存添加|保存编辑
function menu_submit(url)
{
    var data = $('#form-menu').serialize();
    $.post(url, data, function (res) {
        if (res.code == 200) {
            layer.msg(res.msg, { icon: 1},function(){
                parent.location.reload();
                var index = parent.layer.getFrameIndex(window.name);
                parent.layer.close(index);
            });
        } else if (res.code == 204) {
            layer.msg(res.msg, { icon: 5 });return;
        } else if (res.code == 205) {
            layer.msg(res.msg, { icon: 0 });return;
        } else {
            layer.msg(res.msg, { icon: 2 });return;
        }
    }, "json")
}


// 更新排序
function menu_sort(url) {
    var ids = new Array;
    var sort = new Array;
    $("input[name='ids[]']").each(function (i) {
        ids.push($(this).val());
    });
    $("input[name='sort[]']").each(function (i) {
        sort.push($(this).val());
    });
    var data = {
            ids:ids,
            sort:sort,
            _token:$("input[name=_token]").val()
    };

    $.post(url, data, function (res) {
        if (res.code == 200) {
            layer.msg(res.msg, { icon: 1 });
        } else {
            layer.msg(res.msg, { icon: 2 });
        }
        setTimeout(function () {
            location.replace(location.href);
        }, 1000);
    }, "json");
}
