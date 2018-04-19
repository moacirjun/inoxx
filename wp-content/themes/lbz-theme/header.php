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

        <nav class="navbar navbar-expand-lg navbar-light bg-transp">
            <div class="container">
                <a class="navbar-brand" href="<?php esc_url(home_url('/')) ?>">
                    <h1>INOXX</h1>
                </a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navmenu" 
                        arial-contols="navmenu" arial-expanded="false" arial-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

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