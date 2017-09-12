<?php
/* Template Name: Biography */
get_header();
?>
<div class="content">
    <?php
        $page = get_page_by_title('biography');
        $content = apply_filters('the_content', $page->post_content); 
    ?>

            <div class="home-post"> 
                <div class="home-post-content-right">
                    <div class="home-post-content">
                        <?php 
                        var_dump($page); 
                        ?>
                    </div>
                </div>
            </div>
    </div>
</div>

<?php
get_footer();
