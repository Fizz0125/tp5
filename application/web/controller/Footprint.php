<?php
namespace app\web\controller;
use web\controller\Base;
use think\Request;
use web\footprint\Footprint as FootClass;
class Footprint extends Base
{
	protected $foot = null;
	
	public function _initialize()
	{
		parent::_initialize();
		$this->foot = new FootClass();
	}
	
	// 购物车首页
	public function index()
	{
//		$this->cart->destory();return;
		// 读取购物车信息
		$data = $this->getFoot();
		$this->assign('data',$data);
		return $this->fetch();
	}
	
	// 添加购物车
	public function insert($id,$qty='1')
	{
		$request = Request::instance();
		$this->foot->insert($id, $qty);
		if($request->isAjax()) {
			if(empty($add)){
				return ['error'=>true,'msg'=>'加入购物车失败'];
			}
			return ['error'=>false,'msg'=>'加入购物车成功'];
		}
	}
	//清空购物车
	public function destory()
	{
		$request = Request::instance();
		if($request->isAjax()) {
			$this->foot->destory();
		}
	}
	
	// 删除购物车
	public function delete($id)
	{
		$request = Request::instance();
		if($request->isAjax()) {
			$this->foot->delete($id);
		}		
	}
	
	// 查询购物车
	public function getFoot()
	{
		return $this->foot->getFoot();
	}
}
