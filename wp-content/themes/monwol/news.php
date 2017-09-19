<?php
/* Template Name: News */
get_header();
$args = array('category' => get_cat_ID('News'));
?>

<div class="content">    
    <?php
    $posts = get_posts($args);
    foreach ($posts as $p) : setup_postdata($p);
        ?>
            <div class="news-post"> 
                <div class="news-post-img">
                    <?php $image = wp_get_attachment_image_src(get_post_thumbnail_id($p->ID), 'single-post-thumbnail'); ?>
                    <img class="auto-scale-img" src="<?php echo has_post_thumbnail($p->ID) ? $image[0] : $image; ?>"/>
                </div>
                <div class="news-post-content-column">
                    <div class="news-post-header">
                        <?php echo $p->post_title; ?>
                    </div>
                    <div class="news-post-content">
                        <?php the_content(); ?>
                    </div>
                </div>
            </div>  
        <?php
    endforeach;
    ?>
</div>

<?php
get_footer();
