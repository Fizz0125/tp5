<?php
namespace app\web\controller;
use web\controller\MyController;
use web\cart\Cart as CartClass;
use think\Request;
class Order extends MyController
{
	public function index()
	{
		$uid = session('username')['uid'];
		if(empty($uid)){
			return $this->error('您没有登录请登录后再下单');
		}
		$order_id = input('order/d');
		if(empty($order_id)){
			return $this->error('下单错误');
		}
		$order = db('order')->where('id',$order_id)->find();
		if(empty($order)){
			return $this->error('没有此订单');
		}
		$orderDesc = db('order_desc')->where('order_id',$order_id)->select();
		foreach($orderDesc as $k=>$v){
			$pro_id[] = $orderDesc[$k]['product_id']; 
		}
		if(empty($pro_id)){
			return $this->error('该订单没有产品');
		}
		$pro = model('Product')->all($pro_id);
		foreach($pro as $k=>$v){
			$pro[$k]['qty'] = $orderDesc[$k]['num'];
		}
		$userModel = model('User');
		$address = $userModel->field('phone,realname')->where('id',$uid)->find();
		$address['address'] = db('user_address')->where('user_id',$uid)->value('address');
		cookie('cart',null);
		$this->assign('address',$address);
		$this->assign('order',$order);
		$this->assign('pro',$pro);
		return $this->fetch();
	}
	public function addorder()
	{
		$request = Request::instance();
		if($request->isAjax()) {
			$uid = session('username')['uid'];
			if(empty($uid)){
				return $this->error('您没有登录请登录后再下单');
			}
			$cart = new CartClass();
			$type = input('type');
			if($type=='pro'){
				$pro = cookie('pro');
				$data = [
					'order_sn' => date('Ymdhis').rand(1000, 9999),
					'user_id' => $uid,
					'user_address' => db('user_address')->where('user_id',$uid)->value('address'),
					'stauts' => 0,
					'price' => $pro['total']['price'],
					'num' => $pro['pro'][0]['qty']
				];
				$addOrder = db('order')->insertGetId($data);
				if($addOrder===false){
					return ['error'=>true,'msg'=>'下单错误'];
				}
				foreach($pro['pro'] as $value){
					$data = [
						'order_id'=>$addOrder,
						'product_id'=>$value['id'],
						'price' => $value['shop_price'],
						'num' => $value['qty']
					];
					db('order_desc')->insert($data);
				}
				cookie('pro',null);
				return ['error'=>false,'order_sn'=>$addOrder];
			}else{
				$pro = $cart->getCart();
				$total = $cart->getTotal();
				$data = [
					'order_sn' => date('Ymdhis').rand(1000, 9999),
					'user_id' => $uid,
					'user_address' => db('user_address')->where('user_id',$uid)->value('address'),
					'stauts' => 0,
					'price' => $total['price'],
					'num' => $total['qty']
				];
				$addOrder = db('order')->insertGetId($data);
				if($addOrder===false){
					return ['error'=>true,'msg'=>'下单错误'];
				}
				foreach($pro as $value){
					$data = [
						'order_id'=>$addOrder,
						'product_id'=>$value['id'],
						'price' => $value['shop_price'],
						'num' => $value['qty']
					];
					db('order_desc')->insert($data);
				}
				cookie('cart',null);
				return ['error'=>false,'order_sn'=>$addOrder];
			}
			return ['error'=>true,'msg'=>'下单错误'];
		}
	}
}
