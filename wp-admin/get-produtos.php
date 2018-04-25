<?php
add_action( 'wp_ajax_nopriv_ajax_pagination', 'my_ajax_pagination' );
add_action( 'wp_ajax_ajax_pagination', 'my_ajax_pagination' );

function my_ajax_pagination() {
    echo get_bloginfo( 'title' );
    die();
}

echo "OI";
exit;

require 'wp-includes/query.php';

header("Content-Type: application/json; charset=UTF-8");
$category_name = filter_input(INPUT_GET, "category");

$postsCategory = array();

if (have_posts()) {
    while (have_posts()) {
        $postsCategory[] = the_title();
    }
};

//$query = new WP_Query( array("category_name" => $category_name) );
//$count = 1;
//
//if ($query->have_posts()) {
//    while ($query->have_posts()) {
//        $postsCategory[] = (object) array(
//            'link' => $query->the_permalink(),
//            'title' => $query->the_title(),
//            'thumbnail' => $query->the_post_thumbnail(),
//            'time' => $query->get_the_time('l, j \d\e F \d\e Y'),
//            'content' => wp_limit_post(150, " [...]"),
//        );
//    }
//}

echo json_encode($postsCategory);
