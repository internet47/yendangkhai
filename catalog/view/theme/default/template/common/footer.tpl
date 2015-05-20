
<footer>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&appId=610489129015099&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

 
  
  

  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
     <div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
     <div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
     <div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
     <div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
      <?php 
                  //get Fanpage facebook from setting
                  // global $config; 
                  // if ($config->get('config_facebook_fanpage')) {
                  // $fanpage =  html_entity_decode($config->get('config_facebook_fanpage'), ENT_QUOTES, 'UTF-8'); }

       ?>
       <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
       <h5>Giới thiệu Yến Sào Đăng Khải Cần Giờ</h5>
       <?php 
                  //get video embed from  more setting
                  global $config; 
                  if ($config->get('config_video_embed')) {
                  echo $embed =  html_entity_decode($config->get('config_video_embed'), ENT_QUOTES, 'UTF-8'); }

       ?>
     </div>
      <!-- <div class="col-sm-4 col-xs-12">
       <div class="fb-like-box" data-href="<?php echo $fanpage ?>" data-width="300" data-colorscheme="dark" data-show-faces="true" data-header="false" data-stream="false" data-show-border="false"></div>
      </div> -->
    </div>

  

    <h5>Hệ thống Đại Lý:</h5>
     <hr noshade="" width="100%">
    <div class="row" style="color: white">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <a name="daily"></a>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
           <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 wow bounceInRight">
              <h5 style="text-decoration: underline;">Văn phòng đại diện khu vực phía Nam :</h5>
              <ul>
                <li>391/15 Trần Hưng Đạo , F. Cầu kho , Q.1 , TP.HCM</li>
                <li>Email : info@yennhahangngan.com , dinhcongtritri@yahoo.com</li>
                <li>Web : www.yennhahangngan.com </li>
                <li>0903639121 – 0937876566 - 0918196572</li>
              </ul>
           </div>



        <?php foreach ($shop as $one_shop) { ?>
              <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 wow bounceInRight">
                <strong><?php echo $one_shop['position']; ?></strong> <br>
                 <?php echo html_entity_decode($one_shop['address'],ENT_QUOTES); ?>
              </div>
             
        <?php } ?>
        </div>
    </div>

    <hr>
    <p class="text-center"><?php echo $powered; ?></p> 
  </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//--> 

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>