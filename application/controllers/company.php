<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Company extends MY_Controller{
	/**
	 * 构造函数
	 */
	public function __construct(){
		parent::__construct();
		$this->load->model('company_model', 'company');
	}
	/**
	 * 查看简介
	 */
	public function info(){
		$data['company'] = $this->company->select();
		$this->load->view('company_info.html', $data);
	}
	/**
	 * 查看文化
	 */
	public function culture(){
		$data['company'] = $this->company->select();
		$this->load->view('company_culture.html', $data);
	}
	/**
	 * 修改公司内容和简介
	 */
	public function change(){
		$arr = array(
				'coid' => $this->input->post('coid'),
				'info' => $this->input->post('info'),
				'culture' => $this->input->post('culture')
			);
		$flag = $this->input->post('flag');
		$this->company->update($arr['coid'], $arr);
		if($flag == "1"){
			success('company/info', '修改成功');
		}else if($flag == "2"){
			success('company/culture', '修改成功');
		}else{
			success('company/info', '修改成功');
		}
	}
}