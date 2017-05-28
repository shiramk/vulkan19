<?php

require 'vendor/autoload.php';
require 'connection.php';

use Carbon\Carbon;

Carbon::setLocale('no');
#$choice = Interest::where('interest_id', $_GET['id']);

$samlings = Samling::where('interest_id', $_GET['id'])->get();
$butikkers =null; # Butikker::where('interest_id', $_GET['id'])->get();
$spisesteders = null ;
$utesteders = null ;

    foreach ($samlings as $samling) {
        
        
     if ($samling['type_id'] == '5') {
         $butikkers = Butikker::limit(3)->get();
    }

     if ($samling['type_id'] == '7') {
         $spisesteders = Spisesteder::limit(3)->get();
     }

     if ($samling['type_id'] == '8') {
         $utesteders = Utesteder::limit(3)->get();
     }
    }
?>


<main class="mdl-layout__content">
	<h4>Recommendation for you</h4>
	<div class="grid">

		<?php

		foreach ($butikkers as $butikker) {
				require './narmiljo/butikker_kort.php';
  		}

  		?>

	</div>
    
    <section id="spise_section" class="spise_section">
        <?php

		foreach ($spisesteders as $spisesteder) {
				require './kulturliv/spise_kort.php';
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
