<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

return [
    // +----------------------------------------------------------------------
    // | 应用设置
    // +----------------------------------------------------------------------

	'view_replace_str'  =>  [
	    '__WEBPUBLIC__'=>'/public/static/web/',
	    '__ROOT__' => '/',
	],
	'template'  =>  [
	    'layout_on'     =>  true,
	    'layout_name'   =>  'layout/index',
	]
];
