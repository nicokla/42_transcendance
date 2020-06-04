require("jquery");
require("underscore");
require("backbone");

var number = 0;

// var button1 = document.querySelector("#button1");
// button1.addEventListener("click", function(){
// 	number++;
// 	$("p span").html(number)
// });

var button1 = $("#button1")
button1.on("click", function(){
	number++;
	$("p span").html(number)
});

