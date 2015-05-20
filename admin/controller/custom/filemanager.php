<?php 
Class ControllerCustomFilemanager extends Controller {

public function index () {
	$this->load->language('custom/filemanager_my');
  $this->document->setTitle($this->language->get('text_filemanager_my'));
  
  $this->document->addStyle('http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/themes/smoothness/jquery-ui.css');
  $this->document->addStyle('view/javascript/manager/css/elfinder.min.css');
  $this->document->addStyle('view/javascript/manager/css/theme.css');
  
  $this->document->addScript('http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/jquery-ui.min.js');
  $this->document->addScript('view/javascript/manager/js/elfinder.max.js');
	
  //$this->document->addScript('view/javascript/manager/js/i18n/elfinder.ru.js');
	
	$data['init_url'] = 'index.php?route=custom/filemanager/init&token=' . $this->session->data['token'];
	$data['h1_title'] = $this->language->get('text_filemanager_my');
	
	$data['header'] = $this->load->controller('common/header');
	$data['column_left'] = $this->load->controller('common/column_left');
	$data['footer'] = $this->load->controller('common/footer');
	
	$data['breadcrumbs'] = array();

	$data['breadcrumbs'][] = array(
		'text' => $this->language->get('text_home'),
		'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL')
	);

	$data['breadcrumbs'][] = array(
		'text' => $this->language->get('text_filemanager_my'),
		'href' => $this->url->link('custom/filemanager', 'token=' . $this->session->data['token'], 'SSL')
		);

				
	$this->response->setOutput($this->load->view('custom/filemanager.tpl', $data));

}

public function init () {
    
    require_once(DIR_SYSTEM . 'library' . DIRECTORY_SEPARATOR . 'custom' . DIRECTORY_SEPARATOR . 'file_manager_lib.php');
   
    $startPath = DIR_CATALOG;
    if(isset($_GET['startPath']) && !empty($_GET['startPath'])) {
        $startPath .= $_GET['startPath'];
    }

    
    $opts = array(
    'roots' => array(
      array( 
        'driver' => 'LocalFileSystem', 
        'path'   => DIR_APPLICATION . '../', 
        'startPath' => $startPath,
        'URL'    => DIR_APPLICATION
       ) 
      )
    );
    $myManager = new File_manager_lib($opts);
    exit;
}


}