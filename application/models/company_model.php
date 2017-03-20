<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 后台公司简介模型
 */
class Company_model extends CI_Model{
	/**
	 * 查询后台用户数据
	 */
	public function select(){
		// $this->db->where(array('username'=>$username))->get('admin')->result_array();
		$data = $this->db->get('company')->result_array();
		return $data;
	}

	/**
	 * 修改公司简介和优势
	 */
	public function update($coid, $data){
		$this->db->update('company', $data, array('coid'=>$coid));
	}

}