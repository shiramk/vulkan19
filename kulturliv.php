<?php

require 'vendor/autoload.php';
require 'connection.php';

use Carbon\Carbon;

Carbon::setLocale('no');


$spisesteders = Spisesteder::limit(3)->get();
$treningsenters = Treningsenter::limit(2)->get();
$utesteders = Utesteder::limit(3)->get();

?>

    <?php require 'header.php' ?>
    <h2> Kulturliv</h2>
    <main id="kulturliv_main">
        <section> <img src="images/kulturliv/operahus.png"> </section>
        <section class="kulturliv_kategori">
            <header> Velg en av kategori </header>
            <div> <img src="images/kulturliv/spise_kategori.png"> <button id="lnk_spise"> <header> Spisesteder</header> </button></div>
            <div><img src="images/kulturliv/trening_kategori.png"> <button id="lnk_trening"> <header> Treningsenter</header></button></div>
            <div> <img src="images/kulturliv/ute_kategori.png"> <button id="lnk_utesteder"> <header>Utesteder</header></button></div>
        </section>
        <section id="spise_section" class="spise_section">
            <?php

		foreach ($spisesteders as $spisesteder) {
				require './kulturliv/spise_kort.php';
  		}
        ?>
        </section>
        <section id="trening_section" class="trening_section">
            <?php
            foreach ($treningsenters as $treningsenter) {
				require './kulturliv/trening_kort.php';
            }
        ?>
        </section>
        <section id="ute_section" class="ute_section">
            <?php
        foreach ($utesteders as $utesteder) {
				require './kulturliv/ute_kort.php';
  		}
        ?>
        </section>
    </main>
    <script>
        $("#lnk_spise").click(function() { //script for scrolling down to respective kategories
            $('html, body').animate({
                scrollTop: $("#spise_section").offset().top - 87
            }, 2000);
        });
    </script>

    <script>
        $("#lnk_trening").click(function() {
            $('html, body').animate({
                scrollTop: $("#trening_section").offset().top - 87
            }, 2000);
        });
    </script>

    <script>
        $("#lnk_utesteder").click(function() {
            $('html, body').animate({
                scrollTop: $("#ute_section").offset().top - 87
            }, 2000);
        });
    </script>

    <?php require 'footer.php' ?>
