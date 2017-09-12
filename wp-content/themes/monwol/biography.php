<?php
/* Template Name: Biography */
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
        </div>
    </div>
</div>
</div>

<?php
get_footer();
