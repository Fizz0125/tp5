<?php
namespace admin\auth;

use think\Request;
class RBAC
{
	// 配置权限类属性
	private $_config = [
			// 是否开启权限控制
			'on' => true,
			// 权限控制的类型  1：即时控制 2：登陆权限控制
			'type' => 1, 
			// 数据表
			'table' => [
				'user' => 'admin',
				'role' => 'role',
				'node' => 'node',
				'access' => 'access',
				'admin_role' => 'admin_role',
			],
			//例外
			'exception' => [],
			// 超级管理员
			'super' => ['admin'],
	]; 
	
	public function __construct()
	{
		// 先读取配置文件
		$config = config('rbac');
		
		if( ! empty($config)) {
			$this->_config = array_merge($this->_config,$config);
		}
	}
	
	
	// 检查用户是否有访问该节点的权限
	public function check($uid='',$controller='',$action='')
	{
		$request = Request::instance();
		// 处理节点信息
		$controller = ! empty($controller) ? $controller : $request->controller();
		$action     = ! empty($action) ? $action : $request->action();
		
		$controller = strtolower($controller);
		$action = strtolower($action);
		
		// 找用户
		$session = session('admin');
		$uid = ! empty($uid) ? $uid : $session['id']; 
		
		// 通过uid找出管理员的信息
		$user = $this->getUser($uid);
		if(empty($user)) {
			return false;
		}
		
		// 超级管理员
		if(in_array($user['username'], $this->_config['super'])) {
			return true;
		}
		
		// 例外
		if(isset($this->_config['exception'][$controller])) {
			if(is_string($this->_config['exception'][$controller]) && $this->_config['exception'][$controller] == 'all'){
				return true;
			}else if(in_array($action, $this->_config['exception'][$controller])) {
				return true;
			}
		}
		
		// 权限控制类型
		if($this->_config['type'] == 1) {
			$access = $this->getAccess($uid);
		}else {
			$access = $session['auth'];
		}
		
		
		if($access === false) {
			return false;
		}
		
		// 判断是否拥有访问该节点的权限
		if( ! isset($access[$controller])) {
			return false;
		}
		
		if( ! in_array($action, $access[$controller])) {
			return false;
		}
		
		return true;		
	}
	
	// 获取用户权限数组
	public function getAccess($uid){
		
		// 通过uid找出该用户的角色
		$roleid =  $this->getRoleId($uid);
		if(empty($roleid)) {
			return false;
		}
		
		// 通过角色id找出该用户拥有的所有权限id
		$nodeid = $this->getNodeId($roleid);
		if(empty($nodeid)) {
			return false;
		}
		
		// 通过节点id找到节点信息
		$access = $this->getNode($nodeid);
		
		return $access;
	}	
	
	// 找出节点信息
	protected function getNode($node_id)
	{
		$node = db($this->_config['table']['node'])->where('id','in',$node_id)->select();
		
		
		$temp = [];
		foreach ($node as $value) {
			
			// 找该节点父节点
			$parent = $this->getNodeInfo($value['pid']);
			
			if( ! empty($parent)) {
				$temp[strtolower($parent['name'])][] =strtolower($value['name']);
			}
		}

		return $temp;
	}
	
	protected function getNodeInfo($id)
	{
		static $node = null;
		
		if( ! isset($node[$id])) {
			$node[$id] = db($this->_config['table']['node'])->find($id);			
		}
		
		return $node[$id];
	}	
	
	// 找出该用户的权限id
	protected function getNodeId($role_id)
	{
		$nodeid = db($this->_config['table']['access'])->where('role_id','in',$role_id)->column('node_id');
		return array_unique($nodeid);
	}
	
	//找出角色ID
	protected function getRoleId($uid) 
	{
		return db($this->_config['table']['admin_role'])->where('admin_id',$uid)->column('role_id');
	}

	// 找出管理信息
	protected function getUser($id) 
	{
		return db($this->_config['table']['user'])->field('id,username')->find($id);
	}
}