<?php

use Illuminate\Database\Capsule\Manager as Database;

$host = getenv('MYSQL_SERVICE_HOST');
$port = getenv('MYSQL_SERVICE_PORT_MYSQL');
$username = 'root';
$password = 'root';
$name = 'project18';

$database = new Database();
$database->addConnection([
	'driver' => 'mysql',
	'host' => 'localhost',
	'port' => $port,
	'username' => $username,
	'password' => $password,
	'database' => $name,
	'collation' => 'utf8_general_ci'
]);
$database->bootEloquent();
