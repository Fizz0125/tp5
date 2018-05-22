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
	// 是否开启权限控制
	'on' => false,
	// 权限控制的类型  1：即时控制 2：登陆权限控制
	'type' => 2, 
	// 数据表
	'table' => [
		'user' => 'admin',
		'role' => 'role',
		'node' => 'node',
		'access' => 'access',
		'admin_role' => 'admin_role',
	],
	//例外
	'exception' => [
			'home' => 'all',
			//'home' => ['index'],
	],
	// 超级管理员
	'super' => ['admin'],
];
