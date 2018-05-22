<?php
namespace app\web\controller;
use web\controller\Base;
class Product extends Base
{
	public function index()
	{
		$proModel = model('Product');
		$category = db('pro_category')->select();
		$cid = input('cid/d');
		$cid = empty($cid)?$category[0]['id']:$cid;
		$totalNum = $proModel->where('pro_category_id',$cid)->count();
		$page = input('page/d');
		if(input('post.')){
			$page = input('page/d');
		}
		$curPage= empty($page)?1:intval($page);
		$pages = page($totalNum, $curPage,6);
		$proAll = $proModel->field('id,pic,name')->order('id','desc')->where('pro_category_id',$cid)->limit($pages['limitStart'],$pages['perPage'])->select();
		$totalPage = ceil($totalNum/$pages['perPage']);
		$endPage = $pages['endPage'];
		$this->assign('endPage',$endPage);
		$this->assign('curPage',$curPage);
		$this->assign('startPage',$pages['startPage']);
		$this->assign('totalPage',$pages['totalPage']);
		$this->assign('pro',$proAll);
		$this->assign('cid',$cid);
		$this->assign('cate',$category);
		$this->assign('num',$totalNum);
		$this->assign('totalPage',$totalPage);
		return $this->fetch();
		return $this->fetch();
	}

	public function details()
	{
		$cid = input('cid/d');
		$cid = empty($cid)?$category[0]['id']:$cid;
		$category = db('pro_category')->select();
		$id = input('id/d');
		if(empty($id)){
			return $this->error('非法操作');
		}
		$pro = model('Product')->where('id',$id)->find();
		$pro['start_time'] = date('H:i',$pro['start_time']);
		$pro['end_time'] = date('H:i',$pro['end_time']);
		$pic = db('pro_img')->where('pid',$id)->select();
		if(empty($pic)){
			$pic[0]['path'] = '/static/web/images/on.jpg';
		}
		$this->assign('pic',$pic);
		$this->assign('cid',$cid);
		$this->assign('cate',$category);
		$this->assign('pro',$pro);
		return $this->fetch();
	}
}