<div class="mdl-card mdl-shadow--2dp">
		<?= $butik['But_ID'] ?>
	<div class="mdl-card__title">
		<h2 class="mdl-card__title-text"><?= $butik['Navn'] ?></h2>
	</div>
  	<div class="mdl-card__supporting-text timestamp"><?= $butik['Address'] ?></div>
  	<div class="mdl-card__supporting-text"><?= $butik['Kontakt'] ?></div>

  	<div class="mdl-card__supporting-text"><?= $butik['Apenstider'] ?></div>
    <div class="mdl-card__supporting-text"><img src="<?= $butik['Blide'] ?>"/></div>

  	<div class="mdl-card__supporting-text right-aligned">
  	<a href="edit-butik.php?id=<?= $butik['id'] ?>">
  		<button class="mdl-button mdl-js-button mdl-button--icon">
		  	<i class="material-icons">edit</i>
		</button>
	</a>
	<a href="delete-event.php?id=<?= $butik['id'] ?>">
  		<button class="mdl-button mdl-js-button mdl-button--icon">
		  	<i class="material-icons">delete</i>
		</button>
	</a>
</div>

</div>
