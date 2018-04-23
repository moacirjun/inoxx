<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="<?php bloginfo('charset') ?>">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">

        <title><?php wp_title('|', true, 'right') ?> <?php bloginfo('name') ?></title>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>

    <header>
        <nav id="navbar-menu" class="navbar navbar-expand-lg navbar-light fixed-top bg-transp">
            <div class="container">
                <?php
                    $img_directory = esc_url(home_url('/')) . "wp-content/themes/lbz-theme/images/";
                ?>
                <a class="navbar-brand" href="<?php echo esc_url(home_url('/')) ?>">
                    <img src="<?php echo $img_directory, "logo.png" ?>">
                </a>

                <div class="navbar-dark ml-auto">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navmenu" 
                            arial-contols="navmenu" arial-expanded="false" arial-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>

                <?php
                wp_nav_menu([
                    'menu'            => 'top',
                    'theme_location'  => 'top',
                    'container'       => 'div',
                    'container_id'    => 'navmenu',
                    'container_class' => 'collapse navbar-collapse',
                    'menu_id'         => false,
                    'menu_class'      => 'navbar-nav ml-auto mr-auto',
                    'depth'           => 2,
                    'fallback_cb'     => 'bs4navwalker::fallback',
                    'walker'          => new bs4navwalker()
                ]);
                ?>
            </div>
        </nav>
        
        <div class="container">
            <div id="slide-produtos" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#slide-produtos" data-slide-to="0" class="active"></li>
                    <li data-target="#slide-produtos" data-slide-to="1"></li>
                    <li data-target="#slide-produtos" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="<?php echo $img_directory, 'banner-topo.jpg'?>"
                             class="d-block w-100 images-slide" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img src="<?php echo $img_directory, 'banner-topo-2.jpg'?>"
                             class="d-block w-100 images-slide" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img src="<?php echo $img_directory, 'banner-topo-3.jpg'?>"
                             class="d-block w-100 images-slide" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#slide-produtos" 
                   role="button"data-slide="prev">
                </a>
                <a class="carousel-control-next" href="#slide-produtos"
                   role="button" data-slide="next">
                </a>
            </div>
        </div>
            
            <!--<div class="banner-topo">
                <picture>
                    <img src="<?php //echo $img_directory, 'banner-topo.jpg'?>">
                </picture>
            </div>-->
    </header>

        <main>
            <div class="container">