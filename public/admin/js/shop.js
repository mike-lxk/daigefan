// 商家管理

// 商家满减活动 - 保存添加|保存编辑
function shop_discount_submit(url)
{
    var data = $('#form-shop_discount').serialize();
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


// 商家 - 保存编辑
function shop_submit(url)
{
    var data = $('#form-shop').serialize();
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


/**
 * 审核
 * @param obj   当前对象
 * @param url   请求的接口
 */
function check_status(obj,url){
    layer.confirm('审核通过？', {
		btn: ['通过','不通过','取消'], 
		shade: false,
		closeBtn: 0
    },
    // 通过
	function(){
		$.get(url+'/3', '', function (res) {
            if (res.code == 200) {
                $(obj).parents("tr").remove();
                layer.msg(res.msg, { icon: 1});return;
            } else {
                layer.msg(res.msg, { icon: 2});return;
            }
        }, "json")
    },
    // 不通过
	function(){
		alert('这个是不通过的原因列表界面，先不做了')
	});
}
