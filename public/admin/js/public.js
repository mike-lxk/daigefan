/**通用js函数封装 */

// 手机验证机制
var reg_tel = /^1(3|4|5|7|8|9)\d{9}$/;

// 密码验证机制
var reg_pwd = /^[a-zA-Z0-9]{6,12}$/;

// 邮箱验证机制
var reg_email = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;

/**
 * 文本表单控件验证必填字段
 * @param  obj 
 */
function input_check(obj) {
    if ($(obj).val() == "") {
        $(obj).css("border", "1px solid red");
    } else {
        $(obj).css("border", "1px solid rgb(221, 221, 221)");
    }
}




/**
 * 新增页面
 * @param title	标题
 * @param url	请求的接口
 * @param w		弹出层宽度（缺省调默认值）
 * @param h		弹出层高度（缺省调默认值）
 */
function add_page(title, url, w, h) {
    layer_show(title, url, w, h);
}

/**
 * 全屏展开
 * @param title    标题
 * @param url      请求接口
 */
function full_page(title, url) {
    var index = layer.open({
        type: 2,
        title: title,
        content: url
    });
    layer.full(index);
}


/**
 * 删除
 * @param obj   当前对象
 * @param url   请求的接口
 */
function del(obj,url,id) {
    layer.confirm('确认要删除吗？', function () {
        $.get(url + '/' + id,'', function (res) {
            if (res.code == 200) {
                $(obj).parents("tr").remove();
                layer.msg(res.msg, { icon: 1});return;
            } else if (res.code == 204) {
                layer.msg(res.msg, { icon: 5});return;
            } else {
                layer.msg(res.msg, { icon: 2});return;
            }
        }, "json");
    });
}


/** 
 * 编辑页面
 * @param title	标题
 * @param url	请求的接口
 * @param w		弹出层宽度（缺省调默认值）
 * @param h		弹出层高度（缺省调默认值）
 */
function edit_page(title, url, w, h) {
    layer_show(title, url, w, h);
}


/**
 * 更改状态
 * @param url     请求的接口
 */
function edit_status(url) {
    layer.confirm('确认要更改状态吗？', function () {
        $.get(url, '', function (res) {
            if (res.code == 200) {
                layer.msg(res.msg, {icon: 1}, function () {
                    location.replace(location.href);
                });
            } else {
                layer.msg(res.msg, {icon: 2});
            }
        }, "json");
    });
}


/**
 * 判断删除点的选择
 * @param name  复选框的name属性值 
 */
function ischecked(name) {
    var check = [];
    $("input[name=" + name + "]:checked").each(function () {
        check.push($(this).val());
    });
    return check;
}


