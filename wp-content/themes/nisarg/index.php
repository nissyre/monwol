<?php
/**
 * The main template file.
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 *
 * @package Nisarg
 */
get_header();
?>

<div class="container">
    <div class="row">
        <div id="primary" class="col-md-9 content-area">
            <main id="main" class="site-main" role="main">
                <div class="main_photo"> 
                    <img src="<?php echo get_template_directory_uri() ?>/images/Monika_start.jpg"/>
                </div>
            </main><!-- #main -->
        </div><!-- #primary -->
        <?php get_sidebar('sidebar-1'); ?>
    </div><!--row-->
</div><!--.container-->
<?php get_footer(); ?>
