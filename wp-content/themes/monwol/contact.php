<?php
/* Template Name: Contact */
get_header();
?>

<div class="content">
    <div class="contact-info">
        <div class="contact-text">
            <div class="contact-text-header">
                <?php
                while (have_posts()) : the_post();
                    the_title();
                endwhile;
                ?>
            </div>
            <div class="contact-text-content">
                <?php
                while (have_posts()) : the_post();
                    the_content();
                endwhile;
                ?>
            </div>
        </div>
        <div class="contact-img">
            <?php $image = wp_get_attachment_image_src(get_post_thumbnail_id($p->ID), 'single-post-thumbnail'); ?>
            <img class="auto-scale-img" src="<?php echo has_post_thumbnail($p->ID) ? $image[0] : $image; ?>"/>
        </div>
    </div>
</div>

<?php
get_footer();
