<?php

require 'vendor/autoload.php';
require 'connection.php';

use Carbon\Carbon;

Carbon::setLocale('no');

$interests = Interest::all();
#$butiks = Butikker::limit(2)->get();
?>

<?php require 'header.php' ?>

<main class="mdl-layout__content">
	<h4>what you want to do</h4>
	<ul>

		<?php

		foreach ($interests as $interest) {
				require 'social/events.php';
  		}

  		?>

	</ul>
</main>

<?php require 'footer.php' ?>
