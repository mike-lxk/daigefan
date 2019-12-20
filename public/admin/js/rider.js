// 骑手管理



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
