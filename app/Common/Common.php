<?php

// 应用公共文件


 /**
 * 返回封装后的API成功方法
 * @access protected
 * @param  mixed     $data 要返回的数据
 * @param  integer   $code 返回的code
 * @param  mixed     $msg 提示信息
 * @return void
 */
if (!function_exists('show_msg')) {
    function show_msg($code = 200,$msg = '',$data='')
    {
        $result = [
            'code' => $code,
            'msg'  => $msg,
            'data' => $data
        ];

        exit(json_encode($result));
    }
}


/**
 * 模拟 post 请求
 * @param $url 
 */
if (!function_exists('curl_post')) {  
    function curl_post($url, $post_data = array()) {
        if (empty($url)) {
            return false;
        }
        $curl_data=json_encode($post_data);

        $ch = curl_init();//初始化curl
        curl_setopt($ch, CURLOPT_URL,$url);//抓取指定网页
        curl_setopt($ch, CURLOPT_HEADER, 0);//设置header
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);//要求结果为字符串且输出到屏幕上
        curl_setopt($ch, CURLOPT_POST, 1);//post提交方式
        curl_setopt($ch, CURLOPT_POSTFIELDS, $curl_data);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json','Content-Length: ' .strlen($curl_data)));
        $data = curl_exec($ch);//运行curl
        curl_close($ch);
        
        return $data;
    }
}


/**
 * 模拟 get 请求
 * @param $url 
 */
if (!function_exists('curl_get')) {
    function curl_get($url)
    {
        $ch = curl_init ();
        curl_setopt ( $ch, CURLOPT_URL, $url );
        curl_setopt ( $ch, CURLOPT_RETURNTRANSFER, 1 );
        curl_setopt ( $ch, CURLOPT_CUSTOMREQUEST, 'GET' ); 
        curl_setopt ( $ch, CURLOPT_CONNECTTIMEOUT, 20 ); // 表示如果服务器20秒内没有响应，脚本就会断开连接
        curl_setopt ( $ch, CURLOPT_TIMEOUT, 60 ); // 表示如果服务器60秒内没有请求完成，脚本将会断开连接
        $result = curl_exec ( $ch );
        curl_close ( $ch );

        return $result;
    }
}


/**
 * 生成订单号
 * @param string  $header [订单类型标识 可选]
 */
if (!function_exists('build_order_no')) {
    function build_order_no($header = '')
    {
        return $header . date('ymd') . substr(time(), -5) . substr(microtime(), 2, 5) . sprintf('%02d', rand(0, 99));
    }
}



/**
 * 计算两个经纬度之间距离的方法
 */
if (!function_exists('pc_sphere_distance')) {     // 返回值的单位为米
    function pc_sphere_distance($lat1, $lon1, $lat2, $lon2, $radius = 6371000) {
        $rad = doubleval(M_PI/180.0);
        $lat1 = doubleval($lat1) * $rad;
        $lon1 = doubleval($lon1) * $rad;
        $lat2 = doubleval($lat2) * $rad;
        $lon2 = doubleval($lon2) * $rad;
        $theta = $lon2 - $lon1;
        $dist = acos(sin($lat1) * sin($lat2) + cos($lat1) * cos($lat2) * cos($theta));
        return $dist * $radius * 1000;
    }
}


/**
 * 物理地址解析经纬度【解析不准确】
 */
if (!function_exists('get_location')) {
    function get_location($address){
        $make_key = '5DNBZ-YEKC4-5HGUE-X7TP3-7W4F3-EWF3T';
        $url="http://apis.map.qq.com/ws/geocoder/v1/?address=".$address."&key=".$make_key;
        $jsondata=json_decode(file_get_contents($url),true);
        $data = [];
        if ($jsondata['message'] == '查询无结果') {
            return $data;
        }
        $data['lat'] = $jsondata['result']['location']['lat'];
        $data['lng'] = $jsondata['result']['location']['lng'];

        return $data;
    }
}


/**
 *  写日志【方式1】
 * @param  $log  日志内容
 * @param string $type   日志后缀文件类型
 */
if (!function_exists('write_log')) {
    function write_log($log, $type = 'sql')
    {
        $request = Request::instance();
        $path = './log/';
        if (!is_dir($path) && !mkdir($path, 0755, true)) {
                //无权创建文件忽略函数
            return false;
        }
        if (is_array($log)) {
            $log = json_encode($log);
        }
        $filename = $path . date("Ymd") . '_' . $type . ".log";
        @$handle = fopen($filename, "a+");
        @fwrite($handle, date('Y-m-d H:i:s') . " ".'[ip:'. $request->ip(). ']   ' . $log . "\r\n");
        @fclose($handle);
    }
}


