<?php
namespace app\web\controller;
use web\controller\Base;
use app\admin\controller\Product;
class Home extends Base
{
	public function index()
	{
		$product = model('Product');
		//查询属于咖啡分类的产品5个
		$procate = $product
		->field('product.id,product.pic,product.pro_category_id')
		->order('id','desc')
		->where('pro_category_id','2')
		->limit('0,5')
		->select();
		$banner = db('banner')->order('id','desc')->limit(4)->select();
		$this->assign('banner',$banner);
		$this->assign('procate',$procate);
		//查询最新产品信息
		$pro = $product->order('id','desc')->limit('0,4')->select();
		$this->assign('pro',$pro);
		return $this->fetch();
	}
}