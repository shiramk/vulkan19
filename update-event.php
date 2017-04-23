<?php

require 'vendor/autoload.php';
require 'connection.php';

use Carbon\Carbon;

Carbon::setLocale('no');

$event = Event::find($_GET['id']);
$event->title = $_POST['title'];
$event->starts_at = new Carbon($_POST['date'] . ' ' . $_POST['time']);
$event->description = $_POST['description'];
$event->image_path = $_POST['image-path'];
$event->is_free = isset($_POST['is-free']);
$event->save();

header('Location: http://localhost:8888/event-manager-pro');
die();
