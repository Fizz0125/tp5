<?php
namespace app\web\controller;
use web\controller\Base;
use think\Request;
class Login extends Base
{
	function index()
	{
		$request = Request::instance();
		if($request->isAjax()) {
			$act = input('act');
			if($act=='username'){
				$username = input('username');
				$user = db('user')->where('username',$username)->whereOr('email',$username)->find();
				if(empty($user)){
					return false;
				}
				return true;
			}
			if($act=='password'){
				$username = input('username');
				$password = md5(input('password'));
				$user = db('user')->where('username',$username)->whereOr('email',$username)->where('password',$password)->find();
				if(empty($user)){
					return false;
				}
				$userInof = [
					'uid'=>$user['id'],
					'username'=>empty($user['username'])?$user['email']:$user['username']
				];
				session('username',$userInof);
				return true;
			}
		}
		$user = session('username');
		if(!empty($user)){
			return $this->success('您已经登录无需重新登录！','web/user/index');
		}
		return $this->fetch();
	}
	function login()
	{
		$user = session('username');
		if(!empty($user)){
			return $this->success('登录成功！','web/user/index');
		}
		return $this->error('登录失败');
	}
	function register()
	{
		$request = Request::instance();
		if($request->isAjax()) {
			$data = [
				'email' => input('email'),
				'password' => input('password'),
				'password2' => input('password2'),
				'code' => input('vcode'),
			];
			if(empty($data['email'])){
				return ['error'=>true,'msg'=>'邮箱不允许为空'];
			}
			if(!preg_match("/^[0-9a-zA-Z]+@(([0-9a-zA-Z]+)[.])+[a-z]{2,4}$/i",$data['email'])){    
			   return ['msg'=>'请输入正确的邮箱','error'=>true];      
			}
			if(empty($data['password'])){
				return ['error'=>true,'msg'=>'密码不允许为空'];
			}
			if($data['password']!==$data['password2']){
				return ['error'=>true,'msg'=>'密码不一致'];
			}
			if(empty($data['code'])){
				return ['error'=>true,'msg'=>'验证码不允许为空'];
			}
			$code = cookie('code');
			if($data['code']!==$code){
				return ['error'=>true,'msg'=>'验证码不正确'];
			}
			$user = db('user')->where('email',$data['email'])->find();
			if(!empty($user)){
				return ['error'=>true,'msg'=>'邮箱已被注册'];
			}
			unset($data['password2']);
			unset($data['code']);
			$data['password'] = md5($data['password']);
			$add = db('user')->insert($data);
			if($add==false){
				return ['error'=>true,'msg'=>'注册失败'];
			}
			return ['error'=>false,'msg'=>'注册成功'];
			
		}
		return $this->fetch();
	}
	function emailvalidate()
	{
		$request = Request::instance();
		if($request->isAjax()) {
			$email = input('email');
			if(empty($email)){
				return ['error'=>true,'msg'=>'邮箱不允许为空'];
			}
			
			if(!preg_match("/^[0-9a-zA-Z]+@(([0-9a-zA-Z]+)[.])+[a-z]{2,4}$/i",$email)){    
			   return ['msg'=>'请输入正确的邮箱','error'=>true];      
			}
			cookie('code',null);
			$str = '2345678abcdefhijkmnpqrstuvwxyzABCDEFGHJKLMNPQRTUVWXY';
			$code = '';
			for($i=0;$i<4;$i++){
				$code .= $str[mt_rand(0, mb_strlen($str))];
			}
			$reslut = email($email,'PRESSO用户注册','<p>您的验证码是：<span style="color:red;">'.$code.'</span></p>');
			if($request==false){
				return ['error'=>true,'msg'=>'发送失败'];
			}
			cookie('code',$code,60*60);
			return ['error'=>false,'msg'=>'发送成功'];
		}
	}
	public function logout()
	{
		session('username',null);
		return $this->success('退出成功','web/login/index');
	}
}
	