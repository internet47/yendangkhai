<h3><?php echo $heading_title; ?></h3>
<div class="row">
  <?php foreach ($products as $product) { 
// echo '<pre>';
// print_r($product);//give me a array
// echo '</pre>';
  ?>
  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="product-thumb2 transition">
        <div class="col-md-5">
                      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
        </div>
        <div class="col-md-7" style="margin-left:0px; padding-left:0px;">
                      <div class="caption">
                          <h5><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h5>
                          <p><?php //echo $product['description']; ?></p>
                          <?php if ($product['rating']) { ?>
                          <div class="rating">
                            <?php for ($i = 1; $i <= 5; $i++) { ?>
                            <?php if ($product['rating'] < $i) { ?>
                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                            <?php } else { ?>
                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                            <?php } ?>
                            <?php } ?>
                          </div>
                          <?php } ?>

                          

                        </div>
        </div><!--end col 7 -->
	  <div class="col-md-12 text-center">
			<?php if ($product['stock'] && is_numeric($product['stock'])) 
                           {
                                    if ($product['price']) { ?>
                                              <p class="price">
                                                <?php if (!$product['special']) { ?>
                                                    <?php 
                                                    echo '<span class="price-old"></span><br />';
                                                    echo '<span class="price-new">'.$product['price'].'</span>';
                                                     ?>
                                                <?php } else { ?>
                                                     <span class="price-old"><?php echo $product['price']; ?></span><br />
                                                     <span class="price-new"><?php echo $product['special']; ?></span> 
                                             
                                                <?php } ?>
                                                <?php if ($product['tax']) { ?>
                                                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                                <?php } ?>
                                              </p>
                                    <?php } 
                           }
                           else
                           {
                                    echo '<p class="price">';
                                    echo '<span class="price-old"></span><br />';
                                    echo '<span class="price-new"></span>';
                                    echo '</p>';
                           }
                           ?>
	
	  </div>
      <div class="col-md-12 button-group" style="margin:0px; padding:0px;">
             <?php if ($product['stock'] && is_numeric($product['stock'])) 
                {?>
                         <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs"><?php echo $button_cart; ?></span></button>
            <?php } else { ?>
                          <button type="button"><span style="color: red"><?php echo $product["stock"]?></span></button>
            <?php } ?>
      </div>

    </div>
  </div>
  <?php } ?>
</div>
