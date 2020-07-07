
function openNav() {
  document.getElementById("#nav-content").style.width = "250px";
}

function closeNav() {
  document.getElementById("#nav-content").style.width = "0";
}

function onglet1(){
	$("main").html($("#onglet1Template").html())
	closeNav()
}

function onglet2(){
	$("main").html($("#onglet2Template").html())
	closeNav()
}

function onglet3(){
	$("main").html($("#onglet3Template").html())
	closeNav()
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

window.location.hash = "#onglet1"

// $('.button').on('click', function() {
//   toggleMenu()
// });