<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Contact extends MY_Controller{
	/**
	 * 构造函数
	 */
	public function __construct(){
		parent::__construct();
		$this->load->model('Contact_model', 'contact');
	}
	/**
	 * 查看联系内容
	 */
	public function index(){
		$data['contact'] = $this->contact->select();
		$this->load->view('contact.html', $data);
	}
	/**
	 * 修改联系内容
	 */
	public function change(){
		$arr = array(
				'usid' => $this->input->post('usid'),
				'tel' => $this->input->post('tel'),
				'email' => $this->input->post('email'),
				'address' => $this->input->post('address'),
				'other' => $this->input->post('other')
			);
		$this->contact->update($arr['usid'], $arr);
		
		success('contact/index', '修改成功');
		
	}
}