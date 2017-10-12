<?php
require('data/model.php');
?>
<?php foreach($elements as $element):?>
<!-- chargement de tous les produits, fitrés provisoirement par un hide si pas dans la cathégorie demandée-->
<div class="
tous 
<?= htmlentities($element['Cathegory'],ENT_HTML5)?> 
box 
<?php if($selector!=htmlentities($element['Cathegory'],ENT_HTML5)){ echo'hide';}?>
">
	<figure>
		<img src="images/vignettes/<?= htmlentities($element['Title'],ENT_HTML5)?>/<?= htmlentities($element['Title'],ENT_HTML5)?>.jpg" alt="<?= htmlentities($element['Title'],ENT_HTML5)?>">
		<figcaption>
			<h3 class="name"><?=htmlentities($element['Name'],ENT_HTML5)?></h3>
			<p class="role"><?=htmlentities($element['Subtitle'],ENT_HTML5)?></p>		
		</figcaption>
	</figure>
	<a href="#" class="showSlider" data-id="<?= htmlentities($element['Id'],ENT_HTML5)?>">
		<p  class="plus overlay">+</p>
	</a>
</div>
<?php endforeach?>

<!-- script appliquable uniquement sur la section #rentals -->
<script src="script/rentals.js"></script>
