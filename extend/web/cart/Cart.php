<?php
namespace web\cart;

class Cart
{
	protected $data = null;
	
	
	/*
	 * 购物车初始化
	 * 
	 */
	public function __construct()
	{
		$this->data = cookie('cart');
	}
	
	/*
	 * 添加购物车
	 * 
	 */
	 public function insert($id,$qty)
	 {
	 	if(!isset($this->data[$id])){
	 		$pro = $this->getProductInof($id);
			$pro['qty'] = $qty;
			$this->data[$id] = $pro;
		}
	 }
	 
	/*
	 * 更新购物车
	 * 
	 */
	 public function update($id,$qty)
	 {
	 	if(isset($this->data[$id])){
	 		$this->data[$id]['qty'] = $qty;
	 	}
	 }
	 /*
	 * 删除购物车
	 * 
	 */
	 public function delete($id)
	 {
	 	if(isset($this->data[$id])){
	 		unset($this->data[$id]);
	 	}
	 }
	 /*
	 * 查询购物车
	 * 
	 */
	 public function getCart()
	 {
	 	return $this->data;
	 }
	 /*
	 * 清空购物车
	 * 
	 */
	 public function destory()
	 {
	 	$this->data = null;
	 }
	 /*
	 * 统计购物车
	 * 
	 */
	 public function getTotal()
	 {
	 	$total = [
	 		'price' =>0,
	 		'qty' =>0,
	 	];
		if(!empty($this->data)){
			foreach($this->data as $value){
				$total['qty'] += $value['qty'];
				$total['price'] += $value['shop_price']*$value['qty'];
			}
		}
		return $total;
	 }
	 private function getProductInof($id)
	 {
	 	static $product = null;
		if(!isset($product[$id])){
			$product[$id] = db('product')->field('id,pic,brief,shop_price,pro_category_id')->find($id);
		}
		return $product[$id];
	 }
	 public function __destruct()
	 {
	 	cookie('cart',$this->data,26*60*60);
	 }
}
