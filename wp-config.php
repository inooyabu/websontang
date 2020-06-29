<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'websontang');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'admin');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'cd<.$k#wfx>N.SQf ZHw<;c%o|RS#:7LUgy|q<@Wve+l.5S&xMy[kJN]F(abH4sM');
define('SECURE_AUTH_KEY',  '*C-FBH^=HAPt L5SaK-qvG6<Fb0mPu%Uz8pF0Yzxo]LX/hsN<T+Y$bsMa`]0(R/r');
define('LOGGED_IN_KEY',    'ubk3u Vatq}Hjip+t*fAjYq0mS%wQn42Eitx+ud B %x  tU9&HA(7?6 06g!+^j');
define('NONCE_KEY',        '4o[@nikyp~tpOXOoe4J bb1<!@bF-zvyWX4pge1>WvAL:N5l0nx#LU&TIcOuYXf@');
define('AUTH_SALT',        '9&)CJ-R+tOnLSL%t.j?[w6%%j,F*AE@l3hUH$6-pYV|93?&<H))d)|QK;Vy dIO4');
define('SECURE_AUTH_SALT', '0>p,r-g:;`>a]t#K8P[EL1m]oJ|]a9$_`}S~N0ph6Y/A?%c,<Ad[V]Y*.vfB]l1B');
define('LOGGED_IN_SALT',   ';Brf+7r$zatqH/d`u#t+2EjVg2.Q(j%x!|M8&3ILj)(*~<6{Dp=%SKLQi`@6yKNK');
define('NONCE_SALT',       '#t4E,d#kIY1S]Z{}eyzq?a*&K7<*r{zj{M7iTslb$}9*DKJ]^F;(C]-*N-}]b)^e');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
