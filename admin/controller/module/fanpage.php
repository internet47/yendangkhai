<?php
class ControllerModuleFanpage extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('module/fanpage');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('extension/module');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) 
		{
			//Save lai sau khi config tham số
			if (!isset($this->request->get['module_id'])) {
				$this->model_extension_module->addModule('fanpage', $this->request->post);
			} else {
				$this->model_extension_module->editModule($this->request->get['module_id'], $this->request->post);
				
			}
			//print_r($this->request->post);
			//Thông báo sau khi save			
			$this->session->data['success'] = $this->language->get('text_success');

			//chuyển hướng sau khi add, edit module
			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}

		//Lấy các biến ngôn ngữ
		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		
		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_facebook'] = $this->language->get('entry_facebook');
		$data['entry_show_face'] = $this->language->get('entry_show_face');
		$data['entry_show_border'] = $this->language->get('entry_show_border');
		$data['entry_show_posts'] = $this->language->get('entry_show_posts');
		$data['entry_css'] = $this->language->get('entry_css');
		
		

		$data['entry_width'] = $this->language->get('entry_width');
		$data['entry_height'] = $this->language->get('entry_height');

		$data['entry_status'] = $this->language->get('entry_status');

		$data['help_product'] = $this->language->get('help_product');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}
		
		if (isset($this->error['name'])) {
			$data['error_name'] = $this->error['name'];
		} else {
			$data['error_name'] = '';
		}
		

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_module'),
			'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
		);

		if (!isset($this->request->get['module_id'])) {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('module/fanpage', 'token=' . $this->session->data['token'], 'SSL')
			);
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('module/fanpage', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL')
			);			
		}

		if (!isset($this->request->get['module_id'])) {
			$data['action'] = $this->url->link('module/fanpage', 'token=' . $this->session->data['token'], 'SSL');
		} else {
			$data['action'] = $this->url->link('module/fanpage', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL');
		}
		
		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
		}
		
		$data['token'] = $this->session->data['token'];


		

		//Xử lý khi submit dữ liệu / edit dữ liệu
		if (isset($this->request->post['name'])) {
			$data['name'] = $this->request->post['name'];
		} elseif (!empty($module_info)) {
			$data['name'] = $module_info['name'];
		} else {
			$data['name'] = '';
		}
		

		if (isset($this->request->post['facebook_url'])) {
			$data['facebook_url'] = $this->request->post['facebook_url'];
		} elseif (!empty($module_info)) {
			$data['facebook_url'] = $module_info['facebook_url'];
		} else {
			$data['facebook_url'] = 'https://www.facebook.com/FacebookDevelopers';
		}	


		if (isset($this->request->post['width'])) {
			$data['width'] = $this->request->post['width'];
		} elseif (!empty($module_info)) {
			$data['width'] = $module_info['width'];
		} else {
			$data['width'] = 300;
		}	

		if (isset($this->request->post['height'])) {
			$data['height'] = $this->request->post['height'];
		} elseif (!empty($module_info)) {
			$data['height'] = $module_info['height'];
		} else {
			$data['height'] = 300;
		}	


	
		if (isset($this->request->post['show_friend_face'])) 
		{
			$data['show_friend_face'] = $this->request->post['show_friend_face'];
		} 
		elseif (!empty($module_info)) 
		{
			if (isset($module_info['show_friend_face']))
					$data['show_friend_face'] = $module_info['show_friend_face'];
			else
					$data['show_friend_face']=0;
		}
		else 
		{
			 $data['show_friend_face'] = 0;
		}	

		if (isset($this->request->post['show_border'])) 
		{
			$data['show_border'] = $this->request->post['show_border'];
		}
		elseif (!empty($module_info)) 
		{
			if (isset($module_info['show_border']))
					$data['show_border'] = $module_info['show_border'];
			else
					$data['show_border']=0;
		}
		else
		{
			$data['show_border'] = 0;
		}
		
		if (isset($this->request->post['show_posts'])) 
		{
			$data['show_posts'] = $this->request->post['show_posts'];
		} 
		elseif (!empty($module_info)) 
		{
			if (isset($module_info['show_posts']))
					$data['show_posts'] = $module_info['show_posts'];
			else
					$data['show_posts']=0;
		}
		else
		{
			$data['show_posts'] = 0;
		}


		if (isset($this->request->post['style'])) {
			$data['style'] = $this->request->post['style'];
		} elseif (!empty($module_info)) {
			$data['style'] = $module_info['style'];
		} else {
			$data['style'] = 'margin-top:10px;';
		}	

		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($module_info)) {
			$data['status'] = $module_info['status'];
		} else {
			$data['status'] = '';
		}

		
		
		//Load phần xử lý giao dien cua Admin		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		//render
		$this->response->setOutput($this->load->view('module/fanpage.tpl', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/fanpage')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
			$this->error['name'] = $this->language->get('error_name');
		}
		
		return !$this->error;
	}
}