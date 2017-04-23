<?php require 'header.php' ?>

<main class="mdl-layout__content">
	<div class="mdl-card mdl-shadow--2dp">
	  	<form class="mdl-card__supporting-text" action="store-event.php" method="post">
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label big-input">
			    <input class="mdl-textfield__input" type="text" id="tite" name="title">
			    <label class="mdl-textfield__label" for="sample1">Tittel</label>
		  	</div>
		  	<div class="split">
				<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="date" name="date">
			  	</div>
				<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="time" name="time">
			  	</div>
		  	</div>
		  	<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
		    	<textarea class="mdl-textfield__input" type="text" rows= "3" id="description" name="description"></textarea>
		    	<label class="mdl-textfield__label" for="description">Beskrivelse</label>
		  	</div>
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
			    <input class="mdl-textfield__input" type="text" id="tite" name="image-path">
			    <label class="mdl-textfield__label" for="sample1">Bilde-URL</label>
		  	</div>
		  	<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="is-free">
			  	<input class="mdl-checkbox__input" type="checkbox" id="is-free" name="is-free" checked>
			  	<span class="mdl-checkbox__label">Gratis påmelding</span>
			</label>
		  	<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
			  	Legg til event
			</button>
		</form>
	</div>
</main>

<?php require 'footer.php' ?>
