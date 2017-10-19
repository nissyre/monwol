<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package Nisarg
 */
get_header();
?>
<div class="container">
    <div class="row">
        <div id="primary" class="col-md-9 content-area">
            <main id="main" class="site-main" role="main">

                <article id="post-<?php the_ID(); ?>"  <?php post_class('post-content'); ?>>
                    <header class="entry-header">
                        <span class="screen-reader-text"><?php the_title(); ?></span>

                        <h1 class="entry-title"><?php the_title(); ?></h1>



                    </header><!-- .entry-header -->

                    <?php
                    if (is_sticky() && is_home() && !is_paged()) {
                        printf('<span class="sticky-post">%s</span>', __('Featured', 'nisarg'));
                    }
                    ?>

                    <?php nisarg_featured_image_disaplay(); ?>
                    <?php
                    $link = get_post_meta(get_the_ID(), 'youtubeLink', true);
                    if (!empty($link)) {
                        ?>
                        <div class="featured-image">
                            <iframe  style="min-height: 400px" src="<?php echo $link; ?>">
                            </iframe>
                        </div>
                        <?php
                    }
                    ?>
                    
                    <div class="entry-content">
                        <div class="contact-form"> 
                            <form>
                                <label>
                                    <?php
                                    if (qtranxf_getLanguage() == 'pl') {
                                        echo "Imię i nazwisko";
                                    } else {
                                        echo "Name";
                                    }
                                    ?>
                                </label>
                                <input name="name" placeholder=
                                    "<?php
                                        if (qtranxf_getLanguage() == 'pl') {
                                            echo "Jan Kowalski";
                                        } else {
                                            echo "James Smith";
                                        }
                                    ?>"
                                >

                                <label>Email</label>
                                <input name="email" type="email" placeholder=
                                    "<?php
                                        if (qtranxf_getLanguage() == 'pl') {
                                            echo "twoj@adres.pl";
                                        } else {
                                            echo "your@adress.com";
                                        }
                                    ?>"
                                >
                                <label>
                                    <?php
                                    if (qtranxf_getLanguage() == 'pl') {
                                        echo "Wiadomość";
                                    } else {
                                        echo "Message";
                                    }
                                    ?>
                                </label>
                                <textarea name="message" placeholder="<?php
                                if (qtranxf_getLanguage() == 'pl') {
                                    echo "Napisz tu wiadomość";
                                } else {
                                    echo "Write a message here";
                                }
                                ?>"></textarea>
                                <label></label>
                                <input id="submit" name="submit" type="submit" value="<?php
                                if (qtranxf_getLanguage() == 'pl') {
                                    echo "Wyślij";
                                } else {
                                    echo "Send";
                                }
                                ?>">
                            </form>
                        </div>
                    </div><!-- .entry-content -->

                    <footer class="entry-footer">
                        <?php nisarg_entry_footer(); ?>
                    </footer><!-- .entry-footer -->
                </article>

            </main><!-- #main -->
        </div><!-- #primary -->

        <?php get_sidebar('sidebar-1'); ?>
    </div> <!--.row-->
</div><!--.container-->
<?php get_footer(); ?>
