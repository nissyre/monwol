<?php
/* Template Name: Contact */
get_header();
?>

<div class="content">
    <div class="contact-text-header">
        <?php
        while (have_posts()) : the_post();
            the_title();
        endwhile;
        ?>
    </div>
    <div class="contact-info">
        <div class="contact-text">
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
    <div class="contact-form-title">
        <?php
        if (qtranxf_getLanguage() == 'pl') {
            echo "Formularz kontaktowy";
        } else {
            echo "Contact form";
        }
        ?>
    </div>
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
            <input name="name" placeholder="Jan Kowalski">

            <label>Email</label>
            <input name="email" type="email" placeholder="biuro@79level.pl">

            <label class="textarea-label">
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
</div>

<?php
get_footer();
