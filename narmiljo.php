<?php

require 'vendor/autoload.php';
require 'connection.php';

use Carbon\Carbon;

Carbon::setLocale('no');


$butikkers = Butikker::limit(3)->get();
$tjenesters = Tjenester::limit(2)->get();


?>

    <?php require 'header.php' ?>
    <h2> Narmiljø</h2>
    <main id="narmiljo_main">
        <section> <img src="images/narmiljo/narmiljo_banner.png" </section>
            <section id="narmiljo_kategori" class="narmiljo_kategori">
                <header> Velg en av kategori </header>
                <div><img src="images/narmiljo/dagligbutikk.png">
                    <button id="lnk_butikker">
                <header>Butikker</header> </button>
                </div>
                <div> <img src="images/narmiljo/barber.png">
                    <button id="lnk_tjenster">

                <header> Tjnester </header> </button>
                </div>
            </section>

            <section id="butikker_section" class="butikker_section">
                <?php

              foreach ($butikkers as $butikker) {
            require './narmiljo/butikker_kort.php';
            }
            ?>
            </section>

            <section id="tjenster_section" class="tjnester_section">
                <?php
                foreach ($tjenesters as $tjenester) {
            require './narmiljo/tjnester_kort.php';
                }
            ?>
            </section>
    </main>

    <script>
        $("#lnk_butikker").click(function() {
            $('html, body').animate({
                scrollTop: $("#butikker_section").offset().top - 87
            }, 2000);
        });
    </script>

    <script>
        $("#lnk_tjenster").click(function() {
            $('html, body').animate({
                scrollTop: $("#tjenster_section").offset().top - 87
            }, 2000);
        });
    </script>

    <?php require 'footer.php' ?>
