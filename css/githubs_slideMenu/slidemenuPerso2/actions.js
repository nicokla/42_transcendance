
function openNavOpacity(){
	$('.bg').css('visibility','visible')
	$('.bg').css('opacity','0.6')
}

function closeNavOpacity(){
	$('.bg').css('visibility','hidden')
	$('.bg').css('opacity','0')
}

function openNavBurger(){
	var burgerButton = document.querySelectorAll('.button')[0];
	burgerButton.classList.add('opened')
	var f = document.getElementsByClassName('icon-bar')
	f[0].style.transform = 'translate3d(0,8px,0) rotate(45deg)'
	f[1].style.opacity = '0'
	f[2].style.transform = 'translate3d(0,-8px,0) rotate(-45deg)'
}

function closeNavBurger(){
	var burgerButton = document.querySelectorAll('.button')[0];
	burgerButton.classList.remove('opened')
	var f = document.getElementsByClassName('icon-bar')
	f[0].style.transform = ''
	f[1].style.opacity = '1'
	f[2].style.transform = ''
}

function openNav() {
	var f = document.getElementById('nav-content');
	f.style.transform = 'translateX(0px)';
	openNavBurger()
	openNavOpacity()
}

function closeNav() {
	var f = document.getElementById('nav-content');
	f.style.transform = 'translateX(-100%)';
	closeNavBurger()
	closeNavOpacity()
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

$("a[title=onglet1]").on("click", function(){
	window.location.hash = "#onglet1"
	closeNav()});
$("a[title=onglet2]").on("click", function(){
	window.location.hash = "#onglet2"
	closeNav()});
$("a[title=onglet3]").on("click", function(){
	window.location.hash = "#onglet3"
	closeNav()});

var burgerButton = document.querySelectorAll('.button')[0];
burgerButton.style.cursor = 'pointer';
burgerButton.onclick = function() {
	if(!burgerButton.classList.contains('opened'))
		openNav()
	else
		closeNav()
};

window.location.hash = "#onglet1";