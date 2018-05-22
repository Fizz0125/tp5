<?php
namespace web\controller;
use web\controller\Base;
class MyController extends Base
{
	public function __construct()
	{
		parent::__construct();
		$this->isLogin();
	}
	private function isLogin()
	{
		if(session('username')==null)
		{
			$this->success('你没有登录！','web/login/index');
		}
	}
}