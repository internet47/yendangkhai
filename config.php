<?php
//KHAI BÁO 2 DÒNG NÀY & SỬA CÁC LINK THEO DEFINE MỚI.
//LƯU Ý DẤU / CUỐI DOMAIN

define('DOMAIN', $_SERVER['HTTP_HOST'].dirname($_SERVER['PHP_SELF']));
define('BASE_DIR', realpath(dirname(__FILE__)));

// HTTP
define('HTTP_SERVER', 'http://'.DOMAIN);

// HTTPS
define('HTTPS_SERVER', 'https://'.DOMAIN);

// DIR
define('DIR_APPLICATION', BASE_DIR.'/catalog/');
define('DIR_SYSTEM', BASE_DIR.'/system/');
define('DIR_LANGUAGE', BASE_DIR.'/catalog/language/');
define('DIR_TEMPLATE', BASE_DIR.'/catalog/view/theme/');
define('DIR_CONFIG', BASE_DIR.'/system/config/');
define('DIR_IMAGE', BASE_DIR.'/image/');
define('DIR_CACHE', BASE_DIR.'/system/cache/');
define('DIR_DOWNLOAD', BASE_DIR.'/system/download/');
define('DIR_UPLOAD', BASE_DIR.'/system/upload/');
define('DIR_MODIFICATION', BASE_DIR.'/system/modification/');
define('DIR_LOGS', BASE_DIR.'/system/logs/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'yendangk_chamcom');
define('DB_PASSWORD', 'BE77)S}m#Ph[');
define('DB_DATABASE', 'yendangk_chamcom');
define('DB_PREFIX', 'oc_');
