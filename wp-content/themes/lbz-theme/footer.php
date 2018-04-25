        </div> <!-- /container -->
    </main>
    <footer>
        <div class="container">
            <?php
                $icons_directory = esc_url(home_url('/')) . "wp-content/themes/lbz-theme/icons/";
            ?>
            <div class="social-icons">
                <img src="<?php echo $icons_directory,  "facebook.png"?>">
                <img src="<?php echo $icons_directory,  "tweeter.png"?>">
                <img src="<?php echo $icons_directory,  "instagram.png"?>">
                <img src="<?php echo $icons_directory,  "googleplus.png"?>">
            </div>
            <div class="footer-details">
                <div class="widget-footer">
                    <img src="<?php echo $icons_directory,  "phone.svg"?>">
                    <p>(92) 3567-9999</p>
                </div>
                <div class="widget-footer">
                    <img src="<?php echo $icons_directory,  "location.svg"?>">
                    <p>Estrada da Ponta Negra 6543<br>
                        Santo Augostinho - Manaus/ Amazonas<br>
                        CEP: 69038-004</p>
                </div>
                <div class="widget-footer">
                    <img src="<?php echo $icons_directory,  "email.svg"?>">
                    <p>inoxx@inoxxmanaus.com.br</p>
                </div>
            </div>
            <p class="copy-right">&copy; INOXX 2018</p>
        </div>
    </footer>
    
    <!-- Custom styles for this template -->
    <link type="text/css" rel="stylesheet" href="<?php bloginfo('stylesheet_url') ?>">
    <script type='text/javascript'>
    /* <![CDATA[ */
    var ajaxprodutos = {"ajaxurl":"http:\/\/localhost\/inoxx\/wp-admin\/admin-ajax.php"};
    /* ]]> */
    </script>
    <?php wp_head() ?>    
    <?php wp_footer() ?>
</body>
</html>