<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

add_theme_support('post-thumbnails');

function themeslug_enqueue_style() {
    wp_enqueue_style('main', get_template_directory_uri() . '/inc/css/main.css', false);
}

add_action('wp_enqueue_scripts', 'themeslug_enqueue_style');

function register_my_menu() {
    register_nav_menu('header-menu', __('Main'));
}

add_action('init', 'register_my_menu');

add_image_size('custom_medium', 450, 450, true);
