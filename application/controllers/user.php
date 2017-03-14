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
	 *查看用户
	 */
	public function index(){
		//后台设置后缀为空，否则分页出错
		$this->config->set_item('url_suffix', '');
		//载入分页类
		$this->load->library('pagination');
		$perPage = 10;

		//配置项设置
		$config['base_url'] = site_url('user/index');
		$config['total_rows'] = $this->db->count_all_results('user');
		$config['per_page'] = $perPage;
		$config['uri_segment'] = 3;
		$config['first_link'] = '第一页';
		$config['prev_link'] = '上一页';
		$config['next_link'] = '下一页';
		$config['last_link'] = '最后一页';

		$this->pagination->initialize($config);

		$data['links'] = $this->pagination->create_links();
		//p($data);die;
		$offset = $this->uri->segment(3);
		$this->db->limit($perPage, $offset);		
		$data['user'] = $this->user->select();
		// p($data);die;
		$this->load->view('user.html', $data);
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
				'message' => $this->input->post('message'),
				'time' => time()
			);
		$this->user->add($arr);
		echo "success";
	}
	/*删除*/
	public function del(){
		$uid = $this->uri->segment(3);
		$this->user->del($uid);
		success('user/index', '删除成功');
	}
}

