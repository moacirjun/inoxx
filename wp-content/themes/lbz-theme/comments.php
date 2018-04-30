<?php
/**
 * The template for displaying comments
 *
 * This is the template that displays the area of the page that contains both the current comments
 * and the comment form.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

/*
 * If the current post is protected by a password and
 * the visitor has not yet entered the password we will
 * return early without loading the comments.
 */
if ( post_password_required() ) {
	return;
}
?>

<div id="comments" class="comments-area">

	<?php
	// You can start editing here -- including this comment!
	if ( have_comments() ) : ?>
		<h3 class="comments-title"><?php the_title() ?></h3>

		<ol class="comment-list">
			<?php
				wp_list_comments( array(
					'avatar_size' => 100,
					'style'       => 'ol',
					'short_ping'  => true,
					'reply_text'  => '',
				) );
			?>
		</ol>

		<?php the_comments_pagination( array(
			'prev_text' =>  '<span>Anterior</span>',
			'next_text' => '<span>Próximo</span>',
		) );

	endif; // Check for have_comments().

        $fields =  array(

          'author' =>
            '<div class="form-group">
                <label for="autor">Autor</label>
                <input type="text" name="author" class="form-control" id="text" placeholder="Autor">
            </div>',

          'email' =>
            '<div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" class="form-control" id="email" placeholder="exemplo@exemplo.com.br">
            </div>',

          'url' =>
            '<div class="form-group">
                <label for="url">Site</label>
                <input type="text" name="url" class="form-control" id="site" placeholder="http://www.seusite.com.br">
            </div>',
        );        
        
        $args = array(
          'id_form'           => 'commentform',
          'class_form'      => 'comment-form',
          'id_submit'         => 'submit',
          'class_submit'      => 'submit btn btn-primary',
          'name_submit'       => 'submit',
          'title_reply'       => 'Deixe um Comentário',
          'title_reply_to'    => __( 'Leave a Reply to %s' ),
          'cancel_reply_link' => __( 'Cancel Reply' ),
          'label_submit'      => __( 'Post Comment' ),
          'format'            => 'xhtml',

          'comment_field' =>  
            '<div class="form-group">
                <label for="url">Mensagem</label>
                <textarea class="form-control" rows="3" placeholder="Oi" name="comment"></textarea>
            </div>',

          'comment_notes_before' => '',

          'comment_notes_after' => '',

          'fields' => apply_filters( 'comment_form_default_fields', $fields ),
        );        
        
	comment_form($args);
	?>

</div><!-- #comments -->
