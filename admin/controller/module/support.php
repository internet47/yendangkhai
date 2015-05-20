<?php
class ControllerModuleSupport extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('module/support');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('extension/module');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) 
		{
			//Save lai sau khi config tham số
			if (!isset($this->request->get['module_id'])) {
				$this->model_extension_module->addModule('support', $this->request->post);
			} else {
				$this->model_extension_module->editModule($this->request->get['module_id'], $this->request->post);
				print_r($this->request->post);
			}
			
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
		$data['entry_yahoo'] = $this->language->get('entry_yahoo');
		$data['entry_hotline'] = $this->language->get('entry_hotline');
		$data['entry_email_contact'] = $this->language->get('entry_email_contact');
		$data['entry_skype'] = $this->language->get('entry_skype');
		$data['entry_css'] = $this->language->get('entry_css');
		

		$data['entry_limit'] = $this->language->get('entry_limit');
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
				'href' => $this->url->link('module/support', 'token=' . $this->session->data['token'], 'SSL')
			);
		} else {
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('module/support', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL')
			);			
		}

		if (!isset($this->request->get['module_id'])) {
			$data['action'] = $this->url->link('module/support', 'token=' . $this->session->data['token'], 'SSL');
		} else {
			$data['action'] = $this->url->link('module/support', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], 'SSL');
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
		
		if (isset($this->request->post['yahoo_id'])) {
			$data['yahoo_id'] = $this->request->post['yahoo_id'];
		} elseif (!empty($module_info)) {
			$data['yahoo_id'] = $module_info['yahoo_id'];
		} else {
			$data['yahoo_id'] = 'vietguy_18:Sale Department, tho4444: Supporter';
		}	

		if (isset($this->request->post['hotline'])) {
			$data['hotline'] = $this->request->post['hotline'];
		} elseif (!empty($module_info)) {
			$data['hotline'] = $module_info['hotline'];
		} else {
			$data['hotline'] = '090.xxx.xxxx - 090.xxx.xxxx';
		}	

		if (isset($this->request->post['email_contact'])) {
			$data['email_contact'] = $this->request->post['email_contact'];
		} elseif (!empty($module_info)) {
			$data['email_contact'] = $module_info['email_contact'];
		} else {
			$data['email_contact'] = 'your_email[@]gmail.com';
		}	

		if (isset($this->request->post['skype_id'])) {
			$data['skype_id'] = $this->request->post['skype_id'];
		} elseif (!empty($module_info)) {
			$data['skype_id'] = $module_info['skype_id'];
		} else {
			$data['skype_id'] = 'your_skype_id';
		}	


		if (isset($this->request->post['style'])) {
			$data['style'] = $this->request->post['style'];
		} elseif (!empty($module_info)) {
			$data['style'] = $module_info['style'];
		} else {
			$data['style'] = 'border-bottom:1px solid #dddddd; padding: 5px; background-color: #DDDDDD';
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
		$this->response->setOutput($this->load->view('module/support.tpl', $data));
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'module/support')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
			$this->error['name'] = $this->language->get('error_name');
		}
		
		return !$this->error;
	}
}