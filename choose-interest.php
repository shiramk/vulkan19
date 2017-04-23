<?php

require 'vendor/autoload.php';
require 'connection.php';

use Carbon\Carbon;

Carbon::setLocale('no');

$choice = Interest::find($_GET['id']);
?>

<?php require 'header.php' ?>

<main class="mdl-layout__content">
	<h4>You choose intersest <?= $choice['text'] ?></h4>
</main>


<?php require 'footer.php' ?>
