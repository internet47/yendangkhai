<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "http://connect.facebook.net/vi_VN/sdk.js#xfbml=1&appId=610489129015099&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


<?php if ($data['setting']['name']!='noname') {?>
<div class="row" style="margin-top:0px;">
   <div class="col-md-12 col-xs-12">
    <strong><?php echo $data['setting']['name'] ?></strong>
  </div>
</div>
<?php } ?>


<div class="row" style="<?php echo $data['setting']['style']; ?>">
          <?php if ($data['setting']['show_friend_face']==1)
                    $show_faces='true';
                else
                    $show_faces='false';


                if ($data['setting']['show_border']==1)
                    $show_border='true';
                else
                    $show_border='false';


                if ($data['setting']['show_posts']==1)
                    $show_posts='true';
                else
                    $show_posts='false';


                if (empty($data['setting']['width']))
                    $width=300;
                else
                   $width=trim($data['setting']['width']);

                 if (empty($data['setting']['height']))
                    $height=300;
                else
                    $height=trim($data['setting']['height']);




           ?>

          <div class="fb-like-box" data-href="<?php echo trim($data['setting']['facebook_url']); ?>" data-width="<?php echo $width; ?>" data-height="<?php echo $height; ?>" data-colorscheme="light" data-show-faces="<?php echo $show_faces; ?>" data-header="false" data-stream="<?php echo $show_posts; ?>" data-show-border="<?php echo $show_border ?>"></div>
</div>
