<?php
/*
 * Plugin Name: Texonomy Tabs
 * Author: Manoj Samudre
 * version: 1.0.0
 * Description: This is texomony tab plugin with mobile view set to accordians
 */

/**
 * Create a class first
 */
class WP_TexonomyTabs
{
	/**
 	 * Call to construct
 	 */
	function __construct()
	{
		add_shortcode('WP_TexonomyTab', array($this, 'shortcode'));
		add_action('wp_enqueue_scripts', array($this, 'flat_ui_kit'));
	}

	function get_texonomy() {
		//$catquery = new WP_Query( 'cat=1&posts_per_page=6' );  // Pass the taxonomy ID here-> cat=ID
	
		$categories = get_categories( array(
			    'orderby' => 'name',
			    'order'   => 'ASC'
			) );
		?>

        <div class="container">

        	<!----- Vertical Tabs --------->
        	
		    <div class="vertical-tabs"> 
		    	<?php if($this->isMobile()){ ?>
					<div class="panel-group" id="accordion">
				  		<?php
					      	$i=0;
					      	$AllCat_ID = array();
				      	?>
				        <?php foreach($categories as $cat) { ?>	
				        	<div class="panel panel-default br-3 ">		     
					        	<div class="cpanel-heading pad-4 brand-white-bg br-3 gap-y-3">
					        		<h4 class="panel-title">
							    	<a class="accordion-toggle gray-dark" data-toggle="collapse" data-parent="#accordion" href="#collapse<?php echo $cat->term_id;?>">
							    		<?php $icon_URL = get_term_meta($cat->term_id, 'category_icon', true); ?>
							    		<img src="<?php echo $icon_URL;?>" alt="">
							    		<span class="font-bold"><?php echo $cat->cat_name; ?></span>
							    	</a>
							    	</h4>
							    </div>
							    <?php $category_feature_img = get_term_meta($cat->term_id, 'category_feature_img', true); ?>
								
							    <div id="collapse<?php echo $cat->term_id; ?>" class="panel-collapse collapse <?php echo ($i==0)?'in':''; ?> gap-y-3">
							    	<div class="arrow-up"></div>	
						      		<div class="cpanel-body">
										<?php $wp_posts = new WP_Query( 'cat='.$cat->term_id.'&posts_per_page=6' ); ?>
						        		<div id="myCarousel" class="carousel slide" data-ride="carousel">
										    <!-- Indicators -->
										    <ol class="carousel-indicators">
										      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
										      <li data-target="#myCarousel" data-slide-to="1"></li>
										      <li data-target="#myCarousel" data-slide-to="2"></li>
										    </ol>
											    <!-- Wrapper for slides -->
											<div class="sv-tab-panel">
											    <div class="carousel-inner brand-white">
													<?php $k=0; ?>	    	
										        	<?php while($wp_posts->have_posts()) : $wp_posts->the_post(); ?>
										        		<?php $feat_image_url = wp_get_attachment_url( get_post_thumbnail_id() ); ?>
											        		<div class="item <?php echo ($k==0)?'active':'';?>">
														      	<?php //echo $feat_image_url;?>
														      	<h5 class=""><span class="br-3"><?php echo the_title();?></span></h5>
														      	<h3 class="font-size-largest"><?php echo the_content();?></h3>
														      	<h6>
														      		<a href="<?php echo get_permalink( $id )?>" class="brand-white">Read More
														      			<span>&#8594;</span>
														      		</a>
														      	</h6> 
														    </div>
												    <?php $k++; ?>
											   		<?php endwhile; ?>	
											   	</div>
											</div>
										</div>
										
					        		</div> 
					       		</div>
					       	</div>	 
							<?php $i++; } ?>
					</div>

				
				<?php } else {	?>
				    <ul class="nav nav-tabs gray-white-bg" role="tablist">
				      	<?php
					      	$i=0;
					      	$AllCat_ID = array();
				      	 ?>
				        <?php foreach($categories as $cat) { ?>			     
				        	<li class="nav-item gap-3 brand-white-bg br-3">
						    	<a class="nav-link gray-dark <?php echo ($i==0)?'active':''; ?>" data-toggle="tab" href="#pag<?php echo $cat->term_id;?>" role="tab" aria-controls="home">
						    		<?php $icon_URL = get_term_meta($cat->term_id, 'category_icon', true); ?>
						    		<img src="<?php echo $icon_URL;?>" alt="">
						    		<span class="font-bold"><?php echo $cat->cat_name; ?></span>
						    	</a>
						    </li>
						<?php

							$AllCat_ID[] =  $cat->term_id;
							$i++;
						 ?>
						<?php } ?>		      
				    </ul>

				    <!----- All Tabs Contents --------->			    
			      	<div class="tab-content">
		      	      	<?php  $J=0;  ?>
				        <?php foreach ($AllCat_ID as $catID) { ?>
				      	<div class="tab-pane <?php echo ($J==0)?'active':''; ?>" id="pag<?php echo $catID; ?>" role="tabpanel">
				        	
				        		<?php $wp_posts = new WP_Query( 'cat='.$catID.'&posts_per_page=6' ); ?>

				        		
				        		<div id="myCarousel" class="carousel slide" data-ride="carousel">
								    <!-- Indicators -->
								    <ol class="carousel-indicators">
								      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								      <li data-target="#myCarousel" data-slide-to="1"></li>
								      <li data-target="#myCarousel" data-slide-to="2"></li>
								    </ol>
									    <!-- Wrapper for slides -->
									<div class="sv-tab-panel">
									    <div class="carousel-inner brand-white">
											<?php $k=0; ?>	    	
								        	<?php while($wp_posts->have_posts()) : $wp_posts->the_post(); ?>
								        		<?php $feat_image_url = wp_get_attachment_url( get_post_thumbnail_id() ); ?>
									        		<div class="item <?php echo ($k==0)?'active':'';?>">
												      	<?php //echo $feat_image_url;?>
												      	<h5 class=""><span class="br-3"><?php echo the_title();?></span></h5>
												      	<h3 class="font-size-largest"><?php echo the_content();?></h3> 
												      	<h6>
												      		<a href="<?php echo get_permalink( $id )?>" class="brand-white">Read More
												      			<span>&#8594;</span>
												      		</a>
												      	</h6> 
												      </div>
										    <?php $k++; ?>
									   		<?php endwhile; ?>	
									   	</div>
									</div>
								    <!-- Left and right controls -->
								<!--     <a class="left carousel-control" href="#myCarousel" data-slide="prev">
								      <span class="glyphicon glyphicon-chevron-left"></span>
								      <span class="sr-only">Previous</span>
								    </a>
								    <a class="right carousel-control" href="#myCarousel" data-slide="next">
								      <span class="glyphicon glyphicon-chevron-right"></span>
								      <span class="sr-only">Next</span>
								    </a> -->
								</div>
								<div class="cat-img">
									<?php $category_feature_img = get_term_meta($catID, 'category_feature_img', true); ?>
									<?php if(!empty($category_feature_img)){ ?>
										<img src="<?php echo $category_feature_img; ?>" alt=""/>
									<?php } else{ ?>
										<img src="./wp-content/uploads/2019/07/placeholder.jpg" alt="Placeholder img" />
									<?php } ?>	
								</div>
				        	</div>  
					    <?php $J++; ?>
						<?php } ?>		          
			        </div>
		    	<?php } // Close End Desktop View ?>
			</div>
		</div>
		<?php
	}

	/**
 	 * Enques jquery and CSS Files.
 	 */
	function flat_ui_kit() {
		wp_enqueue_style('bootstrap-css', 'https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css');
		wp_enqueue_style('custom-css', plugins_url('css/custom-style.css', __FILE__));
        wp_enqueue_script( 'jquery-script', 'https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js', array( 'jquery' ) );
        wp_enqueue_script( 'bootstrap-script', 'https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js', array( 'jquery' ) );
        wp_enqueue_script( 'bootstrap-script', 'https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js',  array( 'jquery' ) );
	}
	/**
 	 * Created the Shortcode 
 	 */
	function isMobile() {
	    return preg_match("/(android|avantgo|blackberry|bolt|boost|cricket|docomo|fone|hiptop|mini|mobi|palm|phone|pie|tablet|up\.browser|up\.link|webos|wos)/i", $_SERVER["HTTP_USER_AGENT"]);
	}

	function shortcode() {
		ob_start();		
		$this->get_texonomy();
		return ob_get_clean();
	}
}
new WP_TexonomyTabs;

?>