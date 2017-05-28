<?php

require 'vendor/autoload.php';
require 'connection.php';

use Carbon\Carbon;

Carbon::setLocale('no');

$interests = Interest::all();
#$butiks = Butikker::limit(2)->get();
?>

<?php require 'header.php' ?>
<h2> Socialt</h2>

<main id="socialt_main">
	
    <section class="sosial_meny">
        <?php
            foreach ($interests as $interest) {
            require 'social/events.php';
            }
        ?>
    </section>
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
            $('html, body').animate({
        scrollTop: $("#resultcontainer").offset().top-87
    }, 2000);
        },
        error: function(result) {
            alert('error');
        }
    });
});
</script>
<?php require 'footer.php' ?>
