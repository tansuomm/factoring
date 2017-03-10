<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 文章管理模型
 */
class Cases_model extends CI_Model{
	/**
	 * 发表案例
	 */
	public function add($data){
		$this->db->insert('cases', $data);
	}

	/**
	 * 查看案例
	 */
	public function cases(){
		$data = $this->db->order_by('time', 'desc')->get('cases')->result_array();
		return $data;
	}

	/**
	 * 通过caid 调取案例
	 */
	
	public function caid_cases($caid){
		$data = $this->db->get_where('cases', array('caid'=>$caid))->result_array();
		return $data;
	}
	/**
	* 更新案例
	*/
	public function update_cases($caid,$data){
		$this->db->update('cases', $data, array('caid'=>$caid));
	}

	/**
	 * 删除案例
	 */
	public function del($caid){
		$this->db->delete('cases', array('caid'=>$caid));
	}

}