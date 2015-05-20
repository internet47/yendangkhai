<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>

  
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>

  <?php $cat =  $_GET['category_topic_id'];
  if ($cat==3) {
    $heading_title ="Công dụng";
  }
  else if ($cat==4)
  {
    $heading_title="Chế biến";
  }

   ?>

    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <div class="col-md-12 col-xs-12">

			<?php foreach ($all_news as $news) { ?>
          <div class="media">
              <div class="media-left">
                <a href="#">
                  <!-- <img class="media-object" src="..." alt="..."> -->
                  <?php if ($news['image']) { ?>
                  <img style="border:2px solid #fff;" src="<?php echo $news['image']; ?>" alt="<?php echo $news['title']; ?>" class="media-object img-responsive img-circle"/>
                  <?php } ?>

                </a>
              </div>
              <div class="media-body">
                <p class="media-heading"><a href="<?php echo $news['view']; ?>"><?php echo $news['title']; ?></a></p>
                <?php echo $news['description']; ?>
                <time date="<?php echo $news['date_added']; ?>"></time>
              </div>
          </div>
				<?php } ?>

      </div>
      <!--div class="col-md-4 col-xs-12">KHUYEN MAI</div-->


      
	  <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
	  <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 