var number = 0;

// var button1 = document.querySelector("#button1");
// button1.addEventListener("click", function(){
// 	number++;
// 	$("p span").html(number)
// });

var button1 = $("button")
button1.on("click", function(){
	number++;
	$("p span").html(number)
});

// element.classList.add("my-class"); // addClass in jquery
// var menuButton1 = $('nav li a:nth_child(1)')
// var menuButton2 = $('nav li a:nth_child(2)')
// var menuButton3 = $('nav li a:nth_child(3)')
allMenuButtons=[];
var i=1;
button=$('nav li:nth-child(' + 1 + ')')
while(button.length !== 0){
	allMenuButtons.push(button)
	i++
	button=$('nav li:nth-child(' + i + ')')
}

allMenuButtons.forEach(clickFunction)
function clickFunction(button){
	button.on('click', function(){
		allMenuButtons.forEach((a) => a.removeClass('active'))
		button.addClass('active')
	})
}
