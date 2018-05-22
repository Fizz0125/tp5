<?php
namespace app\web\logic;

class Pays
{
	public function alipay($order_sn)
	{
		vendor('pay.alipay.alipay_core');
		vendor('pay.alipay.alipay_md5');
		vendor('pay.alipay.AlipayNotify');
		vendor('pay.alipay.AlipaySubmit');
		
		$order = $this->getOrderInfo($order_sn);
		if(empty($order)){
			return false;
		}
		if($order->stauts !== 0){
			return false;
		}
		$out_trade_no = $order_sn;

        //订单名称，必填
        $subject = '订单号：'.$order_sn;

        //付款金额，必填
        $total_fee = $order->price;

        //商品描述，可空
        $body = '';
		
		//获取配置信息
		$config = config('pay');
		$parameter = array(
				"service"       => $config['alipay']['service'],
				"partner"       => $config['alipay']['partner'],
				"seller_id"  => $config['alipay']['seller_id'],
				"payment_type"	=> $config['alipay']['payment_type'],
				"notify_url"	=> $config['alipay']['notify_url'],
				"return_url"	=> $config['alipay']['return_url'],
				
				"anti_phishing_key"=>$config['alipay']['anti_phishing_key'],
				"exter_invoke_ip"=>$config['alipay']['exter_invoke_ip'],
				"out_trade_no"	=> $out_trade_no,
				"subject"	=> $subject,
				"total_fee"	=> $total_fee,
				"body"	=> $body,
				"_input_charset"	=> trim(strtolower($config['alipay']['input_charset']))
		);
		//建立请求
		$alipaySubmit = new \AlipaySubmit($config['alipay']);
		$html_text = $alipaySubmit->buildRequestForm($parameter,"get", "确认");
		file_put_contents('pay.txt', $html_text);
		echo $html_text;
	}

	public function alipay_notify()
	{
		vendor('pay.alipay.alipay_core');
		vendor('pay.alipay.alipay_md5');
		vendor('pay.alipay.AlipayNotify');
		vendor('pay.alipay.AlipaySubmit');
		
		$config = config('pay');
		//计算得出通知验证结果
		$alipayNotify = new \AlipayNotify($config['alipay']);
		$verify_result = $alipayNotify->verifyNotify();
		
		if($verify_result) {//验证成功
			//商户订单号		
			$out_trade_no = input('out_trade_no');		
			//支付宝交易号		
			$trade_no = input('trade_no');		
			//交易状态
			$trade_status = input('trade_status');				
		    if(input('trade_status') == 'TRADE_FINISHED'||input('trade_status') == 'TRADE_SUCCESS') {
		    	$order = model('Order')->where('order_sn',$out_trade_no)->find();
				if($order->stauts == 0){
					model('Order')->where('order_sn',$out_trade_no)->update([
						'stauts' =>1
					]);
				}		    }		
			echo "success";		//请不要修改或删除			
		}
		else {
		    //验证失败
		    echo "fail";
		
		    //调试用，写文本函数记录程序运行情况是否正常
		    //logResult("这里写入想要调试的代码变量值，或其他运行的结果记录");
		}
	}

	public function alipay_return()
	{
		vendor('pay.alipay.alipay_core');
		vendor('pay.alipay.alipay_md5');
		vendor('pay.alipay.AlipayNotify');
		vendor('pay.alipay.AlipaySubmit');
		$config = config('pay');
		//计算得出通知验证结果
		$alipayNotify = new \AlipayNotify($config['alipay']);
		$verify_result = $alipayNotify->verifyNotify();
		if($verify_result==true) {//验证成功
			//商户订单号		
			$out_trade_no = input('out_trade_no');		
			//支付宝交易号		
			$trade_no = input('trade_no');		
			//交易状态
			$trade_status = input('trade_status');				
		    if(input('trade_status') == 'TRADE_FINISHED'||input('trade_status') == 'TRADE_SUCCESS') {
		    	$order = model('Order')->where('order_sn',$out_trade_no)->find();
				if($order->stauts == 0){
					model('Order')->where('order_sn',$out_trade_no)->update([
						'stauts' =>1
					]);
				}		  
			}		
			return true;		//请不要修改或删除			
		}
		else {
		    //验证失败
		    return false;
		
		    //调试用，写文本函数记录程序运行情况是否正常
		    //logResult("这里写入想要调试的代码变量值，或其他运行的结果记录");
		}
	}
	private function getOrderInfo($order_sn)
	{
		return model('Order')->where('order_sn',$order_sn)->find();
	}
}
