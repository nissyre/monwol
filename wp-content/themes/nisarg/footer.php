<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package Nisarg
 */
?>
</div><!-- #content -->
<footer id="colophon" class="site-footer" role="contentinfo">

    <div class="row site-info container-flex">
        <div class="container-flex-left"></div>
        <div class="container-flex-mid">
            <a href="https://www.instagram.com/monika_wolinska/">
                <img border="0" alt="Instagram" src="<?php 
                $img = wp_get_attachment_image_src(183, array(50,50), true); 
                echo $img[0];
                ?>" width="<?php echo $img[1]; ?>" height="<?php echo $img[1]; ?>">
            </a>
            <a href="https://www.facebook.com/MonikaWolinska1">
                <img border="0" alt="Facebook" src="<?php 
                $img = wp_get_attachment_image_src(186, array(50,50), true); 
                echo $img[0];
                ?>" width="<?php echo $img[1]; ?>" height="<?php echo $img[1]; ?>">
            </a>
            <a href="https://twitter.com/wolinskamonika/">
                <img border="0" alt="Twitter" src="<?php 
                $img = wp_get_attachment_image_src(189, array(50,50), true); 
                echo $img[0];
                ?>" width="<?php echo $img[1]; ?>" height="<?php echo $img[1]; ?>">
            </a>
            <a href="https://www.youtube.com/channel/UCXlZhQdHYJmKvun19FX2g-A">
                <img border="0" alt="YouTube" src="<?php 
                $img = wp_get_attachment_image_src(192, array(50,50), true); 
                echo $img[0];
                ?>" width="<?php echo $img[1]; ?>" height="<?php echo $img[1]; ?>">
            </a>
        </div>
        <div class="container-flex-right"> Email: <a href="mailto:info@monikawolinska.com" target="_top">info@monikawolinska.com</a> </div>
    </div><!-- .site-info -->
</footer><!-- #colophon -->
</div><!-- #page -->
<?php wp_footer(); ?>
</body>
</html>
