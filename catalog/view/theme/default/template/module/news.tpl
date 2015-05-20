<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<h3><?php echo $heading_title; ?></h3>
  		</div>

  		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			  <?php foreach ($all_news as $news) {  
			  // echo '<pre>';
			  // print_r($news);//give me a array
			  // echo '</pre>';
			  ?>

			  		<div class="media wow bounceInRight">
			  			  <div class="col-xs-12 col-sm-2 col-md-2 col-lg-2">
							  <div class="media-left">
							    <a href="#">
							      <!-- <img class="media-object" src="..." alt="..."> -->
										<?php if ($news['image']) { ?>
										<img style="border:2px solid #fff;" src="<?php echo $news['image'] ?>" alt="<?php echo $news['title']; ?>" class="media-object img-responsive img-circle"/>
										<?php } ?>

							    </a>
							  </div>
						  </div>
						<div class="col-xs-12 col-sm-10 col-md-10 col-lg-10">
							
							 <div class="media-body">
								    <p class="media-heading"><a href="<?php echo $news['view']; ?>"><?php echo $news['title']; ?></a></p>
								    <?php echo $news['description']; ?>
								    <time date="<?php echo $news['date_added']; ?>"></time>
								  </div>
							 
						  </div>
						  <div class="clearfix">
						  &nbsp;
						  </div>
					</div>
									
					
				
			  <?php } ?>
			  <p class="text-right"><a href="?route=information/news">&raquo Xem thêm</a></p>
		</div>
</div>


