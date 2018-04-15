<?php

require_once('bs4navwalker.php');

register_nav_menu('top', "Top menu");

add_filter( 'get_header_image_tag', 'lbztheme_header_image_tag', 10, 3 );

function scripts_do_template() {
	wp_register_script('bootstrap', get_template_directory_uri() . "/lib/bootstrap/bootstrap.js");

	wp_enqueue_script("jquery");
	wp_enqueue_script("bootstrap");
}

add_action("wp_enqueue_scripts", "scripts_do_template");

if (function_exists('register_sidebar')) {
    register_sidebar(array(
        'before_title' => '<h3>',
        'after_title' => '</h3>',
        'before_widget' => '<div class="row"><div class="col-md-12">',
        'after_widget' => '</div></div>',
    ));
}