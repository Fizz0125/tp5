<?php
namespace app\web\controller;
use web\controller\Base;
use think\Request;
use web\cart\Cart as CartClass;
class Cart extends Base
{
	protected $cart = null;
	
	public function _initialize()
	{
		parent::_initialize();
		$this->cart = new CartClass();
	}
	
	// 购物车首页
	public function index()
	{
//		$this->cart->destory();return;
		// 读取购物车信息
		$data = $this->getCart();
		$this->assign('data',$data);
		
		// 获取购物统计信息
		$total = $this->getTotal();
		$this->assign('total',$total);

		return $this->fetch();
	}
	
	// 添加购物车
	public function insert($id,$qty='1')
	{
		$request = Request::instance();
		$this->cart->insert($id, $qty);
		if($request->isAjax()) {
			$add = $this->getTotal();
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
			$this->cart->destory();
			return $this->getTotal();
		}
	}
	// 更新购物车
	public function update($id,$qty)
	{
		$request = Request::instance();
		if($request->isAjax()) {
			$this->cart->update($id, $qty);
			$goods = $this->getCart();
			return ['goods'=>$goods[$id],'total'=>$this->getTotal()];
		}
	}
	
	// 删除购物车
	public function delete($id)
	{
		$request = Request::instance();
		if($request->isAjax()) {
			$this->cart->delete($id);
			return $this->getTotal();
		}		
	}
	
	public function status($id)
	{
		$this->cart->status($id);
		$request = Request::instance();
		if($request->isAjax()) {
			return $this->getTotal();
		}
	}
	
	// 查询购物车
	public function getCart()
	{
		return $this->cart->getCart();
	}
	
	//
	public function getTotal()
	{
		return $this->cart->getTotal();
	}
}
