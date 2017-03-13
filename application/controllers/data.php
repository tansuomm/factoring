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
		$this->load->model('article_model','article');
		$this->load->model('cases_model','cases');
		$this->load->model('company_model','company');
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
	/*获取新闻信息*/
	public function news(){
		$article = $this->article->select();
		//格式化日期
		foreach ($article as $key => $value) {
			$article[$key]['time'] = date('Y-m-d',$value['time']);
		}
		echo json_encode(array('list'=>$article));
		exit;
	}
	/*获取案例*/
	public function cases(){
		$cases = $this->cases->cases();
		//格式化日期

		foreach ($cases as $key => $value) {
			$cases[$key]['day'] = date('d',$value['time']);
			$cases[$key]['month'] = date('m',$value['time']);
		}
		echo json_encode(array('list'=>$cases));
		exit;
	}
	public function caseItem(){
		$caid = $this->input->post('caid');
		$case = $this->cases->caid_cases($caid);
		foreach ($case as $key => $value) {
			$case[$key]['time'] = date('Y-m-d',$value['time']);
		}
		echo json_encode(array('list'=>$case));
		exit;
	}
	/*公司简介和文化*/
	public function aboutUs(){
		$company = $this->company->select();
		echo json_encode($company);
		exit;
	}
}
