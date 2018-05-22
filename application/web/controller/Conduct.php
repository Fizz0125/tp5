<?php
namespace app\web\controller;

use web\controller\Base;
use think\Request;
class Conduct extends Base
{
	public function index()
	{
		$conduct = model('Conduct')->select();
		$this->assign('con',$conduct);
		return $this->fetch();
	}
	public function message()
	{
		$request = Request::instance();
		if($request->isAjax()) {
			$data = [
				'name' => input('name'),
				'phone' => input('phone'),
				'email' => input('email'),
				'content' => input('content')
			];
			if(empty($data['name'])){
				return ['msg'=>'用户名不允许为空','error'=>true];
			}
			if(empty($data['phone'])){
				return ['msg'=>'号码不允许为空','error'=>true];
			}
			if(!preg_match("/^13[0-9]{1}[0-9]{8}$|15[0-9]{1}[0-9]{8}$|18[0-9]{9}$/",$data['phone'])){    
			   return ['msg'=>'请输入正确的手机号码','error'=>true];      
			}
			if(empty($data['email'])){
				return ['msg'=>'邮箱不允许为空','error'=>true];
			}
			if(!preg_match("/^[0-9a-zA-Z]+@(([0-9a-zA-Z]+)[.])+[a-z]{2,4}$/i",$data['email'])){    
			   return ['msg'=>'请输入正确的邮箱','error'=>true];      
			}
			if(empty($data['content'])){
				return ['msg'=>'内容不允许为空','error'=>true];
			}
			$code = input('code');
			if(empty($code)){
				return ['msg'=>'验证码不允许为空','error'=>true];
			}
			if(!captcha_check($code)){
				//验证失败
				return ['msg'=>'验证码不正确','error'=>true];
			}
			$add = db('message')->allowField(true)->insert($data);
			if($add==false){
				return ['msg'=>'留言失败','error'=>true];
			}
			return ['msg'=>'留言成功','error'=>false];
		}
	}
}