<?php get_header(); ?>

<div class="banner-topo">
    <?php
        $img_directory = "http://localhost/lbz-theme-wp/wp-content/themes/lbz-theme/images/";
    ?>
    <picture>
        <img src="<?php echo $img_directory, 'banner-topo.jpg'?>">
    </picture>
</div>

<div class="widget">
    <div class="widget-img">
        <div class="widget-title">
        </div>
        <picture>
            <img src="<?php echo $img_directory, 'widget-servicos.png'?>">
        </picture>
    </div>

    <div class="widget-content">
        <div class="widget-title">
            <h3>SERVIÇOS</h3>
        </div>
        <div class="widget-text">
            <p>Por uma incomparável durabilidade, acabamento e brilho, mesmo quando 
                utilizado em áreas externas, o aço inox é considerado um dos mais nobres entre os metais.</p>
        </div>
    </div>
</div>

<div class="widget">
    <div class="widget-content">
        <div class="widget-title">
            <h3>PRODUTOS</h3>
        </div>
        <div class="widget-text">
            <p>Por uma incomparável durabilidade, acabamento e brilho, mesmo quando 
                utilizado em áreas externas, o aço inox é considerado um dos mais nobres entre os metais.</p>
        </div>
    </div>

    <div class="widget-img">
        <div class="widget-title">
        </div>
        <picture>
            <img src="<?php echo $img_directory, 'widget-produtos.png'?>">
        </picture>
    </div>
</div>

<?php get_footer(); ?>