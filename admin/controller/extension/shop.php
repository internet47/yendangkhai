<?php
class ControllerExtensionShop extends Controller {
	private $error = array();
	
	public function index() {
		
		$this->language->load('extension/shop');
		$this->load->model('extension/shop');
		$this->document->setTitle($this->language->get('heading_position'));
		

		$url = '';
		
		if (isset($this->request->get['page'])) 
		{
			$url .= '&page=' . $this->request->get['page'];
		}
		
		$data['breadcrumbs'] = array();
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL')
		);
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_position'),
			'href'      => $this->url->link('extension/shop', 'token=' . $this->session->data['token'] . $url, 'SSL')
   		);
		
		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];
		
			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}

		if (isset($this->error['warning'])) {
			$data['error'] = $this->error['warning'];
		
			unset($this->error['warning']);
		} else {
			$data['error'] = '';
		}
		
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else { 
			$page = 1;
		}
		
		$url = '';
		
		$filter_data = array(
			'page' => $page,
			'limit' => $this->config->get('config_limit_admin'),
			'start' => $this->config->get('config_limit_admin') * ($page - 1),
		);


		
		$total = $this->model_extension_shop->getTotalShop();
		
		$pagination = new Pagination();
		$pagination->total = $total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('extension/shop', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($total - $this->config->get('config_limit_admin'))) ? $total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $total, ceil($total / $this->config->get('config_limit_admin')));

		$data['heading_position'] = $this->language->get('heading_position');
		$data['text_position'] = $this->language->get('text_position');
		$data['text_category'] = $this->language->get('text_category');
		$data['text_image'] = $this->language->get('text_image');
		$data['text_address'] = $this->language->get('text_address');
		$data['text_status'] = $this->language->get('text_status');
		$data['text_sort'] = $this->language->get('text_sort');
		$data['text_date'] = $this->language->get('text_date');
		$data['text_action'] = $this->language->get('text_action');
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_list'] = $this->language->get('text_list');
		$data['text_no_results'] = $this->language->get('text_no_results');
		$data['text_confirm'] = $this->language->get('text_confirm');
		$data['button_add'] = $this->language->get('button_add');
		$data['button_delete'] = $this->language->get('button_delete');
		
		$url = '';
		
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
		
		$data['add'] = $this->url->link('extension/shop/insert', '&token=' . $this->session->data['token'] . $url, 'SSL');
		$data['delete'] = $this->url->link('extension/shop/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');
		
		$data['all_shop'] = array();

		
		//Get all shop
		$all_shop = $this->model_extension_shop->getAllShop($filter_data);

		foreach ($all_shop as $shop) {

				
			$data['all_shop'][] = array (
				'shop_id' 			=> $shop['shop_id'],
				'position' 			=> $shop['position'],
				'status' 			=> $shop['status'],
				'sort_order' 		=> $shop['sort_order'],
				'date_added' 		=> date($this->language->get('date_format_short'), strtotime($shop['date_added'])),
				'edit' 				=> $this->url->link('extension/shop/edit', 'shop_id=' . $shop['shop_id'] . '&token=' . $this->session->data['token'] . $url, 'SSL')
			);
		}
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/shop_list.tpl', $data));	
	}
	
	public function edit() {
		$this->language->load('extension/shop');
		$this->load->model('extension/shop');
		
		$this->document->setTitle($this->language->get('heading_position'));
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) 
		{
				$this->model_extension_shop->editShop($this->request->get['shop_id'], $this->request->post);		
				$this->session->data['success'] = $this->language->get('text_success');		
				$this->response->redirect($this->url->link('extension/shop', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		$this->form();
	}
	
	public function insert() {
		$this->language->load('extension/shop');
		$this->load->model('extension/shop');
		
		$this->document->setTitle($this->language->get('heading_position'));
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) 
		{
				$this->model_extension_shop->addShop($this->request->post);		
				$this->session->data['success'] = $this->language->get('text_success');
				$this->response->redirect($this->url->link('extension/shop', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->form();// gọi form nhập
	}
	
	protected function form() {
		$this->language->load('extension/shop');
		$this->load->model('extension/shop');
		$data['breadcrumbs'] = array();
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_position'),
			'href'      => $this->url->link('extension/shop', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		if (isset($this->request->get['shop_id'])) {
			$data['action'] = $this->url->link('extension/shop/edit', '&shop_id=' . $this->request->get['shop_id'] . '&token=' . $this->session->data['token'], 'SSL');
		} else {
			$data['action'] = $this->url->link('extension/shop/insert', '&token=' . $this->session->data['token'], 'SSL');
		}
		
		$data['cancel'] = $this->url->link('extension/shop', '&token=' . $this->session->data['token'], 'SSL');
		
		$data['heading_position'] = $this->language->get('heading_position');
		
		$data['text_image'] = $this->language->get('text_image');
		$data['text_position'] = $this->language->get('text_position');
		$data['text_short_address'] = $this->language->get('text_short_address');
		$data['text_address'] = $this->language->get('text_address');
		$data['text_status'] = $this->language->get('text_status');
		$data['text_sort'] = $this->language->get('text_sort');
		$data['text_keyword'] = $this->language->get('text_keyword');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');
		$data['text_browse'] = $this->language->get('text_browse');
		$data['text_clear'] = $this->language->get('text_clear');
		$data['text_image_manager'] = $this->language->get('text_image_manager');

		$data['text_category'] = $this->language->get('text_category');
		
		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');
		
		$data['token'] = $this->session->data['token'];
		
		$this->load->model('localisation/language');
		
		$data['languages'] = $this->model_localisation_language->getLanguages();
		

		//--------Thông báo dùng trong validate--------
		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}


		if (isset($this->error['position'])) {
			$data['error_position'] = $this->error['position'];
		} else {
			$data['error_position'] = '';
		}


		if (isset($this->error['address'])) {
			$data['error_address'] = $this->error['address'];
		} else {
			$data['error_address'] = '';
		}


		if (isset($this->error['keyword'])) {
			$data['error_keyword'] = $this->error['keyword'];
		} else {
			$data['error_keyword'] = '';
		}

		//--------------------------------------------------------------
		

		// //Đoc dữ liệu từ DB
		// if (isset($this->request->get['shop_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST'))
		// 	$data_show = $this->model_extension_shop->getShopbyID($this->request->get['shop_id']);

		// if (isset($this->request->get['shop_id'])) {
		// 	$shop = $data_show['shop_id'];
		// } else {
		// 	$shop = array();
		// }
		

		if (isset($this->request->get['shop_id'])) {
			$shop = $this->model_extension_shop->getShop($this->request->get['shop_id']); // Lấy dữ liệu bài viết và keyword trong url_alias table
		} else {
			$shop = array();
		}

	


		if (isset($this->request->post['position'])) {
			$data['position'] = $this->request->post['position'];
		} elseif (!empty($shop)) {
			$data['position'] = $shop['position'];
		} else {
			$data['position'] = '';
		}

		

		if (isset($this->request->post['address'])) {
			$data['address'] = $this->request->post['address'];
		} elseif (!empty($shop)) {
			$data['address'] = $shop['address'];
		} else {
			$data['address'] = '';
		}
		
		
		
		
		
		if (isset($this->request->post['sort_order'])) {
			$data['sort_order'] = $this->request->post['sort_order'];
		} elseif (!empty($shop)) {
			$data['sort_order'] = $shop['sort_order'];
		} else {
			$data['sort_order'] = '';
		}


		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($shop)) {
			$data['status'] = $shop['status'];
		} else {
			$data['status'] = '';
		}
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/shop_form.tpl', $data));
	}
	
	public function delete() {
		$this->language->load('extension/shop');
		$this->load->model('extension/shop');
		$this->document->setTitle($this->language->get('heading_position'));
		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $shop_id) {
				$this->model_extension_shop->deleteShop($shop_id);
			}
			$this->session->data['success'] = $this->language->get('text_success');
		}
		$this->response->redirect($this->url->link('extension/shop', 'token=' . $this->session->data['token'], 'SSL'));
	}
	
	protected function validateDelete() 
			{
				if (!$this->user->hasPermission('modify', 'extension/shop')) {
					$this->error['warning'] = $this->language->get('error_permission');
				}
		 
				if (!$this->error) {
					return true; 
				} else {
					return false;
				}
			}
	
	protected function validate() 
			{
				if (!$this->user->hasPermission('modify', 'extension/shop')) {
					$this->error['warning'] = $this->language->get('error_permission');
				}
				
				if (!$this->error) {
					return true;
				} else {
					return false;
				}	
			}


	protected function validateForm() 
	{
		//Phai check them dieu kien tren function form() nữa thì mới hiển thị thông báo lỗi.
		if (!$this->user->hasPermission('modify', 'extension/shop')) 
		{
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if ((utf8_strlen($this->request->post['position']) < 2) || (utf8_strlen($this->request->post['position']) > 64)) {
			$this->error['position'] = $this->language->get('error_position');
		}

		if ((utf8_strlen($this->request->post['address']) < 2)) {
			$this->error['address'] = $this->language->get('error_address');
		}

		
		return !$this->error;
	}

}//end file
