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
    
    
    wp_localize_script( 'ajax-produtos', 'ajaxprodutos', array(
            'ajaxurl' => admin_url( 'admin-ajax.php' )
    ));
}

add_action( 'wp_ajax_nopriv_get_produtos', 'getProdutos' );
add_action( 'wp_ajax_get_produtos', 'getProdutos' );

function getProdutos() {

    $category_slug = filter_input(INPUT_GET, "category");
    
    if ($category_slug === "todas") {
        $query = new WP_Query(array("all"));
    }
    else {
        $query = new WP_Query( array("category_name" => $category_slug) );
    }

    $count = 1;
    
    if( $query->have_posts() ) {
        while( $query->have_posts() ) {
            $query->the_post(); ?>
            
            <div class="widget">    
                <div class="widget-title 
                     <?php echo (($count % 2) == 1) ? "" : "flex-reverse" ?>">
                    <div class="title-space"></div>
                    <h3><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></h3>
                </div>

                <div class="widget-content 
                     <?php echo (($count % 2) == 1) ? "" : "flex-reverse" ?>">
                    <div class="widget-img prods <?php echo (($count % 2) == 1) ? '' : 'reverse' ?>">
                        <picture>
                            <?php the_post_thumbnail() ?>
                            <div class="corte"></div>
                            <div class="corte vermelho"></div>
                        </picture>
                    </div>

                    <div class="widget-text">
                        <p><?php wp_limit_post(150, " [...]") ?></p>
                        <small><?php echo ucfirst(get_the_time('l, j \d\e F \d\e Y')); ?></small>
                    </div>
                </div>
            </div>
        <?php $count++ ?>
    
    <?php
        }
    }
    else {
        echo 'Sem Posts para essa categoria';
    }
    
    die();
}

add_action("wp_enqueue_scripts", "scripts_do_template");

if (function_exists('register_sidebar')) {
    register_sidebar(array(
        'before_title' => '<h3>',
        'after_title' => '</h3>',
        'before_widget' => '<div class="row sticky-top"><div class="col-md-12"><div class="sidebar">',
        'after_widget' => '</div></div></div>',
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