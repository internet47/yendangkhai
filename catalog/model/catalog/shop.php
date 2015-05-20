<?php
class ModelCatalogShop extends Model {

	public function getAllShop() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "shop WHERE status=1 ORDER BY sort_order ASC");
		return $query->rows;
	}

	public function getShop($shop_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "shop ORDER BY position ASC");
		return $query->row;
	}

	public function getShops($data = array()) {
		if ($data) {
			$sql = "SELECT * FROM " . DB_PREFIX . "shop m LEFT JOIN " . DB_PREFIX . "shop_to_store m2s ON (m.shop_id = m2s.shop_id) WHERE m2s.store_id = '" . (int)$this->config->get('config_store_id') . "'";

			$sort_data = array(
				'name',
				'sort_order'
			);

			if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
				$sql .= " ORDER BY " . $data['sort'];
			} else {
				$sql .= " ORDER BY name";
			}

			if (isset($data['order']) && ($data['order'] == 'DESC')) {
				$sql .= " DESC";
			} else {
				$sql .= " ASC";
			}

			if (isset($data['start']) || isset($data['limit'])) {
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
		} else {
			$shop_data = $this->cache->get('shop.' . (int)$this->config->get('config_store_id'));

			if (!$shop_data) {
				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "shop m LEFT JOIN " . DB_PREFIX . "shop_to_store m2s ON (m.shop_id = m2s.shop_id) WHERE m2s.store_id = '" . (int)$this->config->get('config_store_id') . "' ORDER BY name");

				$shop_data = $query->rows;

				$this->cache->set('shop.' . (int)$this->config->get('config_store_id'), $shop_data);
			}

			return $shop_data;
		}
	}
}