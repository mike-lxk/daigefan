// 配置模块
//上传图片
$('.filepath').on('change', function(e) {
    var formData = new FormData();
    formData.append('imgurl',$('.filepath')[0].files[0]);
    var _this = $('.filepath').next();

    $.ajax({
        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
        url: '/admin/upload/qiniuUploadOne',
        type: 'post',
        data: formData,
        dataType: 'json',
        enctype: 'multipart/form-data',
        contentType: false, //不设置内容类型  
        processData: false, //不处理数据  
        success: function (res) {
            if (res.code == 205) {
                layer.msg(res.msg, { icon: 0 });return;
            } else if (res.code == 200) {
                _this.next().attr('src',res.data.imgurl);
                _this.val(res.data.imgurl);
            }
        },
        error:function(){ //上传失败 
            
        }
    });
});

// 学校 - 保存添加|保存编辑
function school_submit(url)
{
    var data = $('#form-school').serialize();
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


// 品类 - 保存添加|保存编辑
function category_submit(url)
{
    var data = $('#form-category').serialize();
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


// 食堂 - 保存添加|保存编辑
function canteen_submit(url)
{
    var data = $('#form-canteen').serialize();
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


