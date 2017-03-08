<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * user 控制器
 */
class User extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->model('user_model', 'user');
		
		//header('content-type:application:json;charset=utf8');  
		header('Access-Control-Allow-Origin:*');  
		header('Access-Control-Allow-Methods:POST');  
		header('Access-Control-Allow-Headers:x-requested-with,content-type');  
	}
	/**
	 * 添加用户
	 */
	public function add(){
		$arr = array(
				'name' => $this->input->post('name'),
				'email' => $this->input->post('email'),
				'phone' => $this->input->post('phone'),
				'company' => $this->input->post('company'),
				'subject' => $this->input->post('subject'),
				'message' => $this->input->post('message')
			);
		$this->user->add($arr);
		echo "success";
	}
}

