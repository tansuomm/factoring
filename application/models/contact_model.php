<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 后台联系我盟模型
 */
class Contact_model extends CI_Model{
	/**
	 * 查询后台用户数据
	 */
	public function select(){
		$data = $this->db->get('contact')->result_array();
		return $data;
	}

	/**
	 * 修改联系内容
	 */
	public function update($usid, $data){
		$this->db->update('contact', $data, array('usid'=>$usid));
	}

}