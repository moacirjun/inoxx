<?php get_header(); ?>

<h1>Notícias</h1>

<div class="row">
	<div class="col-md-8">
		<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

		    <h2><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></h2>
		    <div class="entry-content">
		        <?php echo ucfirst(get_the_time('l, j \d\e F \d\e Y')); ?>
		    </div>
		    <hr>

		<?php endwhile; else: ?>
		    <p><?php _e('Desculpe, esta página não existe.'); ?></p>
		<?php endif; ?>
	</div>

	<div class="col-md-4">
		<?php get_sidebar() ?>
	</div>
</div>

<?php get_footer(); ?>