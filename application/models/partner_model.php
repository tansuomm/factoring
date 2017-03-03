<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 合作伙伴模型
 */
class Partner_model extends CI_Model{
	/**
	 * 查询后台数据
	 */
	public function select(){
		$data = $this->db->get('partner')->result_array();
		return $data;
	}
	/**
	 * 添加伙伴
	 */
	public function add($data){
		$this->db->insert('partner', $data);
	}
	/**
	 * 删除伙伴
	 */
	public function del($pid){
		$this->db->delete('partner', array('pid'=>$pid));
	}
}