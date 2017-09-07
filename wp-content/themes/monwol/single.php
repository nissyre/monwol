<?php get_header(); ?>

<div class="content">
    <div class="single-post-header">
        <?php $p = get_post($page->ID); ?>
        <h1>
            <?php echo $p->post_title; ?>
        </h1>
    </div>
    <div class="single-post">
        <div class="single-post-content">
            <?php echo $p->post_content; ?>
        </div>   
    </div>
</div>

<?php get_footer(); ?>
