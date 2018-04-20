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
                <img src="<?php echo $img_directory, 'widget-servicos.png'?>">
            </picture>
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
        <div class="widget-img">
            <picture>
                <img src="<?php echo $img_directory, 'widget-produtos.png'?>">
            </picture>
        </div>
        
        <div class="widget-text">
            <p>Por uma incomparável durabilidade, acabamento e brilho, mesmo quando 
                utilizado em áreas externas, o aço inox é considerado um dos mais nobres entre os metais.</p>
        </div>
    </div>
</div>

<?php get_footer(); ?>