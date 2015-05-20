<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-account" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">

    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-account" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-pop"><span class="required">*</span><?=$counter_code;?> </label>
            <div class="col-sm-10">
              <input type="text" name="easypopup"  value="<?php echo $easypopup; ?>">
            </div>
          </div>
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-pop"><?=$counter_link;?> </label>
            <div class="col-sm-10">
              <input type="text" name="easypopuplink"  value="<?php echo $easypopuplink; ?>">
            </div>
          </div>
          
          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-image"><?=$counter_image;?></label>
            <div class="col-sm-10">
              <a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
              <input type="hidden" name="easypopupimage" value="<?php echo $easypopupimage; ?>" id="input-image" />
            </div>
          </div>
          
        </form>
        <img src="http://www.storeya.com/widgets/admin?p=CP_OpenCart"/>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>