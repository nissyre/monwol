<?php
/* Template Name: Media */
get_header();
$args = array('category' => get_cat_ID('Media'));
?>

<div class="content">    
    <?php
    $posts = get_posts($args);
    $color = 'white';
    foreach ($posts as $p) : setup_postdata($p);
        if ($color == 'white') { ?>
            <div class="news-post-white"> 
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
            $color = 'grey';
        } else {
            ?>
            <div class="news-post-grey"> 
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
            $color = 'white';
        }
    endforeach;
    ?>
</div>

<?php
get_footer();
