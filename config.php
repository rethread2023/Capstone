<?php
// Output buffering
ob_start();
// Session starting
session_start();

// ########################################################
// Files information
defined("DS") ? null : define("DS", DIRECTORY_SEPARATOR);
defined('TEMPLATE_FRONT') ? null : define('TEMPLATE_FRONT', __DIR__ . DS . 'ktemplates/frontend');
defined('TEMPLATE_BACK') ? null : define('TEMPLATE_BACK', __DIR__ . DS . 'ktemplates/backend');
defined('UPLOAD_DIRECTORY') ? null : define('UPLOAD_DIRECTORY', __DIR__ . DS . 'uploads');

// ########################################################

// ########################################################
// Database information
defined("DB_HOST") ? null : define("DB_HOST", "/cloudsql/tough-line-381213:asia-southeast2:rethread");
defined("DB_USER") ? null : define("DB_USER", "root");
defined("DB_PASS") ? null : define("DB_PASS", "password");
defined("DB_NAME") ? null : define("DB_NAME", "rethread_db");

$connection = mysqli_connect(null, DB_USER, DB_PASS, DB_NAME, null, DB_HOST);

if (!$connection) {
    die("Database connection failed: " . mysqli_connect_error());
}

require_once("functions.php");
require_once("cart.php");
// ########################################################

?>
