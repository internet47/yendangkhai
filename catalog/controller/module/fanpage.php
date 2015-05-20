<?php
class ControllerModuleFanpage extends Controller {
	public function index($setting) {
		$this->load->language('module/fanpage');
		$data['setting'] = array();


		if (!isset($setting['show_friend_face']))
			$setting['show_friend_face']=0;
		if (!isset($setting['show_border']))
			$setting['show_border']=0;
		if (!isset($setting['show_posts']))
			$setting['show_posts']=0;

		//Đưa vào array để truyền qua tpl
		$data['setting'] =array(
			'name'=>$setting['name'],
			'facebook_url'=>$setting['facebook_url'],
			'width'=>$setting['width'],
			'height'=>$setting['height'],
			'show_friend_face'=>$setting['show_friend_face'],
			'show_border'=>$setting['show_border'],
			'show_posts'=>$setting['show_posts'],
			'style'=>$setting['style']
		);

		//Goi tpl và truyền dữ liệu vào
		return $this->load->view('default/template/module/fanpage.tpl', $data);
	}
}