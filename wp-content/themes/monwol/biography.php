<?php
/* Template Name: Biography */
get_header();
?>
<div class="content">
    <div class="biography-post"> 
        <div class="biography-post-text">
            <div class="biography-post-header">
                <?php
                while (have_posts()) : the_post();
                    the_title();
                endwhile;
                ?>
            </div>
            <div class="biography-post-content">
                <?php $image = wp_get_attachment_image_src(get_post_thumbnail_id($p->ID), 'single-post-thumbnail'); ?>
                <img class="biography-post-img" src="<?php echo has_post_thumbnail($p->ID) ? $image[0] : $image; ?>"/>
                <?php
                while (have_posts()) : the_post();
                    the_content();
                endwhile;
                ?>
            </div>
        </div>
    </div>
</div>

<?php
get_footer();
