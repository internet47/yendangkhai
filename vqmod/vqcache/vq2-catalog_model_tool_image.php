<?php
class ModelToolImage extends Model {


  // zjisti URL nahledu podle ID polozky (pro Facebook LIKE/SEND)
  public function getThumbById($item_id, $page = '') {	
				
		if ( !$item_id OR !$page ) { return false; }
    
    switch ($page) {
        
      case "category":
        if ( !is_numeric($item_id) ) {
  		    $item_id_path = explode('_', $item_id);			
  		    $item_id      = end($item_id_path);          
        }                 
        if ( !is_numeric($item_id) ) { return false; }        
        $query = $this->db->query("
          SELECT DISTINCT c.image  
          FROM " . DB_PREFIX . "category c  
          WHERE c.category_id = '" . (int)$item_id . "'  
        ");
        break;

      case "manufacturer":
       	if ( !is_numeric($item_id) ) { return false; } 
        $query = $this->db->query("
          SELECT DISTINCT m.image  
          FROM " . DB_PREFIX . "manufacturer m  
          WHERE m.manufacturer_id = '" . (int)$item_id . "'  
        ");
        break;

      case "product":
        if ( !is_numeric($item_id) ) { return false; }
		    $query = $this->db->query("
          SELECT DISTINCT p.image  
          FROM " . DB_PREFIX . "product p  
          WHERE p.product_id = '" . (int)$item_id . "'  
        ");      
        break;
       
      default: 
        return false;
        break;    

    } // switch
    
		if ( isset($query->num_rows) ) {

      if ( isset($query->row['image']) ) {
        return ( $query->row['image'] == "" ? false : $query->row['image'] );
      } else {
        return false;
      } // if image

		} else {
			return false;
		}
		
	} // getThumbById
      
      
	public function resize($filename, $width, $height) {
		if (!is_file(DIR_IMAGE . $filename)) {
			return;
		}

		$extension = pathinfo($filename, PATHINFO_EXTENSION);

		$old_image = $filename;
		$new_image = 'cache/' . utf8_substr($filename, 0, utf8_strrpos($filename, '.')) . '-' . $width . 'x' . $height . '.' . $extension;

		if (!is_file(DIR_IMAGE . $new_image) || (filectime(DIR_IMAGE . $old_image) > filectime(DIR_IMAGE . $new_image))) {
			$path = '';

			$directories = explode('/', dirname(str_replace('../', '', $new_image)));

			foreach ($directories as $directory) {
				$path = $path . '/' . $directory;

				if (!is_dir(DIR_IMAGE . $path)) {
					@mkdir(DIR_IMAGE . $path, 0777);
				}
			}

			list($width_orig, $height_orig) = getimagesize(DIR_IMAGE . $old_image);

			if ($width_orig != $width || $height_orig != $height) {
				$image = new Image(DIR_IMAGE . $old_image);
				$image->resize($width, $height);
				$image->save(DIR_IMAGE . $new_image);
			} else {
				copy(DIR_IMAGE . $old_image, DIR_IMAGE . $new_image);
			}
		}

		if ($this->request->server['HTTPS']) {
			return $this->config->get('config_ssl') . 'image/' . $new_image;
		} else {
			return $this->config->get('config_url') . 'image/' . $new_image;
		}
	}
}