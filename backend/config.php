# backend/config.php
<?php
require 'vendor/autoload.php';
$mongo = new MongoDB\Client("mongodb://localhost:27017");
$db = $mongo->matrimony_db;
?>