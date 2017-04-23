<?php

require 'vendor/autoload.php';
require 'connection.php';

use Carbon\Carbon;

Carbon::setLocale('no');

#$butiks = Butikker::all();
$butiks = Butikker::limit(2)->get();
?>

<?php require 'header.php' ?>

<main class="mdl-layout__content">
	<h4>Kommende butiks</h4>
	<div class="grid">

		<?php

		foreach ($butiks as $butik) {
				require 'card.php';
  		}

  		?>

	</div>
	<!--<h4>Tidligere butiks</h4>
	<div class="grid">

		<?php

		foreach ($butiks as $butik) {
				require 'card.php';
  		}

  		?>

	</div>-->
</main>
<a href="new-butik.php">
    <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
        <i class="material-icons">add</i>
    </button>
</a>

<?php require 'footer.php' ?>
