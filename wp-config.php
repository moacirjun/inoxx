<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'lbz_theme_wp');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'root');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', '');

/** Nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Charset do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8mb4');

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'GpN^NaB}KqB)tR@)`qT@ZGdSa*P5N6J65E09&Fx,3I[3!e%@iK3Zv9*tvw,nYlVy');
define('SECURE_AUTH_KEY',  'Nu]lCOG*%eGda?2QU3+1Xv}_}[lF-6I5Mtg/RDDt -GM/%Z95Wg{ma972T9/p1t9');
define('LOGGED_IN_KEY',    '<mA![7P~>![FQNe,%>`>9koej54u`Bq3q61r#Q)={.Z%l1(%Ex)X/Mtbr@hYuZd`');
define('NONCE_KEY',        '{`!]gYR^`W5HW<}f[N)wAZD.]y2:BD!E(Qq6hj59jxRpF8H7Nlk.]sihU@Ua^eoa');
define('AUTH_SALT',        'j{5Mu7uF{Q}(GVN!E1L`!rfAy STgc;J@cSyES[H:hR#eq W2v!jkXN7}1T|.jLK');
define('SECURE_AUTH_SALT', 'svAwr ;Xlks%c&ExH} ~&M4B$[vuIe#WqLqR#nV.h~C}zpj:Yp~03qH/WIY51T,Y');
define('LOGGED_IN_SALT',   'AoLUFg1SG#zZ0l++ ??Z$|p_B7?<-`vgVi-gtK wP-_2tKCm|ez<}U=N9y30uL;E');
define('NONCE_SALT',       ' I$gac$TA9l%(3d-ov{;4!xM~NKtKwoiV-1[`P~g2#-*_K,&3!>6oK6)x$Dn^!Bf');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix  = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');
