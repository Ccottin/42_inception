<?php

define('DB_NAME', $DB_NAME);

define('DB_USER', $DB_USER);

define('DB_PASSWORD', $DB_PASSWORD);

define('DB_HOST', $MYSQLHOST);

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
