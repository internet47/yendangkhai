<?php if ($data['setting']['name']!='noname') { ?>
<div class="row" style="margin-top:0px;">
   <div class="col-md-12 col-xs-12">
    <strong><?php echo $data['setting']['name']; ?></strong>
  </div>
</div>
<?php } ?>

<div class="row text-right" style="<?php echo $data['setting']['style']; ?>">
<?php 
$yahoo = trim($data['setting']['yahoo_id']);
if (!empty($yahoo))
  {
  $couples= explode(",", $yahoo);
  foreach($couples as $couple)
      {
          $nick  =  explode(":", $couple);
          $count =  count($nick);
          if ($count>1)
          {
            $nick[0]=trim($nick[0]);
            $nick[1]=trim($nick[1]);
?>
          <div class="col-md-2 col-xs-12">
            <a href="ymsgr:sendim?<?php echo $nick[0]; ?>">
            
            <!-- http://opi.yahoo.com/online?u=<?php echo $nick[0]; ?>&m=g&t=1 -->
            <img src="<?php echo $data['setting']['path_icon']; ?>online.gif" title="Bán hàng"> <?php echo $nick[1]?></a>
         </div>
<?php 
          }
          else
          {
            echo '<kbd>Error: please, type follow format: nick_1:name_1, nick_2:name_2</kbd>';
          }
       }
  }
?>
        <?php if (!empty($data['setting']['skype_id'])) { ?>
        <div class="col-md-2 col-xs-12">
        <img src="<?php echo $data['setting']['path_icon']; ?>skype.gif" /> <?php echo $data['setting']['skype_id']; ?>
        </div>
        <?php } ?>

        <?php 
        $len=  strlen($data['setting']['hotline']); 
        if ($len >= 14)
            $col = 3;
        else
            $col = 2;
        ?>

        <div class="col-md-<?php echo $col; ?> col-xs-12">
        <img src="<?php echo $data['setting']['path_icon']; ?>phone.png" /> <?php echo $data['setting']['hotline']; ?>
        </div>

        <div class="col-md-3 col-xs-12">
        <img src="<?php echo $data['setting']['path_icon']; ?>mail.png" /> <?php echo $data['setting']['email_contact']; ?>
        </div>

</div>
