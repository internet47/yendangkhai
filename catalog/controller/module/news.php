<?php  
class ControllerModuleNews extends Controller {
	public function index() {
		$this->language->load('information/news');
		$this->load->model('extension/news');
		$this->load->model('tool/image');
		
		$filter_data = array(
			'page' => 1,
			'limit' => 5,
			'start' => 0,
		);
	 
		$data['heading_title'] = $this->language->get('heading_title');
	 
		$all_news = $this->model_extension_news->getAllNews($filter_data);
	 
		$data['all_news'] = array();
	 	//(strlen(strip_tags(html_entity_decode($news['short_description'], ENT_QUOTES))) > 200 ? substr(strip_tags(html_entity_decode($news['short_description'], ENT_QUOTES)), 0, 50) . '...' : strip_tags(html_entity_decode($news['short_description'], ENT_QUOTES))),
		foreach ($all_news as $news) {
			// echo '<pre>';
			// print_r($news);//give me a array
			// echo '</pre>';
			// 
			// 
			
			$image = $this->model_tool_image->resize($news['image'], 100, 100);
			$data['all_news'][] = array (
				'title' 		=> html_entity_decode($news['title'], ENT_QUOTES),
				'description' 	=> strip_tags(html_entity_decode($news['short_description'], ENT_QUOTES, 'UTF-8')),
				'view' 			=> $this->url->link('information/news/news', 'news_id=' . $news['news_id']),
				'date_added' 	=> date($this->language->get('date_format_short'), strtotime($news['date_added'])),
				'image'			=> $image
			);
		}
	 
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/news.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/news.tpl', $data);
		} else {
			return $this->load->view('default/template/module/news.tpl', $data);
		}
	}
}