<?php
namespace app\web\controller;
use web\controller\Base;
class About extends Base
{
	public function index()
	{
		$aboutAll = model('About')->select();
		$this->assign('about',$aboutAll);
		return $this->fetch();
	}
}