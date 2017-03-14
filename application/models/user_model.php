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
	/**
	 * 查看用户
	 */
	public function select(){
		$data = $this->db->order_by('uid', 'asc')->get('user')->result_array();
		return $data;
	}
	/*删除*/
	public function del($uid){
		$this->db->delete('user', array('uid'=>$uid));
	}
}