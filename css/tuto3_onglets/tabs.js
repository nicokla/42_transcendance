// require("jquery");

function onglet1(){
	$("#main").html($("#onglet1Template").html());
}

function onglet2(){
	$("#main").html($("#onglet2Template").html());
}

function onglet3(){
	$("#main").html($("#onglet3Template").html());
}

$(window).on("hashchange", function() {
	switch (window.location.hash) {
		case "#onglet1":
			onglet1();
			break;
		case "#onglet2":
			onglet2();
			break;
		case "#onglet3":
			onglet3();
			break;
	}
});

$("#onglet1").on("click", function(){
	window.location.hash = "#onglet1"});
$("#onglet2").on("click", function(){
	window.location.hash = "#onglet2"});
$("#onglet3").on("click", function(){
	window.location.hash = "#onglet3"});

window.location.hash = "#onglet1"