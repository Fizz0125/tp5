<?php
namespace web\controller;
use think\Controller;
class Base extends Controller
{
	public function __construct()
	{
		parent::__construct();
		$copyright = db('copyright')->find();
		$this->assign('copyright',$copyright);
	}
}
