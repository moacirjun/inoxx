<?php get_header(); ?>

<div class="row">
    <div class="col-md-8">
        <?php if (have_posts()) : while (have_posts()) : the_post(); ?>

                <h2 id="page-title"><?php the_title(); ?></h2>
                <div class="entry-content">
                    <div class="post-thumbnail">
                        <picture class="imagem-posts">
                            <?php the_post_thumbnail('medium_large') ?>
                        </picture>
                    </div>
                    <?php the_content(); ?>
                </div>

            <?php endwhile;
        else: ?>
            <p><?php _e('Desculpe, esta página não existe.'); ?></p>
        <?php endif; ?>
<?php //comments_template() ?>
    </div>

    <hr>

    <div class="col-md-4">
        <?php get_sidebar() ?>
    </div>
</div>

<?php get_footer(); ?>