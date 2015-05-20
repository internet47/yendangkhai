<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-topic" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
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
    <?php if ($error_warning) {   
    	 // echo '<pre>';
	    // print_r($error_warning);//give me a array
	    // echo '</pre>';
	    ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $heading_title; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-topic" class="form-horizontal">
          <ul class="nav nav-tabs" id="language">
			<?php foreach ($languages as $language) { ?>
			<li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
			<?php } ?>
		  </ul>
		  <div class="tab-content">
			<?php foreach ($languages as $language) { ?>
			<div class="tab-pane" id="language<?php echo $language['language_id']; ?>">

			<div class="form-group">
					<label class="col-sm-2 control-label" for="input-status"><?php echo $text_category; ?></label>
					<?php $category_topic_id; ?>
					<div class="col-sm-10">
					  <select name="category_topic_id" id="input-status" class="form-control">
					  	<?php foreach ($all_category as $cat) {?> 
							<option value="<?php echo $cat['category_topic_id']; ?>" <?php echo $category_topic_id==$cat['category_topic_id']?' selected="selected"':""; ?> > <?php echo $cat['title']?></option>
			            <?php } ?>
					  </select>
					</div>
		 	 </div>

			  <div class="form-group required">
				<label class="col-sm-2 control-label" for="input-title<?php echo $language['language_id']; ?>"><?php echo $text_title; ?></label>
				<div class="col-sm-10">
				  <input type="text" name="title" value="<?php echo isset($title) ? $title : ''; ?>" placeholder="<?php echo $text_title; ?>" id="input-title<?php echo $language['language_id']; ?>" class="form-control" />
								<?php if ($error_title) { ?>
								<div class="text-danger"><?php echo $error_title; ?></div>
								<?php } ?>
				</div>
			  </div>

			  <div class="form-group required">
				<label class="col-sm-2 control-label" for="input-short<?php echo $language['language_id']; ?>"><?php echo $text_short_description; ?></label>
				<div class="col-sm-10">
				  <textarea name="description" rows="5" placeholder="<?php echo $text_short_description; ?>" id="input-short<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($description) ? $description : ''; ?></textarea>
								<?php if ($error_description) { ?>
								<div class="text-danger"><?php echo $error_description; ?></div>
								<?php } ?>
				</div>
			  </div>
			  <div class="form-group">
				<label class="col-sm-2 control-label" for="input-description<?php echo $language['language_id']; ?>"><?php echo $text_description; ?></label>
				<div class="col-sm-10">
				  <textarea name="content" placeholder="<?php echo $text_description; ?>" id="input-description<?php echo $language['language_id']; ?>"><?php echo isset($content) ? $content : ''; ?></textarea>
				</div>
			  </div>
			</div>
			<?php } ?>
		  </div>
		  <div class="form-group">
			<label class="col-sm-2 control-label" for="input-image"><?php echo $text_image; ?></label>
			<div class="col-sm-10">
			  <a href="" id="thumb-image" data-toggle="image" class="img-thumbnail">
			  <img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $no_image; ?>" /></a>
			  <input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />
			</div>
		  </div>  
		  <div class="form-group">
			<label class="col-sm-2 control-label" for="input-keyword"><?php echo $text_keyword; ?></label>
			<div class="col-sm-10">
			  <input type="text" name="keyword" value="<?php echo isset($keyword) ? $keyword : ''; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-keyword" class="form-control" />
			  	             <?php if ($error_keyword) { ?>
								<div class="text-danger"><?php echo $error_keyword; ?></div>
								<?php } ?>
			</div>
		  </div>

		  <div class="form-group">
			<label class="col-sm-2 control-label" for="input-sort"><?php echo $text_sort; ?></label>
			<div class="col-sm-10">
			  <input type="text" name="sort_order" value="<?php echo isset($sort_order) ? $sort_order : ''; ?>" placeholder="<?php echo $text_sort ?>" id="input-sort" class="form-control" />
			</div>
		  </div>

		  <div class="form-group">
			<label class="col-sm-2 control-label" for="input-status"><?php echo $text_status; ?></label>
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
<script type="text/javascript">
$('#language a:first').tab('show');

<?php foreach ($languages as $language) { ?>
$('#input-description<?php echo $language['language_id']; ?>').summernote({height: 300});
<?php } ?>
</script>
<?php echo $footer; ?>