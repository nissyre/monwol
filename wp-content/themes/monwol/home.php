<?php
get_header();
?>

<div class="content">    
    <div class="media-title">
    <?php
    if (qtranxf_getLanguage() == 'pl') {
        echo "Bieżące informacje";
    } else {
        echo "Actual News";
    }
    ?>
    </div>
    
    <?php
    $posts = get_posts();
    $side = 'left';
    foreach ($posts as $p) : setup_postdata($p);
        $link = get_post_meta($p->ID, 'youtubeLink', true);
        ?>
        <?php if ($side == 'left') { ?>
            <div class="home-post-left"> 
                <div class="home-post-img-left">
                    <?php
                    if (empty($link))
                    {
                        $image = wp_get_attachment_image_src(get_post_thumbnail_id($p->ID), 'single-post-thumbnail'); ?>
                        <img class="auto-scale-img" src="<?php echo has_post_thumbnail($p->ID) ? $image[0] : $image; ?>"/>
                    <?php } 
                    else
                    {?>
                        <iframe width="420" height="315" src="<?php echo $link; ?>">
                        </iframe>                        
                    <?php
                    }?>
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
                    <?php
                    if (empty($link))
                    {
                        $image = wp_get_attachment_image_src(get_post_thumbnail_id($p->ID), 'single-post-thumbnail'); ?>
                        <img class="auto-scale-img" src="<?php echo has_post_thumbnail($p->ID) ? $image[0] : $image; ?>"/>
                    <?php } 
                    else
                    {?>
                        <iframe width="420" height="315" src="<?php echo $link; ?>">
                        </iframe>                        
                    <?php
                    }?>
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
