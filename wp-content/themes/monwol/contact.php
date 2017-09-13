<?php
/* Template Name: Contact */
get_header();
?>
<div class="content">
    <div class="home-post"> 
        <div class="home-post-content-right">
            <div class="home-post-content">
                <?php
                while (have_posts()) : the_post();
                    the_content();
                endwhile;
                ?>
            </div>
                <?php $image = wp_get_attachment_image_src(get_post_thumbnail_id($p->ID), 'single-post-thumbnail'); ?>
                <img class="auto-scale-img" src="<?php echo has_post_thumbnail($p->ID) ? $image[0] : $image; ?>"/>
        </div>
    </div>
</div>
</div>

<?php
get_footer();
