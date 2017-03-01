<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * 后台登录控制器
 */
class Login extends CI_Controller {

	public function index()
	{
		$this->load->view('login');
	}
	/**
	 * 验证码
	 */
	public function code(){
		$config = array(
			'width'	=>	100,
			'height'=>	36,
			'codeLen'=>	4,
			'fontSize'=>16
			);
		$this->load->library('code', $config);

		$this->code->show();

	}
	/**
	 * 登陆
	 */
	public function login_in(){
		$code = $this->input->post('captcha');
		if(!isset($_SESSION)){
			session_start();
		}
		if(strtoupper($code) != $_SESSION['code']) error('验证码错误');

		$username = $this->input->post('username');
		$this->load->model('admin_model', 'admin');
		$userData = $this->admin->check($username);

		$passwd = $this->input->post('passwd');

		if(!$userData || $userData[0]['passwd'] != md5($passwd)) error('用户名或者密码不正确');

		$sessionData = array(
			'username'	=> $username,
			'uid'		=> $userData[0]['uid'],
			'logintime' => time()
			);

		$this->session->set_userdata($sessionData);
		
		success('admin/index', '登陆成功');

	}


	/**
	 * 退出登陆
	 */
	public function login_out(){
		$this->session->sess_destroy();
		success('login/index','退出成功');
	}

}