/**
 *  写日志【方式2】
 * @param  $log  日志内容
 * @param string $type   日志后缀文件类型
 */
if (!function_exists('set_log')) {
    function set_log($param = '',$data,$type = '')
    {
        $path = Env::get('root_path')."/logs/";
        if(!file_exists($path)){
            mkdir($path,0755);      
        }
        error_log($param.print_r($data,1),3,$path.$type.date('Y-m-d').".log");
    }
}


/**
 * 循环删除目录和文件
 * @param string $dir_name
 * @return bool
 */
if (!function_exists('delete_dir_file'))
{
    function delete_dir_file($dir_name) {
        $result = false;
        if(is_dir($dir_name)){
            if ($handle = opendir($dir_name)) {
                while (false !== ($item = readdir($handle))) {
                    if ($item != '.' && $item != '..') {
                        if (is_dir($dir_name . DS . $item)) {
                            delete_dir_file($dir_name . DS . $item);  
                        } else {
                            unlink($dir_name . DS . $item);
                        }
                    }
                }
                closedir($handle);
                if (rmdir($dir_name)) {
                    $result = true;
                }
            }
        }
        return $result;
    }
}


/**
 * 删除七牛云上的物理图片
 */
if (!function_exists('qiniu_img_del')) {
    function qiniu_img_del($imgurl)
    {
        // 构建鉴权对象
        $accessKey = config('qiniu')['accesskey'];
        $secretKey = config('qiniu')['secretkey'];
        $bucket = config('qiniu')['bucket'];
        $auth = new Auth($accessKey, $secretKey);

        // 配置
        $config = new Config();

        // 管理资源
        $bucketManager = new BucketManager($auth, $config);

        // 要删除的图片文件，与七牛云空间存在的文件名称相同， 即不能存在域名， 也不存在压缩的后缀
        // 数据库存储的图片路径为：http://picture.daigefan.com/6cfe8201907051641019024.png?imageView2/0/format/jpg/interlace/1/q/75|imageslim， 
        // 实际传到七牛云删除的路径为：6cfe8201907051641019024.png
        $imgstr = reset(explode('?', $imgurl));
        // 当图片域名换掉时，此处记得更改
        $img_url = substr($imgstr, 28);

        // 删除文件操作
        $res = $bucketManager->delete($bucket, $img_url);
        if (is_null($res)) {
            return true;
        } else {
            return false;
        }
    }
}


/**
 * 无限分类函数
 * @param   array  $data  传入的待处理数组
 * @param   int    $fid   分类初始级别
 * @return  array
 */
if (!function_exists('get_node')) {
    function get_node($data, $fid = 0)
    {
        static $result = [];
        foreach ($data as $key => $vo) {
            if ($vo['fid'] == $fid) {
                $result[] = $vo;
                get_node($data, $vo['id']);
            }
        }
        return $result;
    }
}


/**
 * 距离计算【多点对多点】
 * @param double $from 起点坐标
 * @param double $lng 终点坐标
 * @return array();
 */
if (!function_exists('parameters')) {
    function parameters($from, $to)
    {
        $key = config('lbs_map')['key'];
        $url = "https://apis.map.qq.com/ws/distance/v1/matrix/?mode=bicycling&from={$from}&to={$to}&key=" . $key;
        $jsondata = json_decode(curl_get($url), true);  // 尽量不要使用file_get_contents() ，建议使用curl模拟请求，curl请求更快
        $data = $jsondata['result']['rows'];
        return $data;
    }
}


/**
 * 距离计算【一点对多点】
 * @param double $from 起点坐标
 * @param double $lng 终点坐标
 * @return string;
 */
if (!function_exists('one_to_more_distance')) {
    function one_to_more_distance($from, $to)
    {
        $key = config('lbs_map')['key'];
        $url = "https://apis.map.qq.com/ws/distance/v1/?mode=walking&from={$from}&to={$to}&key=" . $key;
        $jsondata = json_decode(curl_get($url), true);  // 尽量不要使用file_get_contents() ，建议使用curl模拟请求，curl请求更快
        $distance = $jsondata['result']['elements'][0]['distance'];
        return $distance;
    }
}

