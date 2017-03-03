<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Partner extends MY_Controller{
	/**
	 * 构造函数
	 */
	public function __construct(){
		parent::__construct();
		$this->load->model('partner_model', 'partner');
	}
	/**
	 * 查看合作伙伴
	 */
	public function index(){
		$data['partner'] = $this->partner->select();
		$this->load->view('partner.html', $data);
	}
	/**
	 * 添加合作伙伴
	 */
	public function add_partner(){
		$this->load->helper('form');
		$this->load->view('add_partner.html');		
	}
	/**
	 * 添加动作
	 */
	public function add(){
		//载入表单验证类
		$this->load->library('form_validation');
	
		$status = $this->form_validation->run('partner');

		if($status){
			//文件上传------------------------
			//配置
			$config['upload_path'] = './logopic/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$config['max_size'] = '10000';
			$config['file_name'] = time() . mt_rand(1000,9999);

			//载入上传类
			$this->load->library('upload', $config);
			//执行上传
			$status = $this->upload->do_upload('logo');
		
			$wrong = $this->upload->display_errors();

			if($wrong){
				error($wrong);
			}
			//返回信息
			$info = $this->upload->data();
			// p($info);die;

			//缩略图-----------------
			//配置
			$arr['source_image'] = $info['full_path'];
			$arr['create_thumb'] = FALSE;
			$arr['maintain_ratio'] = TRUE;
			$arr['width'] = 160;
			$arr['height'] = 90;	

			//载入缩略图类
			$this->load->library('image_lib', $arr);
			//执行动作
			$status = $this->image_lib->resize();

			if(!$status){
				error('缩略图动作失败');
			}

			$this->load->model('partner_model', 'partner');

			$data = array(
				'name'	=> $this->input->post('name'),
				'url'	=> $this->input->post('url'),
				'logo'	=> $info['file_name']
				);	
			// p($data);die;
			$this->partner->add($data);
			success('partner/index', '添加成功');
		}else {
			$this->load->helper('form');
			$this->load->view('add_partner.html');
		}

	}


	/**
	 * 删除合作伙伴
	 */
	public function del(){
		$pid = $this->uri->segment(3);
		$this->partner->del($pid);
		success('partner/index', '删除成功');
	}








}