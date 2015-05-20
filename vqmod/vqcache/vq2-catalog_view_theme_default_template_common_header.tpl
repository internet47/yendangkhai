<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<meta name="google-site-verification" content="kjhqARvqDHyTtdB0xX531gsGWv9CXRA3NgR9Ib0Z7Aw" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } else {?>
<meta name="description" content="<?php echo $des; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } else {?>
<meta name="keywords" content= "<?php echo $key; ?>" />
<?php } ?>
<meta name="author" content="Michael Trần" />
<meta name="copyright" content="<?php echo $name; ?>" />
<?php 
   
      if ($description)
          $description = $description;
      else
          $description = $des;

      $url_home = 'http://'.$_SERVER['HTTP_HOST'].'/image/catalog/images/logo.jpg';
      if (!isset($thumb) || empty($thumb))
          $thumb = $url_home;
      else
          $thumb = $thumb;

      if (!isset($link_fb) || empty($link_fb))
          $link_fb = 'http://'.$_SERVER['HTTP_HOST'];
      else
          $link_fb = $link_fb;
?>
<meta property="og:title" content="<?php echo $title.' - ['.$base.']'; ?>" />
<meta property="og:type" content="article" />
<meta property="og:image" content="<?php echo $thumb; ?>" />
<meta property="og:url" content="<?php echo $link_fb; ?>" />
<meta property="og:site_name" content="<?php echo $name; ?>" />
<meta property="og:description" content="<?php echo $description; ?>" />
 <meta property="fb:app_id" content="610489129015099" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/animate.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<script src="catalog/view/javascript/wow.min.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<script src="js/wow.min.js"></script>
<script>
 wow = new WOW(
    {
      boxClass:     'wow',      // default
      animateClass: 'animated', // default
      offset:       0,          // default
      mobile:       true,       // default
      live:         true        // default
    }
  )
  wow.init();
</script>
<?php echo $google_analytics; ?>

                                       <style>
                                                 #map-canvas {
                                                  height: 400px;
                                                  width: 100%;
                                           
                                                  margin: 0px;
                                                  padding: 0px
                                                }
                                              </style>
                                              <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
                                              <script>
                                          // This example displays a marker at the center of Australia.
                                          // When the user clicks the marker, an info window opens.
                                           
                                          function initialize() {
                                            var myLatlng = new google.maps.LatLng(<?php echo $geo; ?>);
                                            var mapOptions = {
                                              zoom: 18,
                                              center: myLatlng
                                            };
                                           
                                            var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
                                           
                                            var contentString = '<div id="row" style="padding: 10px;">'+
                                                      '<div class="col-md-12"><img src="<?php echo $logo;?>" class="img-responsive img-thumbnail"></div>'+
                                                      '<div class="col-md-12">'+
                                                      '<h2><?php echo $name; ?></h2>'+
                                                      '</div>'+
                                                      '<div class="col-md-12">'+
                                                      '<address><?php echo $address; ?></address>'+
                                                      '</div>'+
                                                '</div>';
                                           
                                            var infowindow = new google.maps.InfoWindow({
                                                content: contentString,
                                                 maxWidth: 600,
                                            });

                                            var infoWindow2 = new google.maps.InfoWindow({
                                              content: contentString,
                                              position: myLatlng,
                                               maxWidth: 500,
                                          });//use for auto load

                                           
                                            var marker = new google.maps.Marker({
                                                animation: google.maps.Animation.DROP,
                                                position: myLatlng,
                                                map: map,
                                                title: '<?php echo $name; ?>'
                                            });

                                            google.maps.event.addListener(marker, 'click', function() {
                                              infowindow.open(map,marker);
                                            });

                                             //infoWindow2.open(map,marker);


                                          }//end innitial

                                          google.maps.event.addDomListener(window, 'load', initialize);
                                              </script>
                        
</head>
<body class="<?php echo $class; ?>">
<nav id="top">
  <div class="container">
  <div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <?php echo $currency; ?>
    <?php echo $language; ?>
     <?php 
                global $config; 
                if ($config->get('config_yahoo_id')) 
                   $yahoo = $config->get('config_yahoo_id');
                if ($config->get('config_skype_id')) 
                   $skype = $config->get('config_skype_id');
    ?>
    <?php if (!empty($yahoo) || !empty($skype)) { ?>
    <div id="top-support" class="hidden-xs col-sm-6 col-md-6 col-lg-6">
      <ul class="list-inline">
          <li><a href="/"><i class="fa fa-home"></i></a></li>
          <li>|</li>
          <li><strong><span class="hidden-xs hidden-sm hidden-md">Hỗ trợ đặt hàng online: </span></strong></li>
          <li>
            <a href="ymsgr:sendim?<?php echo trim($yahoo['id']);?>">
                <img src="image/online.gif"><span class="hidden-xs"> <?php echo trim($yahoo['depart']);?></span>
            </a>
          </li>
          <li>&</li>
          <li>
            <a href="skype:<?php echo trim($skype['id']);?>?chat">
                <img src="image/skype.gif"><span class="hidden-xs"> <?php echo trim($skype['depart']);?></span>
            </a>
          </li>
          
      </ul>
    </div>
    <?php } ?>

    <div id="top-links" class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
      <ul class="list-inline">
        <li class="hidden-sm hidden-md hidden-lg"><a href="<?php echo $vhome; ?>"><i class="fa fa-home"></i></a></li>
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs"><?php echo $telephone; ?></span></li>
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md hidden-lg"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
  </div>
   </div>
</nav>
<header>
  <div class="container" style="margin-top:50px;">
    <div class="row">

      <div class="col-sm-4 col-xs-12 wow bounceInLeft">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="/"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>

      <div class="col-sm-5 col-xs-12 wow bounceInRight" style="margin-top:20px;">
          <?php echo $search; ?>
      </div>

      <div class="col-sm-3 col-xs-12 wow bounceInRight" style="margin-top:20px;">
          <?php echo $cart; ?>
      </div>

    </div>
  </div>
</header>
<?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">

                            <li><a href="/"><i class="fa fa-home"></i></a></li>
                            <li><a href="<?php echo $aboutus; ?>">GIỚI THIỆU</a></li>
                        
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>

                            <li><a href ="/khuyen-mai">KHUYẾN MÃI</a></li>
                            <li><a href ="/tin-tuc">TIN TỨC</a></li>
                            <li><a href ="/cong-dung">CÔNG DỤNG</a></li>
                            <li><a href ="/che-bien">CHẾ BIẾN</a></li>
                            <li><a href ="#daily">ĐẠI LÝ</a></li>
                            <li><a href ="<?php echo $contact ?>">LIÊN HỆ</a></li>
                        
      </ul>
    </div>
  </nav>
</div>
<?php } ?>
