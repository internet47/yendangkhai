<?php
class ModelExtensionShop extends Model {
	public function addShop($data) 
		{ //Thêm
			$this->db->query("INSERT INTO " . DB_PREFIX . "shop SET date_added = NOW(), status = '" . (int)$data['status'] . "'".", position= '".$this->db->escape($data['position'])."', address='".$this->db->escape($data['address'])."', sort_order='".(int)$data['sort_order']."'");
		}

	public function editShop($shop_id, $data) 
		{//cập nhật
		$this->db->query("UPDATE " . DB_PREFIX . "shop SET status = '" . (int)$data['status'] . "', position= '".$this->db->escape($data['position'])."', address='".$this->db->escape($data['address'])."', sort_order='".(int)$data['sort_order']."', date_modified= NOW() WHERE shop_id = '" . (int)$shop_id . "'");
		}


	public function getShop($shop_id) {
		$query = $this->db->query("SELECT DISTINCT *, (SELECT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'shop_id=" . (int)$shop_id . "') AS keyword FROM " . DB_PREFIX . "shop WHERE shop_id = '" . (int)$shop_id . "'"); 
 
		if ($query->num_rows) {
			return $query->row;
		} else {
			return false;
		}
	}



	public function getShopbyID($shop_id) //hiển thị khi edit
		{
		$query = $this->db->query("SELECT * FROM ".DB_PREFIX."shop WHERE shop_id=" . (int)$shop_id . ""); 
			if ($query->num_rows) 
			{
				return $query->row;
			} else {
				return false;
			}
		}
	
	 
	public function getAllShop($data) 
		{//hiển thị tất cả
		//$sql = "SELECT t.*, c.position as category FROM ".DB_PREFIX. "shop as t, ".DB_PREFIX."category_shop as c where t.category_shop_id = c.category_shop_id ORDER BY t.date_added DESC";
		$sql = "SELECT * FROM " . DB_PREFIX . "shop ORDER BY position ASC";
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
   
	public function deleteShop($shop_id) 
		{//xóa
		$this->db->query("DELETE FROM " . DB_PREFIX . "shop WHERE shop_id = '" . (int)$shop_id . "'");
		}
   
	public function getTotalShop() 
		{
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "shop");
		return $query->row['total'];
		}

}//end file