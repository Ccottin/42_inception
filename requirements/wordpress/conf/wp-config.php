<?php

define('DB_NAME', 'WordPress');

define('DB_USER', 'userdb');

define('DB_PASSWORD', 'passdb');

define('DB_HOST', 'ccottin.42.fr:3306');

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
