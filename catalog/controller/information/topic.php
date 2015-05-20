<?php
class ControllerInformationTopic extends Controller {
	public function index() {

		$this->language->load('information/topic');

		$this->load->model('extension/topic');
	 
		$this->document->setTitle($this->language->get('heading_title')); 
	 
		$data['breadcrumbs'] = array();
		
		$data['breadcrumbs'][] = array(
			'text' 		=> $this->language->get('text_home'),
			'href' 		=> $this->url->link('common/home')
		);
		$data['breadcrumbs'][] = array(
			'text' 		=> $this->language->get('heading_title'),
			'href' 		=> $this->url->link('information/topic')
		);
		  
		$url = '';
		
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}	

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else { 
			$page = 1;
		}
		
		$filter_data = array(
			'page' 	=> $page,
			'limit' => 10,
			'start' => 10 * ($page - 10),
		);
		
		$total = $this->model_extension_topic->getTotalTopic();

		$pagination = new Pagination();
		$pagination->total = $total;
		$pagination->page = $page;
		$pagination->limit = 10;
		$pagination->url = $this->url->link('information/topic', 'page={page}');
		
		$data['pagination'] = $pagination->render();
	 
		$data['results'] = sprintf($this->language->get('text_pagination'), ($total) ? (($page - 10) * 10) + 10 : 0, ((($page - 10) * 10) > ($total - 10)) ? $total : ((($page - 10) * 10) + 10), $total, ceil($total / 10));

		$data['heading_title'] = $this->language->get('heading_title');
		$data['text_title'] = $this->language->get('text_title');
		$data['text_description'] = $this->language->get('text_description');
		$data['text_date'] = $this->language->get('text_date');
		$data['text_view'] = $this->language->get('text_view');


		$catss = $this->model_extension_topic->getListCategoryTopic();
		// echo '<pre>';
		// print_r($catss);//give me a array
		// echo '</pre>';

		$data['cats']=array();
		foreach ($catss as $cat) {
			$data['cats'][]=array(
				'title'=> html_entity_decode($cat['title'], ENT_QUOTES),
				'view'=> $this->url->link('information/topic/category', 'category_topic_id=' . $cat['category_topic_id']),
				);
			# code...
		}

	 
		$all_news = $this->model_extension_topic->getAllTopic($filter_data);
		// echo '<pre>';
		// print_r($all_news);//give me a array
		// echo '</pre>';
		
	 
		$data['all_news'] = array();
		
		$this->load->model('tool/image');
	 
