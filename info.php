<?php
echo '<h1>DUONG DAN HIEN TAI: </h1>';
echo getcwd();


echo '<br />';

$text = 'O\'reilly';

echo '<br />';
if (function_exists('sqlite_open')) {
   echo 'Sqlite PHP extension loaded';
}



if(get_magic_quotes_gpc()==1)
	{
	echo 'Da magic quotes da bat. Dung stripslashes de lay chuoi ra.';
	echo $lastname = stripslashes($text);
	}
else
	{
	echo 'Da magic quotes khong duoc bat. Vui long dung addslashes de them vao';
	echo '<br />'.$text;
	}

echo '<br />';


echo '<h1>KIEM TRA GZIP/mod_deflate </h1>';
echo $_SERVER["SERVER_SOFTWARE"];
	
echo  $_SERVER["SERVER_SIGNATURE"];
	

$ar = split("[/ ]",$_SERVER['SERVER_SOFTWARE']);
for ($i=0;$i<(count($ar));$i++)
{
switch(strtoupper($ar[$i]))
{
case 'APACHE':
$i++;
$Apache_Version = $ar[$i];
break;
case 'PHP':
$i++;
$PHP_Version = $ar[$i];
break;
case 'MOD_SSL':
$i++;
$MOD_SSL_Version = $ar[$i];
break;
case 'OPENSSL':
$i++;
$OPENSSL_Version = $ar[$i];
break;
}
}

echo "Apache Version: $Apache_Version<br>\n";
echo "PHP Version: $PHP_Version<br>\n";
echo "mod_ssl Version: $MOD_SSL_Version<br>\n";
echo "OpenSSL Version: $OPENSSL_Version<br>\n";
	
if( !function_exists('apache_request_headers') ) {
    function apache_request_headers() {
        $arh = array();
        $rx_http = '/\AHTTP_/';

        foreach($_SERVER as $key => $val) {
            if( preg_match($rx_http, $key) ) {
                $arh_key = preg_replace($rx_http, '', $key);
                $rx_matches = array();
           // do some nasty string manipulations to restore the original letter case
           // this should work in most cases
                $rx_matches = explode('_', $arh_key);

                if( count($rx_matches) > 0 and strlen($arh_key) > 2 ) {
                    foreach($rx_matches as $ak_key => $ak_val) {
                        $rx_matches[$ak_key] = ucfirst($ak_val);
                    }

                    $arh_key = implode('-', $rx_matches);
                }

                $arh[$arh_key] = $val;
            }
        }

        return( $arh );
    }
}


echo '<h1>KIEM TRA apache_request_headers</h1>';
$headers = apache_request_headers();

foreach ($headers as $header => $value) {
    echo "$header: $value <br />\n";
}

phpinfo();
 ?>
