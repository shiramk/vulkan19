<?php

require 'vendor/autoload.php';
require 'connection.php';

use Carbon\Carbon;

Carbon::setLocale('no');


$butikkers = Butikker::limit(3)->get();
$tjenesters = Tjenester::limit(2)->get();


?>

    <?php require 'header.php' ?>

    <main id="index_main">
        <img src="./images/logo/main_bg.png">
    </main>

    <?php require 'footer.php' ?>
