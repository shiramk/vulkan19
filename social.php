<?php

require 'vendor/autoload.php';
require 'connection.php';

use Carbon\Carbon;

Carbon::setLocale('no');

$interests = Interest::all();
#$butiks = Butikker::limit(2)->get();
?>

<?php require 'header.php' ?>

<main class="mdl-layout__content sosial_meny">
	
    <div class="sosial_meny">
        <h4>what you want to do</h4>
        <ul>
		<?php
            foreach ($interests as $interest) {
            require 'social/events.php';
            }
        ?>
        </ul>
    </div>
    <div id="resultcontainer">
    </div>
	
</main>
<script>
$(".lnk_interest").click(function(e) {
    e.preventDefault();
    var location = $(this).attr("href");
    $.ajax({
        type: "GET",
        url: location,
        success: function(result) {
            $( "#resultcontainer" ).html( result );
        },
        error: function(result) {
            alert('error');
        }
    });
});
</script>
<?php require 'footer.php' ?>
