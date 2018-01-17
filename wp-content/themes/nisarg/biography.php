<?php
/**
 * Template Name: Biography 
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package Nisarg
 */
get_header();
?>
<div class="container">
    <div class="row">
        <div id="primary" class="col-md-9 content-area">
            <main id="main" class="site-main" role="main">
                <article id="post-<?php the_ID(); ?>"  <?php post_class('post-content'); ?>>
                    <header class="entry-header">
                        <span class="screen-reader-text"><?php the_title(); ?></span>

                        <h1 class="entry-title"><?php the_title(); ?></h1>

                        <div class="entry-meta"></div>

                    </header><!-- .entry-header -->

                    <?php
                    if (is_sticky() && is_home() && !is_paged()) {
                        printf('<span class="sticky-post">%s</span>', __('Featured', 'nisarg'));
                    }
                    ?>

                    <?php nisarg_featured_image_disaplay(); ?>
                    <?php
                    $link = get_post_meta(get_the_ID(), 'youtubeLink', true);
                    if (!empty($link)) {
                        ?>
                        <div class="featured-image">
                            <iframe  style="min-height: 400px" src="<?php echo $link; ?>">
                            </iframe>
                        </div>
                        <?php
                    }
                    ?>

                    <div class="entry-content">

                        <?php while (have_posts()) : the_post(); ?>
                            <?php
                            the_content();
                            ?>
                        <?php endwhile; // End of the loop. ?>
                        <?php
                        wp_link_pages(array(
                            'before' => '<div class="page-links">' . esc_html__('Pages:', 'nisarg'),
                            'after' => '</div>',
                        ));
                        ?>
                    </div><!-- .entry-content -->

                    <footer class="entry-footer">
                        <?php nisarg_entry_footer(); ?>
                    </footer><!-- .entry-footer -->
                    <div class="entry-content">
                        <div>
                            <p><a href="<?php echo get_template_directory_uri() ?>/files/Monika Wolinska biography.pdf" download>PDF - English version</a></p>
                            <p><a href="<?php echo get_template_directory_uri() ?>/files/Monika Wolinska zyciorys.pdf" download>PDF - Polska wersja</a></p>
                        </div>
                    </div>
                </article>

            </main><!-- #main -->
        </div><!-- #primary -->

        <?php get_sidebar('sidebar-1'); ?>
    </div> <!--.row-->
</div><!--.container-->
<?php get_footer(); ?>
