<?php

require 'vendor/autoload.php';
require 'connection.php';

$event = Event::find($_GET['id']);
$event->delete();

header('Location: http://localhost:8888/event-manager-pro');
die();
