<?php

require 'vendor/autoload.php';
require 'connection.php';

use Carbon\Carbon;

Carbon::setLocale('no');


$butikkers = butikker::limit(3)->get();
$tjenesters = tjenester::limit(2)->get();


?>

    <?php require 'header.php' ?>

    <main id="kulturliv_main">
        <section> <img src="images/narmiljo/narmiljo_banner.png" </section>
            <section class="narmiljo_kategori">
                <div> <img src="images/narmiljo/dagligbutikk.png">
                    <header> <a href="#">Butikker</a></header>
                </div>
                <div> <img src="images/narmiljo/barber.png">
                    <header> <a href="#">Tjnester</a></div>
            </section>
            <section class="butikker_section">
                <?php

		          foreach ($butikkers as $butikker) {
				require './narmiljo/butikker_kort.php';
  		        }
                ?>
            </section>
            <section class="tjnester_section">
                <?php
            foreach ($tjenesters as $tjenester) {
				require './narmiljo/tjnester_kort.php';
            }
        ?>
            </section>
    </main>

    <?php require 'footer.php' ?>