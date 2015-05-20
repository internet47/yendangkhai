<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-support" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-support" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
              <kbd>Type 'noname' if you dont want show module name on layout</kbd>
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>          
        

           <div class="form-group">
            <label class="col-sm-2 control-label" for="input-yahoo"><?php echo $entry_yahoo; ?></label>
            <div class="col-sm-10">
            <input type="text" name="yahoo_id" value="<?php echo $yahoo_id; ?>" placeholder="<?php echo $entry_yahoo; ?>" id="input-yahoo" class="form-control" /><kbd>&raquo Multi yahoo: please use like this: your_nick_1: depart_1, your_nick_2:depart_2 </kbd>
            </div>
          </div>

           <div class="form-group">
            <label class="col-sm-2 control-label" for="input-skype"><?php echo $entry_skype; ?></label>
            <div class="col-sm-10">
            <input type="text" name="skype_id" value="<?php echo $skype_id; ?>" placeholder="<?php echo $entry_skype; ?>" id="input-skype" class="form-control" />
            </div>
          </div>


          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-limit"><?php echo $entry_hotline; ?></label>
            <div class="col-sm-10">
            <input type="text" name="hotline" value="<?php echo $hotline; ?>" placeholder="<?php echo $entry_hotline; ?>" id="input-hotline" class="form-control" />
            </div>
          </div>

           <div class="form-group">
            <label class="col-sm-2 control-label" for="input-limit"><?php echo $entry_email_contact; ?></label>
            <div class="col-sm-10">
            <input type="text" name="email_contact" value="<?php echo $email_contact; ?>" placeholder="<?php echo $entry_email_contact; ?>" id="input-email_contact" class="form-control" />
            </div>
          </div>

           <div class="form-group">
            <label class="col-sm-2 control-label" for="input-style"><?php echo $entry_css; ?></label>
            <div class="col-sm-10">
              <textarea name="style" id="input-css" class="form-control" cols="1" rows="10" ><?php echo $style; ?></textarea>
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="status" id="input-status" class="form-control">
                <?php if ($status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>