		foreach ($all_news as $news) {
			$data['all_news'][] = array (
				'title' 		=> html_entity_decode($news['title'], ENT_QUOTES),
				'image'			=> $this->model_tool_image->resize($news['image'], 100, 100),
				'description' 	=> (strlen(strip_tags(html_entity_decode($news['description'], ENT_QUOTES))) > 300 ? substr(strip_tags(html_entity_decode($news['description'], ENT_QUOTES)), 0, 300) . '...' : strip_tags(html_entity_decode($news['description'], ENT_QUOTES))),
				'view' 			=> $this->url->link('information/topic/topic', 'topic_id=' . $news['topic_id']),
				'date_added' 	=> date($this->language->get('date_format_short'), strtotime($news['date_added']))
			);
		}
	 
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/topic_list.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/topic_list.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/information/topic_list.tpl', $data));
		}
	}
 
	public function topic() {
	  
		$this->load->model('extension/topic');
		$this->language->load('information/topic');
 
		if (isset($this->request->get['topic_id']) && !empty($this->request->get['topic_id'])) {
			$topic_id = $this->request->get['topic_id'];
		} else {
			$topic_id = 0;
		}
 
		$news = $this->model_extension_topic->getTopic($topic_id);
 
		$data['breadcrumbs'] = array();
	  
		$data['breadcrumbs'][] = array(
			'text' 			=> $this->language->get('text_home'),
			'href' 			=> $this->url->link('common/home')
		);
	  
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('information/topic')
		);
 
		if ($news) {
			$data['breadcrumbs'][] = array(
				'text' 		=> $news['title'],
				'href' 		=> $this->url->link('information/topic/topic', 'topic_id=' . $topic_id)
			);
 
			$this->document->setTitle($news['title']);
			
			$this->load->model('tool/image');
			
			$data['image'] = $this->model_tool_image->resize($news['image'], 100, 100);
 
			$data['heading_title'] = html_entity_decode($news['title'], ENT_QUOTES);
			$data['description'] = html_entity_decode($news['content'], ENT_QUOTES);
			$data['short_description'] = html_entity_decode($news['description'], ENT_QUOTES);
	 
			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			
			
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/topic.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/topic.tpl', $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/information/topic.tpl', $data));
			}
		} else {
			$data['breadcrumbs'][] = array(
				'text' 		=> $this->language->get('text_error'),
				'href' 		=> $this->url->link('information/news', 'news_id=' . $news_id)
			);
	 
			$this->document->setTitle($this->language->get('text_error'));
			
	 		$data['heading_title'] = $this->language->get('text_error');
			$data['text_error'] = $this->language->get('text_error');
			$data['button_continue'] = $this->language->get('button_continue');
			$data['continue'] = $this->url->link('common/home');
			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/error/not_found.tpl', $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/error/not_found.tpl', $data));
			}
		}
	}

	public function category() {
	  
		$this->load->model('extension/topic');
		$this->language->load('information/topic');
 
		if (isset($this->request->get['category_topic_id']) && !empty($this->request->get['category_topic_id'])) {
			$category_topic_id = $this->request->get['category_topic_id'];
		} else {
			$category_topic_id = 0;
		}



		
		$data = array();

		$data['breadcrumbs'] = array();
	  
		$data['breadcrumbs'][] = array(
			'text' 			=> $this->language->get('text_home'),
			'href' 			=> $this->url->link('common/home')
		);
	  
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('information/topic')
		);

		$url = '';
		
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}	

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else { 
			$page = 1;
		}
		
		$filter_data = array(
			'page' 	=> $page,
			'limit' => 10,
			'start' => 10 * ($page - 10),
		);
		
		$total = $this->model_extension_topic->getTotalCategoryTopic($category_topic_id);

		$pagination = new Pagination();
		$pagination->total = $total;
		$pagination->page = $page;
		$pagination->limit = 10;
		$pagination->url = $this->url->link('information/topic/category&category_topic_id='.(int)$category_topic_id, 'page={page}');
		
		$data['pagination'] = $pagination->render();
	 
		$data['results'] = sprintf($this->language->get('text_pagination'), ($total) ? (($page - 10) * 10) + 10 : 0, ((($page - 10) * 10) > ($total - 10)) ? $total : ((($page - 10) * 10) + 10), $total, ceil($total / 10));


		$topics = $this->model_extension_topic->getAllTopicCategory($category_topic_id,$filter_data);
 
		if ($topics) 
		{
			$data['heading_title'] = $this->language->get('heading_title');
			$data['text_title'] = $this->language->get('text_title');
			$data['text_description'] = $this->language->get('text_description');
			$data['text_date'] = $this->language->get('text_date');
			$data['text_view'] = $this->language->get('text_view');

			
			$this->load->model('tool/image');

			foreach ($topics as $topic) 
			{
				# code...
					
					// $data['breadcrumbs'][] = array(
					// 	'text' 		=> $topics['title'],
					// 	'href' 		=> $this->url->link('information/topic/category', 'category_topic_id=' . $category_topic_id)
					// );

				$this->document->setTitle($this->language->get('heading_title'),$filter_data);
				$data['all_news'][] = array (
				'title' 		=> html_entity_decode($topic['title'], ENT_QUOTES),
				'image'			=> $this->model_tool_image->resize($topic['image'], 100, 100),
				'description' 	=> (strlen(strip_tags(html_entity_decode($topic['description'], ENT_QUOTES))) > 300 ? substr(strip_tags(html_entity_decode($topic['description'], ENT_QUOTES)), 0, 300) . '...' : strip_tags(html_entity_decode($topic['description'], ENT_QUOTES))),
				'view' 			=> $this->url->link('information/topic/topic', 'topic_id=' . $topic['topic_id']),
				'date_added' 	=> date($this->language->get('date_format_short'), strtotime($topic['date_added']))
			);

			}
	 
			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			
			
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/category_topic_list.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/category_topic_list.tpl', $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/information/category_topic_list.tpl', $data));
			}

		} else {
			die();
			$data['breadcrumbs'][] = array(
				'text' 		=> $this->language->get('text_error'),
				'href' 		=> $this->url->link('information/topic', 'category_topic_id=' . $category_topic_id)
			);
	 
			$this->document->setTitle($this->language->get('text_error'));
			
	 		$data['heading_title'] = $this->language->get('text_error');
			$data['text_error'] = $this->language->get('text_error');
			$data['button_continue'] = $this->language->get('button_continue');
			$data['continue'] = $this->url->link('common/home');
			$data['column_left'] = $this->load->controller('common/column_left');
			$data['column_right'] = $this->load->controller('common/column_right');
			$data['content_top'] = $this->load->controller('common/content_top');
			$data['content_bottom'] = $this->load->controller('common/content_bottom');
			$data['footer'] = $this->load->controller('common/footer');
			$data['header'] = $this->load->controller('common/header');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/error/not_found.tpl', $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/error/not_found.tpl', $data));
			}
		}
	}
	

}