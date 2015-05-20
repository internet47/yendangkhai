<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
	  <div class="pull-right"><a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-module').submit() : false;"><i class="fa fa-trash-o"></i></button>
      </div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>

  <div class="container-fluid">
    <?php if ($error) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-bars"></i> <?php echo $text_list; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-module" class="form-horizontal">
          <div class="table-responsive">
            <table class="table table-bordered table-striped table-hover">
			  <thead>
				<tr>
				  <td width="1" style="text-align: center;">
             <input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" />
          </td>
				  <td class="text-center"><?php echo $text_title; ?></td>
          <td class="text-center"><?php echo $text_category; ?></td>
          <td class="text-center"><?php echo $text_image; ?></td>
				  <td class="text-center"><?php echo $text_description; ?></td>
          <td class="text-center"><?php echo $text_sort; ?></td>
				  <td class="text-center"><?php echo $text_date; ?></td>
          <td class="text-center"><?php echo $text_status; ?></td>
				  <td class="text-center"><?php echo $text_action; ?></td>
				</tr>
			  </thead>
			  <tbody>
				<?php 

        // echo '<pre>';
        // print_r($all_topic);//give me a array
        // echo '</pre>';
          
        if ($all_topic) { 
          $i=0;
          foreach ($all_topic as $topic) { 

                if ($i%2==0) 
                  $cl ='bg-warning';
                else 
                   $cl ='bg-success';?>

				  <tr class="<?php echo $cl; ?>">
        					<td width="1" style="text-align: center;"><input type="checkbox" name="selected[]" value="<?php echo $topic['topic_id']; ?>" /></td>
        					<td class="text-left"><strong><?php echo $topic['title']; ?></strong></td>
                  <td class="text-center"><?php echo $topic['category']; ?></td>
                  <td class="text-center">
                       <img src="<?php echo $topic['image']; ?>" alt="<?php echo $topic['title']; ?>" class="img-thumbnail" />
                  </td>
        					<td class="text-center"><?php echo $topic['description']; ?></td>
                  <td class="text-center"><?php echo $topic['sort_order']; ?></td>
        					<td class="text-center"><?php echo $topic['date_added']; ?></td>
                  <td class="text-center">
                                <?php $s =  $topic['status'];
                                    if ($s)
                                        echo '<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>';
                                    else
                                        echo '<span class="glyphicon glyphicon-remove" aria-hidden="true" ></span>';
                                ?>
                  </td>
        					<td class="text-center">[ <a href="<?php echo $topic['edit']; ?>"><?php echo $text_edit; ?></a> ]</td>
				  </tr>
				  <?php $i++; } ?>
				<?php } else { ?>
				  <tr>
					<td colspan="5" class="text-center"><?php echo $text_no_results; ?></td>
				  </tr>
				<?php } ?>
			  </tbody>
			</table>
          </div>
        </form>
		<div class="row">
          <div class="col-sm-12 text-right"><?php echo $results; ?></div>
          <div class="col-sm-12 text-center"><?php echo $pagination; ?></div>
        </div>
      </div>
    </div>
	<div style="text-align:center; color:#222222;">Module Topic version 0.0 by <a target="_blank" href="http://facebook.com/vietguy18" target="_Blank">Michael Tran</a></div>
  </div>
</div>
<?php echo $footer; ?>