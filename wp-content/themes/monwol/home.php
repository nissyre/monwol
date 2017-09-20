<?php
get_header();
?>

<div class="content">    
    
    <?php
    $posts = get_posts();
    $side = 'left';
    foreach ($posts as $p) : setup_postdata($p);
        ?>
        <?php if ($side == 'left') { ?>

            <div class="home-post-left"> 
                <div class="home-post-img-left">
                    <?php $image = wp_get_attachment_image_src(get_post_thumbnail_id($p->ID), 'single-post-thumbnail'); ?>
                    <img class="auto-scale-img" src="<?php echo has_post_thumbnail($p->ID) ? $image[0] : $image; ?>"/>
                </div>
                <div class="home-post-content-right">
                    <div class="home-post-header">
                        <?php echo $p->post_title; ?>
                    </div>
                    <div class="home-post-content">
                        <?php the_content(); ?>
                    </div>
                </div>
            </div>  

            <?php
            $side = 'right';
        } else {
            ?>
            <div class="home-post"> 
                <div class="home-post-content-left">
                    <div class="home-post-header">
                        <?php echo $p->post_title; ?>
                    </div>
                    <div class="home-post-content">
                        <?php the_content(); ?>
                    </div>
                </div>
                <div class="home-post-img-right">
                    <?php $image = wp_get_attachment_image_src(get_post_thumbnail_id($p->ID), 'single-post-thumbnail'); ?>
                    <img class="auto-scale-img" src="<?php echo has_post_thumbnail($p->ID) ? $image[0] : $image; ?>"/>
                </div>

            </div>  

            <?php
            $side = 'left';
        }
        ?>


        <?php
    endforeach;
    ?>
</div>



<?php
get_footer();
