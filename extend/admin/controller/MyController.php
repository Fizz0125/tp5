<?php
namespace admin\controller;
use think\Controller;
use admin\auth\RBAC;
class MyController extends Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->isLogin();
	}
	private function isLogin()
	{
		$sessionS = session('admin');
		$inof = cookie('inof');
		if(empty($sessionS)&&empty($inof))
		{
			return $this->success('你没有登录！','admin/login/index');
		}
		$this->auth();
	}

	public function getCategory($cateName,$pid=0,$sp="",$cateAll=array())
	{
		$category = db($cateName)->where('pid',$pid)->select();
		foreach($category as $k=>$v){
			$v['sp']=$sp;
			$cateAll[]=$v;
			$cateAll=$this->getCategory($cateName,$v['id'],$sp."&nbsp;&nbsp;&nbsp;&nbsp;",$cateAll);
		}
		return $cateAll;
	}

	private function auth()
	{
		$RBAC = new RBAC;
		$result =$RBAC->check();
		if($result === false) {
			return $this->error('你没有访问该页面的权限权限，请联系管理员','admin/home/welcome');
		}
	}
}