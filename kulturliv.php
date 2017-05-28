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

<main id="kulturliv_main">
    <section> <img src="images/kulturliv/operahus.png" </section>
    <section class="kulturliv_kategori">
        <div> <a id="lnk_spise" > <img src="images/kulturliv/spise_kategori.png"> <header> Spisesteder</header> </a></div>
        <div> <a id="lnk_trening"> <img src="images/kulturliv/trening_kategori.png"><header> Treningsenter</header></a></div>
        <div> <a id="lnk_utesteder"> <img src="images/kulturliv/ute_kategori.png"> <header>Utesteder</header></a></div>
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
   $("#lnk_spise").click(function() {
    $('html, body').animate({
        scrollTop: $("#spise_section").offset().top-87
    }, 2000);
});
</script>

<script>
   $("#lnk_trening").click(function() {
    $('html, body').animate({
        scrollTop: $("#trening_section").offset().top-87
    }, 2000);
});
</script>

<script>
   $("#lnk_utesteder").click(function() {
    $('html, body').animate({
        scrollTop: $("#ute_section").offset().top-87
    }, 2000);
});
</script>

<?php require 'footer.php' ?>
