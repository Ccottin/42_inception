<?php

define('DB_NAME', 'wordpress');

define('DB_USER', 'ccottin');

define('DB_PASSWORD', 'paceworD3');

define('DB_HOST', 'ccottin.42.fr');

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
