<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 数据接口
 */
class Data extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->model('banner_model', 'banner');
		$this->load->model('partner_model','partner');
		$this->load->model('contact_model','contact');
		header('content-type:application:json;charset=utf8');  
		header('Access-Control-Allow-Origin:*');  
		header('Access-Control-Allow-Methods:POST');  
		header('Access-Control-Allow-Headers:x-requested-with,content-type');  

	}
	/* 获取banner */
	public function banner(){
		$banner = $this->banner->select();
		echo json_encode(array('list' =>$banner));
		exit;
	}
	/* 获取友情链接 */
	public function partner(){
		$partner = $this->partner->select();
		echo json_encode(array('list'=>$partner));
		exit;
	}
	/* 获取我们信息 */
	public function contact(){
		$contact = $this->contact->select();
		echo json_encode($contact);
		exit;
	}
}
