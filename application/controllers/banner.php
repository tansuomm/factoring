<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Banner extends MY_Controller{
	/**
	 * 构造函数
	 */
	public function __construct(){
		parent::__construct();
		$this->load->model('banner_model', 'banner');
	}
	/**
	 * 查看轮播图片
	 */
	public function index(){
		$data['banner'] = $this->banner->select();
		$this->load->view('banner.html', $data);
	}
	/**
	 * 添加合作伙伴
	 */
	public function add_banner(){
		$this->load->helper('form');
		$this->load->view('add_banner.html');		
	}
	/**
	 * 添加动作
	 */
	public function add(){
		//载入表单验证类
		$this->load->library('form_validation');
			//文件上传------------------------
			//配置
		$config['upload_path'] = './bannerpic/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg';
		$config['max_size'] = '10000';
		$config['file_name'] = time() . mt_rand(1000,9999);

		//载入上传类
		$this->load->library('upload', $config);
		//执行上传
		$status = $this->upload->do_upload('src');
	
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
		$arr['width'] = 1920;
		$arr['height'] = 500;	

		//载入缩略图类
		$this->load->library('image_lib', $arr);
		//执行动作
		$status = $this->image_lib->resize();

		if(!$status){
			error('缩略图动作失败');
		}

		$this->load->model('banner_model', 'banner');

		$data = array(
			'src'	=> $info['file_name']
			);	
		// p($data);die;
		$this->banner->add($data);
		success('banner/index', '添加成功');
	}


	/**
	 * 删除图片
	 */
	public function del(){
		$bid = $this->uri->segment(3);
		$this->banner->del($bid);
		success('banner/index', '删除成功');
	}


}