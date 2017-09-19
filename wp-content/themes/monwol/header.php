<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php language_attributes(); ?> class="no-js">
    <head>
        <meta charset="<?php bloginfo('charset'); ?>">
            <meta name="viewport" content="width=device-width">
                <link rel="profile" href="http://gmpg.org/xfn/11">
                    <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">

                        <?php wp_head(); ?>
                        </head>
                        <body <?php body_class(); ?>>

                            <div class="header">
                                <div class="header-menu">
                                    <?php wp_nav_menu(array('sort_column' => 'menu_order')); ?>
                                    <img class="staff" src="http://localhost/monwol/wp-content/themes/monwol/Treble_clef_with_empty_staff.svg">
                                </div> 
                            </div>

