<?php
class ModelExtensionTopic extends Model {
	public function addTopic($data) 
		{ //Thêm
			$this->db->query("INSERT INTO " . DB_PREFIX . "topic SET image = '" . $this->db->escape($data['image']) . "', date_added = NOW(), status = '" . (int)$data['status'] . "'".", title= '".$this->db->escape($data['title'])."', description='".$this->db->escape($data['description'])."', content='".$this->db->escape($data['content'])."', category_topic_id='".(int)$data['category_topic_id']."', sort_order='".(int)$data['sort_order']."'");

			$topic_id = $this->db->getLastId();

			if ($data['keyword']) //đưa slug vào trong db url_alias
				{
				$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'topic_id=" . (int)$topic_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
				}

		}

	public function editTopic($topic_id, $data) 
		{//cập nhật
		$this->db->query("UPDATE " . DB_PREFIX . "topic SET image = '" . $this->db->escape($data['image']) . "', status = '" . (int)$data['status'] . "', title= '".$this->db->escape($data['title'])."', description='".$this->db->escape($data['description'])."', content='".$this->db->escape($data['content'])."', category_topic_id='".(int)$data['category_topic_id']."', sort_order='".(int)$data['sort_order']."', date_modified= NOW() WHERE topic_id = '" . (int)$topic_id . "'");

		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'topic_id=" . (int)$topic_id. "'");
		
				if ($data['keyword']) {
					$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'topic_id=" . (int)$topic_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
				}


		}


	public function getTopic($topic_id) {
		$query = $this->db->query("SELECT DISTINCT *, (SELECT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'topic_id=" . (int)$topic_id . "') AS keyword FROM " . DB_PREFIX . "topic WHERE topic_id = '" . (int)$topic_id . "'"); 
 
		if ($query->num_rows) {
			return $query->row;
		} else {
			return false;
		}
	}



	public function getTopicbyID($topic_id) //hiển thị khi edit
		{
		$query = $this->db->query("SELECT * FROM ".DB_PREFIX."topic WHERE topic_id=" . (int)$topic_id . ""); 
			if ($query->num_rows) 
			{
				return $query->row;
			} else {
				return false;
			}
		}
	
	 
	public function getAllTopic($data) 
		{//hiển thị tất cả
		$sql = "SELECT t.*, c.title as category FROM ".DB_PREFIX. "topic as t, ".DB_PREFIX."category_topic as c where t.category_topic_id = c.category_topic_id ORDER BY t.date_added DESC";
		//$sql = "SELECT * FROM " . DB_PREFIX . "topic ORDER BY date_added DESC";
		if (isset($data['start']) && isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}
			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}	
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}	
		$query = $this->db->query($sql);
		return $query->rows;
		}
   
	public function deleteTopic($topic_id) 
		{//xóa
		$this->db->query("DELETE FROM " . DB_PREFIX . "topic WHERE topic_id = '" . (int)$topic_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'topic_id=" . (int)$topic_id. "'");
		}
   
	public function getTotalTopic() 
		{
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "topic");
		return $query->row['total'];
		}


	/*===================CATEGORY================================================================ */


		public function getListCategory() 
			{//hiển thị tất cả
				$sql = "SELECT * FROM " . DB_PREFIX . "category_topic ORDER BY date_added DESC";
				$query = $this->db->query($sql);
				return $query->rows;
			}


		public function getAllCategoryTopic($data) 
			{//hiển thị tất cả
				$sql = "SELECT * FROM " . DB_PREFIX . "category_topic ORDER BY date_added DESC";
				if (isset($data['start']) && isset($data['limit'])) {
					if ($data['start'] < 0) {
						$data['start'] = 0;
					}
					if ($data['limit'] < 1) {
						$data['limit'] = 20;
					}	
					$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
				}	
				$query = $this->db->query($sql);
				return $query->rows;
			}

		public function getTotalCategoryTopic() 
			{
				$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category_topic");
			
				return $query->row['total'];
			}

			public function getCategoryTopic($category_topic_id) {
				$query = $this->db->query("SELECT DISTINCT *, (SELECT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'category_topic_id=" . (int)$category_topic_id . "') AS keyword FROM " . DB_PREFIX . "category_topic WHERE category_topic_id = '" . (int)$category_topic_id . "'"); 
		 
				if ($query->num_rows) {
					return $query->row;
				} else {
					return false;
				}
			}



		public function addCategoryTopic($data) 
			{ //Thêm
				$this->db->query("INSERT INTO " . DB_PREFIX . "category_topic SET date_added = NOW(), status = '" . (int)$data['status'] . "'".", title= '".$this->db->escape($data['title'])."', sort_order='".(int)$data['sort_order']."'");
				$category_topic_id = $this->db->getLastId();

				if ($data['keyword']) //đưa slug vào trong db url_alias
				{
				$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'category_topic_id=" . (int)$category_topic_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
				}

			}


		public function getCategoryTopicbyID($category_topic_id) //hiển thị khi edit
			{
			    $query = $this->db->query("SELECT * FROM ".DB_PREFIX."category_topic WHERE category_topic_id=" . (int)$category_topic_id . ""); 
				if ($query->num_rows) {
					return $query->row;
				} else {
					return false;
				}

			}


		public function editCategoryTopic($category_topic_id, $data) 
			{//cập nhật
			$this->db->query("UPDATE " . DB_PREFIX . "category_topic SET status = '" . (int)$data['status'] . "', title= '".$this->db->escape($data['title'])."', sort_order='".(int)$data['sort_order']."', date_modified= NOW() WHERE category_topic_id = '" . (int)$category_topic_id . "'");

				$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'category_topic_id=" . (int)$category_topic_id. "'");
		
				if ($data['keyword']) {
					$this->db->query("INSERT INTO " . DB_PREFIX . "url_alias SET query = 'category_topic_id=" . (int)$category_topic_id . "', keyword = '" . $this->db->escape($data['keyword']) . "'");
				}

			}


		public function deleteCategoryTopic($category_topic_id) 
			{//xóa
			$this->db->query("DELETE FROM " . DB_PREFIX . "category_topic WHERE category_topic_id = '" . (int)$category_topic_id . "'");
			$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'category_topic_id=" . (int)$category_topic_id. "'");
			}




}//end file