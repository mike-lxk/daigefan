// 广告模块
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

// 广告位 - 保存添加|保存编辑
function advertposition_submit(url)
{
    var data = $('#form-advertposition').serialize();
    if ($('#name').val() =='') {
        layer.msg('广告位名必填', { icon: 0 }); return;
    }
    if ($('#width').val() =='') {
        layer.msg('宽度必填', { icon: 0 }); return;
    }
    if ($('#height').val() =='') {
        layer.msg('高度必填', { icon: 0 }); return;
    }
    if ($('#num').val() =='') {
        layer.msg('数量必填', { icon: 0 }); return;
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


// 广告 - 保存添加|保存编辑
function advert_submit(url)
{
    var data = $('#form-advert').serialize();
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

