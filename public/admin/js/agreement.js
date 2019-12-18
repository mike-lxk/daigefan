$(function () {
    var ue = UE.getEditor('editor');
});
// 图文 - 保存添加|保存编辑
function agreement_submit(url)
{
    var data = $('#form-agreement').serialize();
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

