<?php

// 后台路由 一定要在web.php文件中include一下
Route::group(['prefix' => 'admin', 'namespace' => 'Admin','middleware' => ['checklogin']], function () {

    # 登录|退出
    Route::get('login','LoginController@login')->name('admin.login');
    Route::post('login','LoginController@doLogin')->name('admin.login');
    Route::get('logout', 'IndexController@logout')->name('admin.logout');

    # 主页
    Route::get('index', 'IndexController@index')->name('admin.index');
    Route::get('welcome', 'IndexController@welcome')->name('admin.welcome');

    # 管理员管理
    Route::get('manager/index', 'ManagerController@index')->name('admin.manager.index'); // 列表
    Route::get('manager/create', 'ManagerController@create')->name('admin.manager.create'); // 显示添加界面
    Route::post('manager/insert', 'ManagerController@insert')->name('admin.manager.insert'); // 添加的处理
    Route::get('manager/edit/{id}', 'ManagerController@edit')->name('admin.manager.edit')->where(['id' => '\d+']); // 修改的界面
    Route::post('manager/update/{id}', 'ManagerController@update')->name('admin.manager.update'); // 修改的处理
    Route::get('manager/del/{id}', 'ManagerController@del')->name('admin.manager.del'); // 删除

    # 角色管理
    Route::get('role/index', 'RoleController@index')->name('admin.role.index'); // 列表
    Route::get('role/create', 'RoleController@create')->name('admin.role.create'); // 显示添加界面
    Route::post('role/insert', 'RoleController@insert')->name('admin.role.insert'); // 添加的处理
    Route::get('role/edit/{id}', 'RoleController@edit')->name('admin.role.edit')->where(['id' => '\d+']); // 修改的界面
    Route::post('role/update/{id}', 'RoleController@update')->name('admin.role.update'); // 修改的处理
    Route::get('role/del/{id}', 'RoleController@del')->name('admin.role.del'); // 删除
    
    # 菜单管理
    Route::get('menu/index', 'MenuController@index')->name('admin.menu.index'); // 列表
    Route::get('menu/create', 'MenuController@create')->name('admin.menu.create'); // 显示添加界面
    Route::post('menu/insert', 'MenuController@insert')->name('admin.menu.insert'); // 添加的处理
    Route::get('menu/edit/{id}', 'MenuController@edit')->name('admin.menu.edit')->where(['id' => '\d+']); // 修改的界面
    Route::post('menu/update/{id}', 'MenuController@update')->name('admin.menu.update'); // 修改的处理
    Route::get('menu/del/{id}', 'MenuController@del')->name('admin.menu.del'); // 删除
    Route::get('menu/status/{id}/{status}', 'MenuController@status')->name('admin.menu.status'); // 修改状态
    Route::post('menu/sort', 'MenuController@sort')->name('admin.menu.sort'); // 更新排序
    
    # 图文管理
    Route::get('agreement/index', 'AgreementController@index')->name('admin.agreement.index'); // 列表
    Route::get('agreement/create', 'AgreementController@create')->name('admin.agreement.create'); // 显示添加界面
    Route::get('agreement/show/{id}', 'AgreementController@show')->name('admin.agreement.show'); // 详情
    Route::post('agreement/insert', 'AgreementController@insert')->name('admin.agreement.insert'); // 添加的处理
    Route::get('agreement/edit/{id}', 'AgreementController@edit')->name('admin.agreement.edit')->where(['id' => '\d+']); // 修改的界面
    Route::post('agreement/update/{id}', 'AgreementController@update')->name('admin.agreement.update'); // 修改的处理
    Route::get('agreement/del/{id}', 'AgreementController@del')->name('admin.agreement.del'); // 删除
     
    # 广告位管理
    Route::get('advert_position/index', 'AdvertPositionController@index')->name('admin.advert_position.index'); // 列表
    Route::get('advert_position/create', 'AdvertPositionController@create')->name('admin.advert_position.create'); // 显示添加界面
    Route::post('advert_position/insert', 'AdvertPositionController@insert')->name('admin.advert_position.insert'); // 添加的处理
    Route::get('advert_position/edit/{id}', 'AdvertPositionController@edit')->name('admin.advert_position.edit')->where(['id' => '\d+']); // 修改的界面
    Route::post('advert_position/update/{id}', 'AdvertPositionController@update')->name('admin.advert_position.update'); // 修改的处理
    Route::get('advert_position/del/{id}', 'AdvertPositionController@del')->name('admin.advert_position.del'); // 删除
    Route::get('advert_position/status/{id}/{status}', 'AdvertPositionController@status')->name('admin.advert_position.status'); // 修改状态

    # 广告管理
    Route::get('advert/index', 'AdvertController@index')->name('admin.advert.index'); // 列表
    Route::get('advert/create', 'AdvertController@create')->name('admin.advert.create'); // 显示添加界面
    Route::get('advert/status/{id}/{status}', 'AdvertController@status')->name('admin.advert.status'); // 修改状态
    Route::post('advert/insert', 'AdvertController@insert')->name('admin.advert.insert'); // 添加的处理
    Route::get('advert/edit/{id}', 'AdvertController@edit')->name('admin.advert.edit')->where(['id' => '\d+']); // 修改的界面
    Route::post('advert/update/{id}', 'AdvertController@update')->name('admin.advert.update'); // 修改的处理
    Route::get('advert/del/{id}', 'AdvertController@del')->name('admin.advert.del'); // 删除
    
    # 图片上传
    Route::post('upload/uploadOne', 'UploadController@uploadOne')->name('admin.upload.uploadOne'); // 单图片上传
    Route::post('upload/qiniuUploadOne', 'UploadController@qiniuUploadOne')->name('admin.upload.qiniuUploadOne'); // 单图片上传

    # 配置管理-学校
    Route::get('school/index', 'SchoolController@index')->name('admin.school.index'); // 列表
    Route::get('school/create', 'SchoolController@create')->name('admin.school.create'); // 显示添加界面
    Route::post('school/insert', 'SchoolController@insert')->name('admin.school.insert'); // 添加的处理
    Route::get('school/edit/{id}', 'SchoolController@edit')->name('admin.school.edit')->where(['id' => '\d+']); // 修改的界面
    Route::post('school/update/{id}', 'SchoolController@update')->name('admin.school.update'); // 修改的处理

    # 配置管理-品类
    Route::get('category/index', 'CategoryController@index')->name('admin.category.index'); // 列表
    Route::get('category/create', 'CategoryController@create')->name('admin.category.create'); // 显示添加界面
    Route::post('category/insert', 'CategoryController@insert')->name('admin.category.insert'); // 添加的处理
    Route::get('category/edit/{id}', 'CategoryController@edit')->name('admin.category.edit')->where(['id' => '\d+']); // 修改的界面
    Route::post('category/update/{id}', 'CategoryController@update')->name('admin.category.update'); // 修改的处理
    Route::get('category/del/{id}', 'CategoryController@del')->name('admin.category.del'); // 删除

    # 配置管理-食堂
    Route::get('canteen/index', 'CanteenController@index')->name('admin.canteen.index'); // 列表
    Route::get('canteen/create/{shop_id}', 'CanteenController@create')->name('admin.canteen.create'); // 显示添加界面
    Route::post('canteen/insert', 'CanteenController@insert')->name('admin.canteen.insert'); // 添加的处理
    Route::get('canteen/edit/{id}', 'CanteenController@edit')->name('admin.canteen.edit')->where(['id' => '\d+']); // 修改的界面
    Route::post('canteen/update/{id}', 'CanteenController@update')->name('admin.canteen.update'); // 修改的处理
    Route::get('canteen/del/{id}', 'CanteenController@del')->name('admin.canteen.del'); // 删除

    # 骑手管理
    Route::get('rider/index', 'RiderController@index')->name('admin.rider.index'); // 列表
    Route::get('rider/check_index', 'RiderController@checkIndex')->name('admin.rider.check_index'); // 审核列表
    Route::get('rider/show/{id}', 'RiderController@show')->name('admin.rider.show'); // 查看-详情
    Route::get('rider/check_show/{id}', 'RiderController@CheckShow')->name('admin.rider.check_show'); // 查看-审核详情
    Route::get('rider/status/{id}/{status}', 'RiderController@status')->name('admin.rider.status'); // 设置
    Route::get('rider/del/{id}', 'RiderController@del')->name('admin.rider.del'); // 删除

    # 商家管理
    Route::get('shop/index', 'ShopController@index')->name('admin.shop.index'); // 列表
    Route::get('shop/check_index', 'ShopController@checkIndex')->name('admin.shop.check_index'); // 审核列表
    Route::get('shop/edit/{id}', 'ShopController@edit')->name('admin.shop.edit'); // 编辑
    Route::get('shop/show/{id}', 'ShopController@show')->name('admin.shop.show'); // 查看-商家详情
    Route::get('shop/check_show/{id}', 'ShopController@CheckShow')->name('admin.shop.check_show'); // 查看-审核详情
    Route::get('shop/status/{id}/{status}', 'ShopController@status')->name('admin.shop.status'); // 设置
    Route::post('shop/update/{id}', 'ShopController@update')->name('admin.shop.update'); // 修改的处理

    # 商家管理-满减
    Route::get('shop_discount/index/{id}', 'ShopDiscountController@index')->name('admin.shop_discount.index'); // 列表
    Route::get('shop_discount/create/{id}', 'ShopDiscountController@create')->name('admin.shop_discount.create'); // 显示新增页面
    Route::post('shop_discount/insert', 'ShopDiscountController@insert')->name('admin.shop_discount.insert'); // 保存新增
    Route::get('shop_discount/edit/{id}', 'ShopDiscountController@edit')->name('admin.shop_discount.edit')->where(['id' => '\d+']); // 修改的界面
    Route::post('shop_discount/update/{id}', 'ShopDiscountController@update')->name('admin.shop_discount.update'); // 修改的处理
    Route::get('shop_discount/del/{id}', 'ShopDiscountController@del')->name('admin.shop_discount.del'); // 删除


    # 投诉反馈管理
    Route::get('feedback/index', 'FeedbackController@index')->name('admin.feedback.index'); // 投诉反馈列表
    Route::get('feedback/show/{id}', 'FeedbackController@show')->name('admin.feedback.show'); // 查看-详情
    Route::get('feedback/status/{id}/{status}', 'FeedbackController@status')->name('admin.feedback.status'); // 设置
    Route::get('feedback/del/{id}', 'FeedbackController@del')->name('admin.feedback.del'); // 删除

    # 意向管理 - 商家
    Route::get('merchant_intention/index', 'MerchantIntentionController@index')->name('admin.merchant_intention.index'); // 意向商家

    # 意向管理 - 骑手
    Route::get('rider_intention/index', 'RiderIntentionController@index')->name('admin.rider_intention.index'); // 意向骑手

    # 会员管理
    Route::get('user/index', 'UserController@index')->name('admin.user.index'); // 会员管理
    Route::get('user/del/{id}', 'UserController@del')->name('admin.user.del'); // 删除【添加至回收站】
    Route::get('user/restore/{id}', 'UserController@restore')->name('admin.user.restore'); // 恢复
    Route::get('user/show/{id}', 'UserController@show')->name('admin.user.show'); // 详情
    Route::get('user/recycle_index', 'UserController@recycleIndex')->name('admin.user.recycle_index'); // 回收站


    


});