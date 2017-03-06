<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 轮播图片模型
 */
class Banner_model extends CI_Model{
	/**
	 * 查询后台数据
	 */
	public function select(){
		$data = $this->db->get('banner')->result_array();
		return $data;
	}
	/**
	 * 添加图片
	 */
	public function add($data){
		$this->db->insert('banner', $data);
	}
	/**
	 * 删除图片
	 */
	public function del($bid){
		$this->db->delete('banner', array('bid'=>$bid));
	}
}