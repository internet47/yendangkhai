<?php class ControllerModuleEasypopup extends Controller {
        private $error = array();

        public function index() {
                $this->load->language('module/easypopup');
                $this->document->setTitle($this->language->get('heading_title'));

                $this->load->model('setting/setting');

                if (($this->request->server['REQUEST_METHOD'] == 'POST')) {
                        $this->model_setting_setting->editSetting('easypopup', $this->request->post);

                        $this->session->data['success'] = $this->language->get('text_success');

                       $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
                }
				$data = array();
                $data['heading_title'] = $this->language->get('heading_title');
				$data['easypopup'] = html_entity_decode($this->config->get('easypopup'));
				$data['easypopuplink'] = $this->config->get('easypopuplink');
				$data['easypopupimage'] = $this->config->get('easypopupimage');
                $data['coupon_pop_code'] = $this->language->get('coupon_pop_code');
				$data['counter_code'] = $this->language->get('stats_counter_code');
				$data['counter_image'] = $this->language->get('stats_counter_image');
				$data['counter_link'] = $this->language->get('stats_counter_link');
				$data['text_edit'] = $this->language->get('text_edit');
                $data['button_save'] = $this->language->get('button_save');
                $data['button_cancel'] = $this->language->get('button_cancel');
                $data['button_add_module'] = $this->language->get('button_add_module');
                $data['button_remove'] = $this->language->get('button_remove');
                $data['breadcrumbs'] = array();
                $data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_home'),
                        'href' => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
                'separator' => false
                );
                $data['breadcrumbs'][] = array(
                'text' => $this->language->get('text_module'),
                        'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
                'separator' => ' :: '
                );

                $data['action'] = $this->url->link('module/easypopup', 'token=' . $this->session->data['token'], 'SSL');

                $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
				
				if (isset($this->request->post['easypopup'])) {
                        $data['easypopup'] = $this->request->post['easypopup'];
                }
				
				
				$this->load->model('tool/image');
				$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
				
				if (isset($this->request->post['image']) && is_file(DIR_IMAGE . $this->request->post['image'])) {
					$data['thumb'] = $this->model_tool_image->resize($this->request->post['image'], 100, 100);
				} elseif ($this->config->get('easypopupimage') && is_file(DIR_IMAGE . $this->config->get('easypopupimage'))) {
					$data['thumb'] = $this->model_tool_image->resize($this->config->get('easypopupimage'), 100, 100);
				} else {
					$data['thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
				}

              
					$data['header'] = $this->load->controller('common/header');
					$data['column_left'] = $this->load->controller('common/column_left');
				$data['footer'] = $this->load->controller('common/footer');
				$this->response->setOutput($this->load->view('module/easypopup.tpl', $data));
         }
        }
?>
