<?php get_header(); ?>

<?php $img_directory = esc_url(home_url('/')) . "wp-content/themes/lbz-theme/images/"; ?>

<?php
    $query = new WP_Query( array("posts_per_page" => 2) );
    $count = 1;
    
    if( $query->have_posts() ) {
        while( $query->have_posts() ) {
            $query->the_post();
            ?>
     
            <div class="widget">    
                <div class="widget-title
                        <?php echo ($count % 2 == 1) ? : " flex-reverse"; ?>">
                    <div class="title-space"></div>
                    <h3><?php the_title(); ?></h3>
                </div>

                <div class="widget-content
                        <?php echo ($count % 2 == 1) ? : " flex-reverse"; ?>">
                    <div class="widget-img
                            <?php echo (($count % 2) == 1) ? '' : ' reverse' ?>">
                        <picture>
                            <?php the_post_thumbnail() ?>
                        </picture>
                            <div class="corte"></div>
                            <div class="corte vermelho"></div>
                    </div>

                    <div class="widget-text">
                        <p><?php wp_limit_post(150, " [...]") ?></p>
                        <small><?php echo ucfirst(get_the_time('l, j \d\e F \d\e Y')); ?></small>
                    </div>
                </div>
            </div>

<?php
            $count++;
        }
    }
?>


<!--<div class="widget">    
    <div class="widget-title flex-reverse">
        <div class="title-space"></div>
        <h3>PRODUTOS</h3>
    </div>

    <div class="widget-content flex-reverse">
        <div class="widget-img reverse">
            <picture>
                <img src="<?php //echo $img_directory, 'imagem-produtos.jpg'?>">
                <div class="corte"></div>
                <div class="corte vermelho"></div>
            </picture>
        </div>
        
        <div class="widget-text">
            <p>Por uma incomparável durabilidade, acabamento e brilho, mesmo quando 
                utilizado em áreas externas, o aço inox é considerado um dos mais nobres entre os metais.</p>
        </div>
    </div>
</div>-->

<?php get_footer(); ?>