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

<main id="studentliv_main">
    <section> <img src="images/studentliv/student_banner.png" </section>
    <section class="studentliv_kategori">
        <div> <img src="images/studentliv/student1.png"> <header> </header> </div>
        <div> <header> <p>Westerdals Oslo ACT has 1700 students enrolled in 25 different study programmes. We have talked to some of the students about their experience.</p></div>
        <div> <img src="images/studentliv/student2.png"> <header><a href="#">Utesteder</a></div>
     </section>
    <section id="spise_section" class="spise_section">
        <?php

		foreach ($spisesteders as $spisesteder) {
				require './kulturliv/spise_kort.php';
  		}
        ?>
    </section>
    <section class="trening_section">
         <?php
            foreach ($treningsenters as $treningsenter) {
				require './kulturliv/trening_kort.php';
            }
        ?>
    </section>
    <section class="ute_section">
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
<?php require 'footer.php' ?>
