<?php
get_header();
?>


<div class="content">
    
    <div class="home-images">
        <?php
       
        $posts = get_posts();
        foreach ($posts as $p) : setup_postdata($p);
            ?>
            <div class="home-post"> 
                <div class="home-post-img">
                    
                </div>
                <div class="home-post-header"><?php echo $p->post_title; ?></div>
                <div class="home-post-content"><?php
                    $subtitles = get_post_custom_values('subtitle', $p->ID);
                    $subtitle = $subtitles[0];
                    echo $subtitle;
                    ?></div>

            </div>
            <?php
        endforeach;
        ?>
    </div>
    <div class="home-separator"></div>

</div>



<?php
get_footer();
