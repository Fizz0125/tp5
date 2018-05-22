<?php
namespace web\footprint;

class footprint
{
	protected $data = null;
	
	
	/*
	 * 购物车初始化
	 * 
	 */
	public function __construct()
	{
		$this->data = cookie('foot');
	}
	
	/*
	 * 添加购物车
	 * 
	 */
	 public function insert($id,$qty)
	 {
	 	if(!isset($this->data[$id])){
	 		$pro = $this->getProductInof($id);
			$this->data[$id] = $pro;
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
	 public function getFoot()
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
	 	cookie('foot',$this->data,26*60*60);
	 }
}
