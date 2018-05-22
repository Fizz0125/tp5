<?php
namespace app\web\controller;
use web\controller\Base;
class News extends Base
{
	public function index()
	{
		$newsModel = model('News');
		$category = db('news_category')->select();
		$cid = input('cid/d');
		$cid = empty($cid)?$category[0]['id']:$cid;
		$totalNum = $newsModel->where('news_category_id',$cid)->count();
		$page = input('page/d');
		if(input('post.')){
			$page = input('page/d');
		}
		$curPage= empty($page)?1:intval($page);
		$pages = page($totalNum, $curPage,5);
		$newsAll = $newsModel->where('news_category_id',$cid)->order('id','desc')->limit($pages['limitStart'],$pages['perPage'])->select();
		foreach($newsAll as $value){
			$value['addtime'] = date('Y/m/d',$value['addtime']);
		}
		$totalPage = ceil($totalNum/$pages['perPage']);
		$endPage = $pages['endPage'];
		$this->assign('endPage',$endPage);
		$this->assign('curPage',$curPage);
		$this->assign('startPage',$pages['startPage']);
		$this->assign('totalPage',$pages['totalPage']);
		$this->assign('news',$newsAll);
		$this->assign('cid',$cid);
		$this->assign('cate',$category);
		$this->assign('num',$totalNum);
		$this->assign('totalPage',$totalPage);
		return $this->fetch();
	}
	public function details()
	{
		$cid = input('cid/d');
		$cid = empty($cid)?$category[0]['id']:$cid;
		$category = db('news_category')->select();
		$id = input('id/d');
		if(empty($id)){
			return $this->error('非法操作');
		}
		$newsModel = model('News');
		$news = $newsModel->where('id',$id)->find();
		$preSql = $newsModel->order('id','desc')->where('id','<',$id)->find();
		$nextSql = $newsModel->order('id','ASC')->where('id','>',$id)->find();
		$news['year'] = date('Y.m.d',$news['addtime']);
		$news['time'] = date('H:i');
		$news['content']=db('news_content')->where('news_id',$id)->value('content');
		$this->assign('pre',$preSql);
		$this->assign('next',$nextSql);
		$this->assign('cid',$cid);
		$this->assign('cate',$category);
		$this->assign('news',$news);
		return $this->fetch();
	}
}