<?php
class ControllerModuleSupport extends Controller {
	public function index($setting) {
		$data['path_icon'] =  $this->config->get('config_url') . 'image/';	
		$data['setting'] = array();

		//Đưa vào array để truyền qua tpl
		$data['setting'] =array(
			'name'=>$setting['name'],
			'yahoo_id'=>$setting['yahoo_id'],
			'hotline'=>$setting['hotline'],
			'email_contact'=>$setting['email_contact'],
			'skype_id'=>$setting['skype_id'],
			'path_icon'=>$data['path_icon'],
			'style'=>$setting['style']

		);

		//Goi tpl và truyền dữ liệu vào
		return $this->load->view('default/template/module/support.tpl', $data);
	}
}