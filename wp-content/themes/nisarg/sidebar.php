<?php
/**
 * The sidebar containing the main widget area.
 *
 * @package Nisarg
 */
?>
<div id="secondary" class="col-md-3 sidebar widget-area" role="complementary">
	<?php do_action( 'before_sidebar' ); ?>
	<?php if ( ! dynamic_sidebar( 'sidebar-1' ) ) : ?>
		<aside id="search" class="widget widget_search">
			<?php get_search_form(); ?>
		</aside>
		<aside id="archives" class="widget">
		    <h3 class="widget-title"><?php _e( 'Archives', 'nisarg' ); ?></h3>
		    <ul>
		        <?php wp_get_archives( array( 'type' => 'monthly' ) ); ?>
		    </ul>
		</aside>
		
	<?php endif; // end sidebar widget area ?>
</div><!-- #secondary .widget-area -->


