<?php get_header(); ?>

<?php $img_directory = esc_url(home_url('/')) . "wp-content/themes/lbz-theme/images/"; ?>
<div class="widget">    
    <div class="widget-title">
        <div class="title-space"></div>
        <h3>SERVIÇOS</h3>
    </div>

    <div class="widget-content">
        <div class="widget-img">
            <picture>
                <img src="<?php echo $img_directory, 'banner-topo.jpg'?>">
            </picture>
                <div class="corte"></div>
                <div class="corte vermelho"></div>
        </div>
        
        <div class="widget-text">
            <p>Por uma incomparável durabilidade, acabamento e brilho, mesmo quando 
                utilizado em áreas externas, o aço inox é considerado um dos mais nobres entre os metais.</p>
        </div>
    </div>
</div>

<div class="widget">    
    <div class="widget-title flex-reverse">
        <div class="title-space"></div>
        <h3>PRODUTOS</h3>
    </div>

    <div class="widget-content flex-reverse">
        <div class="widget-img reverse">
            <picture>
                <img src="<?php echo $img_directory, 'banner-topo-2.jpg'?>">
                <div class="corte"></div>
                <div class="corte vermelho"></div>
            </picture>
        </div>
        
        <div class="widget-text">
            <p>Por uma incomparável durabilidade, acabamento e brilho, mesmo quando 
                utilizado em áreas externas, o aço inox é considerado um dos mais nobres entre os metais.</p>
        </div>
    </div>
</div>

<?php get_footer(); ?>