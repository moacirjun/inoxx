<?php

require_once('bs4navwalker.php');


add_filter( 'get_header_image_tag', 'lbztheme_header_image_tag', 10, 3 );

function inoxx_setup() {
    add_theme_support("post-thumbnails");
    set_post_thumbnail_size('533px', '400px', TRUE);
    add_image_size("banner-topo-size", 1200, 675, FALSE);

    register_nav_menu('top', "Top menu");
}
add_action('after_setup_theme', 'inoxx_setup');

function scripts_do_template() {
    wp_register_script('bootstrap', get_template_directory_uri() . "/lib/bootstrap/bootstrap.js");
    wp_register_script('main', get_template_directory_uri() . "/lib/js/main.js");

    wp_enqueue_script("jquery");
    wp_enqueue_script("bootstrap");
    wp_enqueue_script("main");
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

function wp_limit_post($max_char, $more_link_text = '[...]',$notagp = false, $stripteaser = 0, $more_file = '') {
    $content = get_the_content($more_link_text, $stripteaser, $more_file);
    $content = apply_filters('the_content', $content);
    $content = str_replace(']]>', ']]&gt;', $content);
    $content = strip_tags($content);
 
   if (isset($_GET['p'])) {
      if($notagp) {
      echo substr($content,0,$max_char);
      }
      else {
      echo '<p>';
      echo substr($content,0,$max_char);
      echo "</p>";
      }
   }
   else if ((strlen($content)>$max_char) && ($espacio = strpos($content, " ", $max_char ))) {
        $content = substr($content, 0, $espacio);
        $content = $content;
        if($notagp) {
        echo substr($content,0,$max_char);
        echo $more_link_text;
        }
        else {
        echo '<p>';
        echo substr($content,0,$max_char);
        echo $more_link_text;
        echo "</p>";
        }
   }
   else {
      if($notagp) {
      echo substr($content,0,$max_char);
      }
      else {
      echo '<p>';
      echo substr($content,0,$max_char);
      echo "</p>";
      }
   }
}