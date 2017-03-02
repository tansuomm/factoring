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
		$data = $this->db->get('cases')->result_array();
		return $data;
	}


	// /**
	//  * 首页查询文章
	//  */
	// public function check(){
	// 	$data['art'] = $this->db->select('aid,thumb,title,info')->order_by('time', 'desc')->get_where('article', array('type'=>0))->result_array();

	// 	$data['hot'] = $this->db->select('aid,thumb,title,info')->order_by('time', 'desc')->get_where('article', array('type'=>1))->result_array();

	// 	return $data;
	// }

	// /**
	//  * 右侧文章标题调取
	//  */
	// public function title($limit){
	// 	$data = $this->db->select('title,aid')->order_by('time', 'desc')->limit($limit)->get('article')->result_array();
	// 	return $data;
	// }

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