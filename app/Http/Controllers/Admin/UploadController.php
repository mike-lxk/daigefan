<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use zgldh\QiniuStorage\QiniuStorage;

class UploadController extends Controller
{
    /**
     * 单图片上传 【上传至服务器本地】
     * 
     */
    public function uploadOne(Request $request)
    {
        if ($request->hasFile('imgurl')) {
            $file = $request->file('imgurl');//获取图片
            $allowed_extensions = ["png", "jpg", "gif"];
            if ($file->getClientOriginalExtension() && !in_array($file->getClientOriginalExtension(), $allowed_extensions)) {
                show_msg(205,'只能上传 png | jpg | gif格式的图片');
            }
            // $destinationPath = public_path('uploads').'\\'.date('Y-m').'\\';  // public_path() 方法为laravel提供，可不采取
            $destinationPath = 'uploads/'. date('Y-m') . '/';
            $extension = $file->getClientOriginalExtension();
            $fileName = uniqid().'.'.$extension;
            $file->move($destinationPath, $fileName);
            show_msg(200,'上传成功',['imgurl'=>'/'.$destinationPath.$fileName]);
        }
 
    }



    /**
     *  单图片上传 【上传至七牛云对象存储】
     * 
     */
    public function qiniuUploadOne(Request $request)
    {
        // 判断是否有文件上传
        if ($request->hasFile('imgurl')) {
            // 获取文件,file对应的是前端表单上传input的name
            $file = $request->file('imgurl');
            // 文件后缀
            $postfix = $file->getClientOriginalExtension();
            // 允许的后缀扩展名
            $allowed_extensions = ["png", "jpg", "gif"];
            if ($file->getClientOriginalExtension() && !in_array($postfix, $allowed_extensions)) {
                show_msg(205,'只能上传 png | jpg | gif格式的图片');
            }
            // 初始化
            $disk = QiniuStorage::disk('qiniu');
            // 重命名文件
            $fileName = md5($file->getClientOriginalName().time().rand()).'.'.$postfix;   // 文件名命名可以按照自己的风格调整，这里只是示例
            // 上传图片的前缀，用于标识图片所属模块，【例如属于广告模块、产品模块、商家模块等】,此功能非必须，格式也没有要求，可写可不写
            $prefix = 'dgf/advert_'; 
            // 上传到七牛
            $bool = $disk->put($prefix.$fileName,file_get_contents($file->getRealPath()));   // 如果file_get_contents() 速度比较慢，那么可以使用curl()请求
            // 判断是否上传成功
            if ($bool) {
                $path = $disk->downloadUrl($prefix.$fileName);
                // 七牛云设置的图片压缩
                show_msg(200,'上传成功',['imgurl'=>$path.'?imageView2/0/format/jpg/interlace/1/q/75|imageslim']);
            }
            show_msg(201,'上传失败');

        }
        show_msg(201,'未选择文件');
    }
     
}
