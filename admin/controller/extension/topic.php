<?php
class ControllerExtensionTopic extends Controller {
	private $error = array();
	
	public function index() {
		
		$this->language->load('extension/topic');
		$this->load->model('extension/topic');
	

		$this->document->setTitle($this->language->get('heading_title'));
		

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
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('extension/topic', 'token=' . $this->session->data['token'] . $url, 'SSL')
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


		
		$total = $this->model_extension_topic->getTotalTopic();
		
		$pagination = new Pagination();
		$pagination->total = $total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_admin');
		$pagination->url = $this->url->link('extension/topic', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($total) ? (($page - 1) * $this->config->get('config_limit_admin')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_admin')) > ($total - $this->config->get('config_limit_admin'))) ? $total : ((($page - 1) * $this->config->get('config_limit_admin')) + $this->config->get('config_limit_admin')), $total, ceil($total / $this->config->get('config_limit_admin')));

		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_title'] = $this->language->get('text_title');
		$data['text_category'] = $this->language->get('text_category');
		$data['text_image'] = $this->language->get('text_image');
		$data['text_description'] = $this->language->get('text_description');
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
		
		$data['add'] = $this->url->link('extension/topic/insert', '&token=' . $this->session->data['token'] . $url, 'SSL');
		$data['delete'] = $this->url->link('extension/topic/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');
		
		$data['all_topic'] = array();

		
		//Get all topic
		$all_topic = $this->model_extension_topic->getAllTopic($filter_data);
				// echo '<pre>';
				// print_r($all_topic);//give me a array
				// echo '</pre>';

		foreach ($all_topic as $topic) {

				$this->load->model('tool/image');//xử lý image

				if (!empty($topic['image']))
				$image = $this->model_tool_image->resize($topic['image'] ? $topic['image'] : 'no_image.png', 40, 40);


			$data['all_topic'][] = array (
				'topic_id' 			=> $topic['topic_id'],
				'category' => $topic['category'],
				'title' 			=> $topic['title'],
				'image' 	        => $image,
				'description'	=> $topic['description'],
				'status' 			=> $topic['status'],
				'sort_order' 		=> $topic['sort_order'],
				'date_added' 		=> date($this->language->get('date_format_short'), strtotime($topic['date_added'])),
				'edit' 				=> $this->url->link('extension/topic/edit', 'topic_id=' . $topic['topic_id'] . '&token=' . $this->session->data['token'] . $url, 'SSL')
			);
		}
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/topic_list.tpl', $data));	
	}
	
	public function edit() {
		$this->language->load('extension/topic');
		$this->load->model('extension/topic');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) 
		{
				$this->model_extension_topic->editTopic($this->request->get['topic_id'], $this->request->post);		
				$this->session->data['success'] = $this->language->get('text_success');		
				$this->response->redirect($this->url->link('extension/topic', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		$this->form();
	}
	
	public function insert() {
		$this->language->load('extension/topic');
		$this->load->model('extension/topic');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) 
		{
				$this->model_extension_topic->addTopic($this->request->post);		
				$this->session->data['success'] = $this->language->get('text_success');
				$this->response->redirect($this->url->link('extension/topic', 'token=' . $this->session->data['token'], 'SSL'));
		}

		$this->form();// gọi form nhập
	}
	
	protected function form() {
		$this->language->load('extension/topic');
		$this->load->model('extension/topic');
		$data['breadcrumbs'] = array();
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('extension/topic', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		if (isset($this->request->get['topic_id'])) {
			$data['action'] = $this->url->link('extension/topic/edit', '&topic_id=' . $this->request->get['topic_id'] . '&token=' . $this->session->data['token'], 'SSL');
		} else {
			$data['action'] = $this->url->link('extension/topic/insert', '&token=' . $this->session->data['token'], 'SSL');
		}
		
		$data['cancel'] = $this->url->link('extension/topic', '&token=' . $this->session->data['token'], 'SSL');
		
		$data['heading_title'] = $this->language->get('heading_title');
		
		$data['text_image'] = $this->language->get('text_image');
		$data['text_title'] = $this->language->get('text_title');
		$data['text_short_description'] = $this->language->get('text_short_description');
		$data['text_description'] = $this->language->get('text_description');
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


		if (isset($this->error['title'])) {
			$data['error_title'] = $this->error['title'];
		} else {
			$data['error_title'] = '';
		}


		if (isset($this->error['description'])) {
			$data['error_description'] = $this->error['description'];
		} else {
			$data['error_description'] = '';
		}


		if (isset($this->error['keyword'])) {
			$data['error_keyword'] = $this->error['keyword'];
		} else {
			$data['error_keyword'] = '';
		}

		//--------------------------------------------------------------
		

		// //Đoc dữ liệu từ DB
		// if (isset($this->request->get['topic_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST'))
		// 	$data_show = $this->model_extension_topic->getTopicbyID($this->request->get['topic_id']);

		// if (isset($this->request->get['topic_id'])) {
		// 	$topic = $data_show['topic_id'];
		// } else {
		// 	$topic = array();
		// }
		

		if (isset($this->request->get['topic_id'])) {
			$topic = $this->model_extension_topic->getTopic($this->request->get['topic_id']); // Lấy dữ liệu bài viết và keyword trong url_alias table
		} else {
			$topic = array();
		}

		
		//Get list category
		$getListCategory = $this->model_extension_topic->getListCategory();
		foreach ($getListCategory as $cat) {
				$data['all_category'][] = array(
					'category_topic_id'=>$cat['category_topic_id'],
					'title'=>$cat['title']
				);
		}


		if (isset($this->request->post['category_topic_id'])) {
			$data['category_topic_id'] = $this->request->post['category_topic_id'];
		} elseif (!empty($data_show)) {
			$data['category_topic_id'] = $data_show['category_topic_id'];
		} else {
			$data['category_topic_id'] = '';
		}

		if (isset($this->request->post['title'])) {
			$data['title'] = $this->request->post['title'];
		} elseif (!empty($topic)) {
			$data['title'] = $topic['title'];
		} else {
			$data['title'] = '';
		}

		if (isset($this->request->post['description'])) {
			$data['description'] = $this->request->post['description'];
		} elseif (!empty($topic)) {
			$data['description'] = $topic['description'];
		} else {
			$data['description'] = '';
		}

		if (isset($this->request->post['content'])) {
			$data['content'] = $this->request->post['content'];
		} elseif (!empty($topic)) {
			$data['content'] = $topic['content'];
		} else {
			$data['content'] = '';
		}
		
		if (isset($this->request->post['image'])) {
			$data['image'] = $this->request->post['image'];
		} elseif (!empty($topic)) {
			$data['image'] = $topic['image'];
		} else {
			$data['image'] = '';
		}
		
		$this->load->model('tool/image');
		

		if (isset($this->request->post['image']) && is_file(DIR_IMAGE . $this->request->post['image'])) 
			{
			$data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);
			} elseif (!empty($topic) && is_file(DIR_IMAGE . $topic['image'])) {
				$data['thumb'] = $this->model_tool_image->resize($topic['image'], 100, 100);
			} else {
				$data['thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
			}
		
		$data['no_image'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		
		if (isset($this->request->post['keyword'])) {
			$data['keyword'] = $this->request->post['keyword'];
		} elseif (!empty($topic)) {
			$data['keyword'] = $topic['keyword'];
		} else {
			$data['keyword'] = '';
		}
		
		if (isset($this->request->post['sort_order'])) {
			$data['sort_order'] = $this->request->post['sort_order'];
		} elseif (!empty($topic)) {
			$data['sort_order'] = $topic['sort_order'];
		} else {
			$data['sort_order'] = '';
		}


		if (isset($this->request->post['status'])) {
			$data['status'] = $this->request->post['status'];
		} elseif (!empty($topic)) {
			$data['status'] = $topic['status'];
		} else {
			$data['status'] = '';
		}
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/topic_form.tpl', $data));
	}
	
	public function delete() {
		$this->language->load('extension/topic');
		$this->load->model('extension/topic');
		$this->document->setTitle($this->language->get('heading_title'));
		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $topic_id) {
				$this->model_extension_topic->deleteTopic($topic_id);
			}
			$this->session->data['success'] = $this->language->get('text_success');
		}
		$this->response->redirect($this->url->link('extension/topic', 'token=' . $this->session->data['token'], 'SSL'));
	}
	
	protected function validateDelete() 
			{
				if (!$this->user->hasPermission('modify', 'extension/topic')) {
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
				if (!$this->user->hasPermission('modify', 'extension/topic')) {
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
		if (!$this->user->hasPermission('modify', 'extension/topic')) 
		{
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if ((utf8_strlen($this->request->post['title']) < 2) || (utf8_strlen($this->request->post['title']) > 64)) {
			$this->error['title'] = $this->language->get('error_title');
		}

		if ((utf8_strlen($this->request->post['description']) < 2)) {
			$this->error['description'] = $this->language->get('error_description');
		}

		if ((utf8_strlen($this->request->post['keyword']) < 2)) {
			$this->error['keyword'] = $this->language->get('error_keyword');
		}
		return !$this->error;
	}

}//end file