<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 数据接口
 */
class Data extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->model('banner_model', 'banner');
		header('content-type:application:json;charset=utf8');  
		header('Access-Control-Allow-Origin:*');  
		header('Access-Control-Allow-Methods:POST');  
		header('Access-Control-Allow-Headers:x-requested-with,content-type');  

	}
	public function banner(){
		$banner = $this->banner->select();
		echo json_encode(array('list' =>$banner));
		exit;
	}
	
}
