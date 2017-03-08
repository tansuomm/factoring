<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 后台客户管理模型
 */
class User_model extends CI_Model{
	/**
	 * 插入
	 */
	public function add($user){
		$this->db->insert('user',$user);
	}
}