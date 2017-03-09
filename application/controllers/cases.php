<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cases extends MY_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('cases_model', 'cases');
	}
	/**
	 * 查看案例
	 */
	public function index(){
		//后台设置后缀为空，否则分页出错
		$this->config->set_item('url_suffix', '');
		//载入分页类
		$this->load->library('pagination');
		$perPage = 5;

		//配置项设置
		$config['base_url'] = site_url('cases/index');
		$config['total_rows'] = $this->db->count_all_results('cases');
		$config['per_page'] = $perPage;
		$config['uri_segment'] = 3;
		$config['first_link'] = '第一页';
		$config['prev_link'] = '上一页';
		$config['next_link'] = '下一页';
		$config['last_link'] = '最后一页';

		$this->pagination->initialize($config);

		$data['links'] = $this->pagination->create_links();
		// p($data);die;
		$offset = $this->uri->segment(3);
		$this->db->limit($perPage, $offset);
		$data['cases'] = $this->cases->cases();
		$this->load->view('cases.html', $data);
	}
	/**
	 * 发表案例模板显示
	 */
	public function send_cases(){
		$this->load->helper('form');
		$this->load->view('add_cases.html');
	}

	/**
	 * 发表案例动作
	 */
	public function send(){

		//载入表单验证类
		$this->load->library('form_validation');
		//执行验证
		$status = $this->form_validation->run('cases');

		if($status){
			//文件上传------------------------
			//配置
			$config['upload_path'] = './casepic/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$config['max_size'] = '10000';
			$config['file_name'] = time() . mt_rand(1000,9999);

			//载入上传类
			$this->load->library('upload', $config);
			//执行上传
			$status = $this->upload->do_upload('thumb');
		
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
			$arr['width'] = 900;
			$arr['height'] = 500;	

			//载入缩略图类
			$this->load->library('image_lib', $arr);
			//执行动作
			$status = $this->image_lib->resize();

			if(!$status){
				error('缩略图动作失败');
			}

			$this->load->model('cases_model', 'cases');
			$data = array(
				'title'	=> $this->input->post('title'),
				'type'	=> $this->input->post('type'),
				'thumb'	=> $info['file_name'],
				'content'=> $this->input->post('content'),
				'info'=> $this->input->post('info'),
				'time'	=> time()
				);	
			// p($data);die;
			$this->cases->add($data);
			success('cases/index', '发表成功');
		}else {
			$this->load->helper('form');
			$this->load->view('add_cases.html');
		}
	}

	/**
	 * 编辑案例
	 */
	public function edit_cases(){
		$caid = $this->uri->segment(3);
		$data['cases'] = $this->cases->caid_cases($caid);
		$this->load->helper('form');
		$this->load->view('edit_cases.html',$data);
	}


	/**
	 * 编辑动作
	 */
	public function edit(){
		$this->load->library('form_validation');
		$status = $this->form_validation->run('cases');
		//thumb暂时没有
		$data = array(
			'caid' => $this->input->post('caid'),
			'title'	=> $this->input->post('title'),
			'type'	=> $this->input->post('type'),
			'content'=> $this->input->post('content'),
			'info'=> $this->input->post('info'),
			'time'	=> time()
			);	
		if($status){
			//文件上传------------------------
			//配置
			$config['upload_path'] = './casepic/';
			$config['allowed_types'] = 'gif|jpg|png|jpeg';
			$config['max_size'] = '10000';
			$config['file_name'] = time() . mt_rand(1000,9999);

			//载入上传类
			$this->load->library('upload', $config);
			//执行上传
			$status = $this->upload->do_upload('thumb');
		
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
			$arr['width'] = 900;
			$arr['height'] = 500;	

			//载入缩略图类
			$this->load->library('image_lib', $arr);
			//执行动作
			$status = $this->image_lib->resize();

			if(!$status){
				error('缩略图动作失败');
			}

			$this->load->model('cases_model', 'cases');
			$data['thumb'] = $info['file_name'];

			$this->cases->update_cases($data['caid'],$data);
			success('cases/index', '发表成功');
		}else {
			$this->load->helper('form');
			$this->load->view('edit_cases.html',$data);
		}
	}
	/**
	 * 删除案例
	 */
	public function del(){
		$caid = $this->uri->segment(3);
		$this->cases->del($caid);
		success('cases/index', '删除成功');
	}
}
