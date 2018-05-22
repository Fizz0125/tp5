<?php
namespace controller;
use think\Controller;
class MyController extends Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->isLogin();
	}
	private function isLogin()
	{
		if(session('admin')==null)
		{
			$this->error('你没有登录！');
		}
	}
}