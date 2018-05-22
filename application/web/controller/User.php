<?php
namespace app\web\controller;
use web\controller\MyController;
use think\Request;
class User extends MyController
{
	public function index()
	{
		$id = session('username')['uid'];
		$userModel = model('User');
		$user = $userModel->where('id',$id)->find();
		$user['address'] = db('user_address')->where('user_id',$id)->value('address');
		$this->assign('user',$user);
		return $this->fetch();
	}
	public function edit()
	{
		$id = session('username')['uid'];
		if(empty($id)){
			return $this->success('您还没有登录','web/index/index');
		}
		$userModel = model('User');
		$request = Request::instance();
		if($request->isAjax()) {
			$data = [
				'username' => input('username'),
				'phone' => input('phone'),
				'birthday' => input('birthday'),
				'realname' => input('realname'),
				'address' => input('address'),
			];
			if(empty($data['username'])){
				return ['error'=>true,'msg'=>'昵称不允许为空'];
			}
			if(empty($data['phone'])){
				return ['error'=>true,'msg'=>'号码不允许为空'];
			}
			if(!preg_match("/^13[0-9]{1}[0-9]{8}$|15[0-9]{1}[0-9]{8}$|18[0-9]{9}$/",$data['phone'])){    
			   return ['error'=>true,'msg'=>'请输入正确的号码'];      
			}
			if(empty($data['address'])){
				return ['error'=>true,'msg'=>'收货地址不允许为空'];
			}
			$us = $userModel->where('username',$data['username'])->find();
			if(!empty($us)){
				return ['error'=>true,'msg'=>'昵称已存在'];
			}
			$upuser = $userModel->allowField(true)->save($data,$id);
			$address = db('user_address')->where('user_id',$id)->find();
			if(empty($address)){
				$address = db('user_address')->insert(['user_id'=>$id,'address'=>$data['address']]);
			}else{
				$address = db('user_address')->where('user_id',$id)->update(['address'=>$data['address']]);
			}
			if($upuser!==false&&$address!==false){
				return ['error'=>false,'msg'=>'修改成功'];
			}
			
			return ['error'=>true,'msg'=>'修改失败'];;
		}
	}
	
	public function history()
	{
		$order = model('Order')->select();
		$stauts = input('stauts/d');
		if(!empty($stauts)){
			$order = model('Order')->where('stauts',$stauts)->select();
		}
		if(empty($order)){
			return $this->error('数据为空');
		}
		foreach($order as $k=>$v){
			$pro[] = db('order_desc')->where('order_id',$order[$k]['id'])->select();
		}
		foreach($pro as $k=>$v){
			foreach($pro[$k] as $key=>$val){
				$pro_id[] = $pro[$k][$key];
				foreach($pro_id as $keys=>$value){
					if(!empty($pro_id[$keys]['product_id'])){
						$product[] = db('product')->where('id',$pro_id[$keys]['product_id'])->find();
					}
				}
			}
		}
		$this->assign('pro',$product);
		return $this->fetch();
	}
	public function del()
	{
		$request = Request::instance();
		if($request->isAjax()) {
			$id = input('id/d');
			if(empty($id)){
				return ['error'=>true,'msg'=>'没有找到该产品'];
			}
			$delpro = db('order_desc')->where('product_id',$id)->delete();
			return ['msg'=>$delpro];
			if($delpro==false){
				return ['error'=>true,'msg'=>'移除失败'];
			}
			return ['error'=>false,'msg'=>'移除成功'];
		}
	}
	public function password()
	{
		$id = session('username')['uid'];
		if(empty($id)){
			return $this->success('您还没有登录','web/index/index');
		}
		$userModel = model('User');
		$request = Request::instance();
		if($request->isAjax()) {
			$data = [
				'password'=>input('password'),
				'password2'=>input('password2'),
				'ypassword'=>input('ypassword'),
			];
			if(empty($data['ypassword'])){
				return ['error'=>true,'msg'=>'原密码不允许为空'];
			}
			$repassword = $userModel->where('id',$id)->where('password',md5($data['ypassword']))->find();
			if(empty($repassword)){
				return ['error'=>true,'msg'=>'原密码错误'];
			}
			if(empty($data['password'])){
				return ['error'=>true,'msg'=>'密码不允许为空'];
			}
			if($data['password']!==$data['password2']){
				return ['error'=>true,'msg'=>'密码一致'];
			}
			$data['password']=md5($data['password']);
			$uppass = $userModel->allowField(true)->save($data,$id);
			if($uppass!==false){
				return ['error'=>false,'msg'=>'修改成功'];
			}
			return ['error'=>true,'msg'=>'修改失败'];
		}
		return $this->fetch();
	}
	
}
