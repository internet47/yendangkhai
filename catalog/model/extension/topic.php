<?php
class ModelExtensionTopic extends Model {	
	public function getTopic($topic_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "topic  WHERE topic_id = '" . (int)$topic_id . "'");
		return $query->row;
	}

	public function getCategoryTopic($category_topic_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_topic  WHERE category_topic_id = '" . (int)$category_topic_id . "'");
		return $query->row;
	}

	public function getAllTopicCategory($category_topic_id, $data) {
		$sql = "SELECT * FROM " . DB_PREFIX . "topic  WHERE status = '1' and category_topic_id='".$category_topic_id."' ORDER BY date_added DESC";
		
		if (isset($data['start']) && isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}
			
			if ($data['limit'] < 1) {
				$data['limit'] = 1;
			}	
		
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}	

		$query = $this->db->query($sql);
		return $query->rows;
		
		
		// $query = $this->db->query($sql);
		// if ($query->num_rows) {
		// 	return $query->rows;
		// } else {
		// 	return false;
		// }
	}
	
 


	public function getAllTopic($data) {
		$sql = "SELECT * FROM " . DB_PREFIX . "topic  WHERE status = '1' ORDER BY date_added DESC";
		
		if (isset($data['start']) && isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}
			
			if ($data['limit'] < 1) {
				$data['limit'] = 10;
			}	
		
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}	

		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	

	public function getTotalTopic() 
		{
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "topic");
		return $query->row['total'];
		}


	public function getTotalCategoryTopic($category_topic_id) 
		{
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "topic WHERE category_topic_id='".$category_topic_id."'");
		return $query->row['total'];
		}




		/* CATERGORY */

	public function getListCategoryTopic()
	{
		$query = $this->db->query("SELECT * FROM ".DB_PREFIX."category_topic  WHERE status = '1' ORDER BY date_added DESC");
		
		//WHERE c.status = '1' ORDER BY c.date_added DESC
		//url_alias
		//category_topic_id
		// category_topic
		// $query = $this->db->query("SELECT DISTINCT *, (SELECT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'topic_id=" . (int)$topic_id . "') AS keyword FROM " . DB_PREFIX . "topic WHERE topic_id = '" . (int)$topic_id . "'"); 
 	
		if ($query->num_rows) {
			return $query->rows;
		} else {
			return false;
		}
		# code...
	}

}