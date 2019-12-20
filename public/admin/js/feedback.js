// 反馈管理

/**
 * 处理
 * @param obj   当前对象
 * @param url   请求的接口
 */
function check_status(obj,url){
    layer.confirm('确认处理？', {
		btn: ['已处理','不予处理','取消'], 
		shade: false,
		closeBtn: 0
    },
    // 通过
	function(){
		$.get(url+'/2', '', function (res) {
            if (res.code == 200) {
                layer.msg(res.msg, { icon: 1});
                location.replace(location.href);
                return;
            } else {
                layer.msg(res.msg, { icon: 2});return;
            }
        }, "json")
    },
    // 不通过
	function(){
		$.get(url+'/3', '', function (res) {
            if (res.code == 200) {
                layer.msg(res.msg, { icon: 1});
                location.replace(location.href);
                return;
            } else {
                layer.msg(res.msg, { icon: 2});return;
            }
        }, "json")
	});
}
