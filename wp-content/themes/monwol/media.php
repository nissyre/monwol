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
        $link = get_post_meta($p->ID, 'youtubeLink', true);
        if ($color == 'white') { ?>
            <div class="media-post-white"> 
                <div class="media-post-img">
                    <?php $image = wp_get_attachment_image_src(get_post_thumbnail_id($p->ID), 'single-post-thumbnail'); ?>
                    <img class="auto-scale-img" src="<?php echo has_post_thumbnail($p->ID) ? $image[0] : $image; ?>"/>
                </div>
                <div class="media-post-content-column">
                    <div class="media-post-header">
                        <?php echo $p->post_title; ?>
                    </div>
                    <div class="media-post-content">
                        <?php the_content(); 
                        if (! empty($link)) {?>
                            <iframe width="420" height="315" src="<?php echo $link; ?>">
                            </iframe>
                        <?php }?>
                    </div>
                </div>
            </div>  
            <?php
            $color = 'grey';
        } else {
            ?>
            <div class="media-post-grey"> 
                <div class="media-post-img">
                    <?php $image = wp_get_attachment_image_src(get_post_thumbnail_id($p->ID), 'single-post-thumbnail'); ?>
                    <img class="auto-scale-img" src="<?php echo has_post_thumbnail($p->ID) ? $image[0] : $image; ?>"/>
                </div>
                <div class="media-post-content-column">
                    <div class="media-post-header">
                        <?php echo $p->post_title; ?>
                    </div>
                    <div class="media-post-content">
                        <?php the_content(); 
                        if (! empty($link)) {?>
                            <iframe width="420" height="315" src="<?php echo $link; ?>">
                            </iframe>
                        <?php }?>
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
