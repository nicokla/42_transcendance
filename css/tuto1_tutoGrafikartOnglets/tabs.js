(function(){
	var afficherOnglet = function(a){
		var li = a.parentNode
		var div = a.parentNode.parentNode.parentNode
	
		if(li.classList.contains('active')){
			return false
		}
	
		// on retire la classe active sur le contenu actif
		div.querySelector('.tabs .active').classList.remove('active')
		// j'ajoute la class active a l'onglet actuel
		li.classList.add('active')
	
		// on retire la classe active sur le contenu actif
		div.querySelector('.tabs-content .active').classList.remove('active')
		// on ajoute la class active sur le contenu correspondant
		div.querySelector(a.getAttribute('href')).classList.add('active')
	}
	
	var tabs = document.querySelectorAll('.tabs a')
	for (var i = 0 ; i < tabs.length ; i++){
		tabs[i].addEventListener('click', function(e){
			afficherOnglet(this)
		})
	}
	
	/**
	 * je recupere le hash
	 * ajouter la class active sur le lien href=hash
	 * retirer la cl act sur les autres onglets
	 * afficher / masquer les contenus
	 */
	
	var hash = window.location.hash
	var a = document.querySelector('a[href="' + hash + '"]')
	if (a !== null && !a.parentNode.classList.contains('active')) {
		afficherOnglet(a)
	}
})()