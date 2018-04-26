<?php get_header(); ?>

<div id="pre-loader" class="escondida"></div>

<div class="row">
    
    <div class="col-lg-9">
        <h1 id="page-title">Produtos</h1>
        <div id="produtos">
            <div id="prodsContent">
                <?php $count = 1 ?>
                <?php if (have_posts()) : while (have_posts()) : the_post(); ?>

                    <div class="widget">    
                        <div class="widget-title 
                             <?php echo (($count % 2) == 1) ? "" : "flex-reverse" ?>">
                            <div class="title-space"></div>
                            <h3><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></h3>
                        </div>

                        <div class="widget-content 
                             <?php echo (($count % 2) == 1) ? "" : "flex-reverse" ?>">
                            <div class="widget-img prods
                            <?php 
                                echo (($count % 2) == 1) ? '' : ' reverse'
                            ?>">
                                <picture>
                                    <?php $img_directory = esc_url(home_url('/')).
                                            "wp-content/themes/lbz-theme/images/"; ?>
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
                <?php endwhile; else: ?>
                    <p><?php _e('Desculpe, ainda não temos produtos cadastrados.'); ?></p>
                <?php endif; ?>
            </div>
        </div>
        <div class="ani-produtos"></div>
    </div>
    
    <div class="col-lg-3">
        <?php
//            get_sidebar();
            $taxonomies = get_object_taxonomies((object) array('post_type' => $post_type));
            
            $terms = get_terms('category', 
                        array(
                            'orderby' => 'name',
                            'order' => 'ASC',
                            'hide_empty' => '1'
                        )
                    );
        ?>
        <div class="row sticky-top">
            <div class="col-lg-12">
                <div class="sidebar">
                    <h3>Categorias</h3>
                    <ul>
                        <li>
                            <span onclick="getProdutos('todas', this)" class="active">
                                Todas
                            </span>
                        </li>
                        <?php foreach($terms as $term) : ?>
                        <li>
                            <span onclick="getProdutos(
                                '<?php echo $term->slug ?>', this)">
                                <?php echo $term->name ?>
                            </span>
                        </li>
                        <?php endforeach ?>
                    </ul>
                </div>
                <div class="ani-produtos"></div>
            </div>
        </div>
    </div>
</div>

<?php get_footer(); ?>