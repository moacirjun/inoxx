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
    $page = filter_input(INPUT_GET, "page");
    $args = array();
    
    if ($category_slug == "todas") {
        $args[] = "all";
    }
    else {
        $args["category_name"] =  $category_slug;
    }
    
    if ( isset($page) ) {
        $args["paged"] =  $page;
    }
    
    $query = new WP_Query( $args );
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
            
        if(function_exists('wp_pagination') ) {
            wp_pagination($query);
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

/**
 *
 * Paginação utilizando a função paginate_links
 * @param  WP_Query $query Contém uma $query customizada
 *
 */
function wp_pagination( $query=null, $wpcpn_posts=null )
{
    global $wp_query;
    $query = $query ? $query : $wp_query;
    $big = 999999999;
    $max_num_pages = $query->max_num_pages;

    $paginate = paginate_links(
        array(
            'base'      => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
            'type'      => 'array',
            'total'     => $max_num_pages,
            'format'    => '?paged=%#%',
            'current'   => max( 1, get_query_var('paged') ),
            'prev_text' => __('&laquo;'),
            'next_text' => __('&raquo;'),
        )
    );
    if ( $max_num_pages > 1 && $paginate ) {
        echo '<nav arial-label="Page navigation example">';
        echo '<ul class="pagination">';
       
        $currentPage = ($query->query_vars["paged"]) ? $query->query_vars["paged"] : 1;
        $PreviousDisbled = ($currentPage == 1) ? 'disabled': '';
        $NextDisbled = ($currentPage == $max_num_pages) ? 'disabled': '';
        
        echo 
            '<li class="page-item ', $PreviousDisbled, '">',
                '<span class="page-link" value="previous"',
                        'onclick="getProdutosPage(this)">',
                    'Anterior',
                '</span>',
            '</li>';
        
        for ($count = 1; $count <= $max_num_pages; $count++) {
            
            $active = ($count == $currentPage) ? "active" : "";
            echo 
                '<li class="page-item ', $active, '">',
                    '<span class="page-link" value="', $count, '"',
                            'onclick="getProdutosPage(this)">',
                        $count,
                    '</span>',
                '</li>';
        }
        
        echo 
            '<li class="page-item ', $NextDisbled, '">',
                '<span class="page-link" value="next"',
                        'onclick="getProdutosPage(this)">',
                    'Próxima',
                '</span>',
            '</li>';

        echo '</ul>';
        echo '</nav>';
    }
}