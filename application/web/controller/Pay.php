<?php
namespace app\web\controller;
use web\controller\MyController;
use web\cart\Cart as CartClass;
use think\Request;
class Pay extends MyController
{
	public function index()
	{
		$cart = new CartClass();
		$uid = session('username')['uid'];
		$userModel = model('User');
		$address = $userModel->field('phone,realname')->where('id',$uid)->find();
		$address['address'] = db('user_address')->where('user_id',$uid)->value('address');
		if(empty($address['address'])){
			return $this->success('该用户还没有收获地址，即将跳转地址添加','web/user/index');
		}
		$id = input('id/d');
		if(!empty($id)){
			$prodata = cookie('pro');
			if($prodata['pro'][0]['id']!=$id){
				cookie('pro',null);
				$prodata = cookie('pro');
			}
			if(empty($prodata)){
				$pro[] = db('product')->where('id',$id)->find();
				$qty = input('qty');
				$qty = empty($qty)?1:$qty;
				$pro[0]['qty'] = $qty;
				$total = [
					'qty' => $pro[0]['qty'],
					'price' => $pro[0]['shop_price'],
					'type' => 'pro'
				];
				$prodata = [
					'pro' => $pro,
					'total' => $total
				];
				cookie('pro',$prodata);
			}else{
				$pro = $prodata['pro'];
				$total = $prodata['total'];
			}
		}else{
			$pro = $cart->getCart();
			$total = $cart->getTotal();
			$total['type'] = 'cart';
		}
		
		$request = Request::instance();
		if($request->isAjax()) {
			$data = [
				'id' => input('id/d'),
				'qty' => input('qty/d'),
				'type' => input('type')
			];
			if(empty($data['id'])){
				return ['error'=>true,'msg'=>'没有找到该产品'];
			}
			if(empty($data['qty'])){
				return ['error'=>true,'msg'=>'数量有误'];
			}
			if($data['qty']<0){
				return ['error'=>true,'msg'=>'数量不允许低于1'];
			}
			if($data['type']=='pro'){
				$pro = cookie('pro');
				if(empty($pro)){
					return ['error'=>true,'msg'=>'没有找到该产品'];
				}
				$pro['pro'][0]['qty'] = $data['qty'];
				$pro['total']['qty'] = $data['qty'];
				$pro['total']['price'] = $pro['pro'][0]['shop_price'];
				$prodata = [
					'pro' => $pro['pro'],
					'total' => $pro['total']
				];
				cookie('pro',null);
				cookie('pro',$prodata);
				return ['error'=>false,'total'=>$prodata['total']];
			}else{
				$upcart = $cart->update($data['id'], $data['qty']);
				$total = $cart->getTotal();
				return ['error'=>false,'total'=>$total];
			}
		}
		$this->assign('total',$total);
		$this->assign('pro',$pro);
		$this->assign('address',$address);
		
		return $this->fetch();
	}
}
