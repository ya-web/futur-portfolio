<?php
require('data/model.php');
?>
<h2>Pour cette location&nbsp;:</h2>
<hr />
<!-- infos sur le produit (dimentions, prix etc.)-->
<div id="caracteristiques">
	<h3>"<?=htmlentities($infos['Name'],ENT_HTML5)?>"</h3>

	<?php if(ctype_digit($infos['NbPersMax']) && $infos['NbPersMax']>0):?>
	<p>
		<strong><i class="fa fa-check-square fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;Maxi : </strong><?=$infos['NbPersMax']?> enfants à la fois
	</p>
	<?php endif?>
	 
	<?php if((is_numeric($infos['Length']) && is_numeric($infos['Width']) && is_numeric($infos['Height'])) && ($infos['Length'] > 0 || $infos['Width'] > 0 || $infos['Height'] > 0) ):?>
	<p>
		<strong><i class="fa fa-check-square fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;Dimentions : </strong>
		<?php if($infos['Length'] > 0 && $infos['Width'] > 0):?>
		<?=$infos['Length']?> mètres x <?=$infos['Width']?> mètres 
		<?php elseif($infos['Length'] == 0 && $infos['Width'] > 0):?>
		<?=$infos['Width']?> mètres de diamètre
		<?php endif?>
		<?php if($infos['Height'] > 0):?>
		- Hauteur <?=$infos['Height']?> mètres
		<?php endif?>
	</p>
	<?php endif?>

	<?php if(ctype_digit($infos['Weight']) && $infos['Weight'] > 0):?>
	<p><strong><i class="fa fa-check-square fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;Poids : </strong> environs <?=$infos['Weight']?> kg</p>
	<?php endif?>
	
	<?php if(ctype_digit($infos['Price1D']) && $infos['Price1D'] > 0):?>
	<p>
		<strong><i class="fa fa-check-square fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;1 jour : </strong>Prix nets, sans livraison (facultative) <strong><?=$infos['Price1D']?> € ttc</strong>
	</p>
	<?php endif?>
	
	<?php if(ctype_digit($infos['Price2D']) && $infos['Price2D'] > 0):?>
	<p>
		<strong><i class="fa fa-check-square fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;2 jours : </strong>Prix nets, sans livraison (facultative) <strong><?=$infos['Price2D']?> € ttc</strong>
	</p>
	<?php endif?>
	
	<?php if(ctype_digit($infos['NbPersInst']) && $infos['NbPersInst'] > 0):?>
	<p>
		<strong><i class="fa fa-check-square fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;Vous devez fournir <?=$infos['NbPersInst']?> </strong> personnes pour l'installation
	</p>
	<?php endif?>

	<?php if(ctype_digit($infos['Nbdisp'])  && $infos['Nbdisp'] > 0):?>	
	<p>
		<strong><i class="fa fa-check-square fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;<?=$infos['Nbdisp']?></strong>
		 exemplaire<?php if($infos['Nbdisp'] > 1):?>s<?php endif?>
		 disponible<?php if($infos['Nbdisp'] > 1):?>s<?php endif?>
	</p>
	<?php endif?>

	<?php if(!empty($infos['Special'])):?>
    <p>
    	<strong><i class="fa fa-exclamation-triangle  fa-lg" aria-hidden="true"></i></strong>&nbsp;&nbsp;<?=htmlentities($infos['Special'],ENT_HTML5)?>
    </p>
    <?php endif?>

    <p>
    	<strong><i class="fa fa-check-square fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;
    	Pour</strong> toutes autres précisions veuillez vous référer à notre <strong>Catalogue</strong> ou nous contacter au <strong>06.85.56.95.81</strong> ou sur notre rubrique <strong>"Ecrivez nous"</strong>.
    </p>
</div>								

<!--slideshow du produit-->
<div id="unslider">
	<div class="my-slider">
	 	<ul>
	 		<?php foreach($photos as $photo):?>
	        <li><img src="images/vignettes/<?= htmlentities($title['Title'],ENT_HTML5)?>/<?= htmlentities($photo['Title'],ENT_HTML5)?>.jpg"/></li>
	        <?php endforeach?>      		            
	    </ul>
	</div>
</div>
<div class="clear"> </div>