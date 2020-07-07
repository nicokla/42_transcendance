
function openNav() {
	var f = document.getElementById('mySidenav');
	f.style.transform = 'translateX(0px)';

	// $("#mySidenav").addClass('move-right')
	// f.classList.add('move-right')

	// $("#mySidenav").animate({
	// 	left: "250px"
	// }, 300)
}

function closeNav() {
	var f = document.getElementById('mySidenav');
	f.style.transform = 'translateX(-100%)';
}

function onglet1(){
	$("main").html($("#onglet1Template").html())
}

function onglet2(){
	$("main").html($("#onglet2Template").html())
}

function onglet3(){
	$("main").html($("#onglet3Template").html())
}

$(window).on("hashchange", function() {
	switch (window.location.hash) {
		case "#onglet1":
			onglet1()
			break;
		case "#onglet2":
			onglet2()
			break;
		case "#onglet3":
			onglet3()
			break;
	}
});

$("#onglet1").on("click", function(){
	window.location.hash = "#onglet1"
	closeNav()});
$("#onglet2").on("click", function(){
	window.location.hash = "#onglet2"
	closeNav()});
$("#onglet3").on("click", function(){
	window.location.hash = "#onglet3"
	closeNav()});

// window.location.hash = "#onglet1"
