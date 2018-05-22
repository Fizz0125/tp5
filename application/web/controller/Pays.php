<?php
namespace app\web\controller;
use web\controller\MyController;
class Pays extends MyController
{
	public function index()
	{
		$order_sn = input('order_sn');
		if(empty($order_sn)){
			return $this->error('没有找到该订单');
		}
		$payLogic = model('Pays','logic');
		$payLogic->alipay($order_sn);
	}
	public function notify_url()
	{
		$payLogic = model('Pays','logic');
		$payLogic->alipay_notify();
	}
	
	public function return_url()
	{
		$payLogic = model('Pays','logic');
		$result = $payLogic->alipay_return();
		if($result == false){
			return $this->fetch('fail');
		}
		return $this->fetch('success');
	}
}
