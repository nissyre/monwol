<?php
/* Template Name: Media */
get_header();
$args = array('category' => get_cat_ID('Media'));
?>

<div class="content">    
    <div class="media-title">
        Media
    </div>
    <?php
    $posts = get_posts($args);
    $color = 'grey';
    foreach ($posts as $p) : setup_postdata($p);
        $link = get_post_meta($p->ID, 'youtubeLink', true);
        if ($color == 'white') {
            ?>
            <div class="media-post-white"> 
                <div class="media-post-header">
                    <?php echo $p->post_title; ?>
                </div>
                <?php if (!empty($link)) { ?>

                    <iframe  class="media-link" src="<?php echo $link; ?>">
                    </iframe>

                    <?php
                } else {
                    ?>
                    <div class="media-post-img">
                        <?php $image = wp_get_attachment_image_src(get_post_thumbnail_id($p->ID), 'single-post-thumbnail'); ?>
                        <img class="auto-scale-img" src="<?php echo has_post_thumbnail($p->ID) ? $image[0] : $image; ?>"/>
                    </div>
                <?php } ?>
                <div class="media-post-content">
                    <?php the_content(); ?>
                </div>    
            </div>  
            <?php
            $color = 'grey';
        } else {
            ?>
            <div class="media-post-grey"> 
                <div class="media-post-header">
                    <?php echo $p->post_title; ?>
                </div>
                <?php if (!empty($link)) { ?>
                    <iframe class="media-link" src="<?php echo $link; ?>">
                    </iframe>
                    <?php
                } else {
                    ?>
                    <div class="media-post-img">
                        <?php $image = wp_get_attachment_image_src(get_post_thumbnail_id($p->ID), 'single-post-thumbnail'); ?>
                        <img class="auto-scale-img" src="<?php echo has_post_thumbnail($p->ID) ? $image[0] : $image; ?>"/>
                    </div>
                    <?php
                }
                ?>
                <div class="media-post-content">
                    <?php the_content(); ?>
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
