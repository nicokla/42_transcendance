require("jquery");
require("underscore");
require("backbone");

export var GLOBALVARS = {}

import consumer from "../channels/consumer"
// import leftPlayerChannel from '../channels/left_player_channel'
// import rightPlayerChannel from '../channels/right_player_channel'
GLOBALVARS.CSRF = function() {
	return $("meta[name='csrf-token']").attr("content");
}

function newPlayer(myname){
	$.ajax({
		async: false,
		headers: { "X-CSRF-Token": GLOBALVARS.CSRF() },
		type: 'POST',
		url: '/players', 
		data: {player: {name: myname}},
		success: function(res){
			console.log(res)
			GLOBALVARS.currentPlayer = res
		}
	})
}

function newGame(){
	$.ajax({
		async: false,
		headers: { "X-CSRF-Token": GLOBALVARS.CSRF() },
		type: 'POST',
		url: '/games', 
		success: function(res){
			console.log(res)
			GLOBALVARS.currentGame = res
		}
	})
}

function getGames(){
	$.ajax({
		async: false,
		headers: { "X-CSRF-Token": GLOBALVARS.CSRF() },
		type: 'GET',
		url: '/games',
		success: function(res){
			console.log(res)
			GLOBALVARS.games = res
		}
	})
}

function joinGame(game, position){
	$.ajax({
		async: false,
		headers: { "X-CSRF-Token": GLOBALVARS.CSRF() },
		type: 'POST',
		url: '/players_games', 
		data: {players_game: {
						player_id: GLOBALVARS.currentPlayer.id,
						game_id: game.id,
						position: position
					}},
		success: function(res){
			console.log(res)
		}
	})
}

function createIfNeededAndJoinTheOnlyGame(position){
	getGames();
	if(GLOBALVARS.games !== undefined ){ // && GLOBALVARS.games.length !== 0
		GLOBALVARS.currentGame = GLOBALVARS.games.slice(-1)[0]
	}
	if(GLOBALVARS.currentGame === undefined)
		newGame();
	joinGame(GLOBALVARS.currentGame, position)
}

function playAsLeft(){
	// window.location.hash = "#playAsLeft";
	newPlayer('player1');
	GLOBALVARS.leftPlayerChannel = consumer.subscriptions.create("LeftPlayerChannel", {
		received(data) {
			$("#rightPaddle").attr('y', data.y)
		}
	});
	GLOBALVARS.pongChannel = consumer.subscriptions.create("PongChannel", {
		received(data) {
			$("#ball").attr('x', data.x)
			$("#ball").attr('y', data.y)
		}
	});
	// $.ajax({
	// 	url: '/chooseWhoAmI', data: {mynameis: 'left'}, type: 'GET'
	// })
	$("#main").html($("#pongTemplate").html());
	const svgpong = document.getElementById("svgpong")
	const leftPaddle = $("#leftPaddle")
	var myPos = 0
	svgpong.addEventListener("mousemove", function(e){
		myPos = e.clientY - svgpong.getBoundingClientRect().top - 60
		leftPaddle.attr('y', myPos)
		GLOBALVARS.leftPlayerChannel.perform('sendInfos', {y: myPos})
	});
	$("#start").on('click', function(){
		createIfNeededAndJoinTheOnlyGame('left')
	})
}

function playAsRight(){
	// window.location.hash = "#playAsRight";
	newPlayer('player2');
	GLOBALVARS.rightPlayerChannel = consumer.subscriptions.create("RightPlayerChannel", {
		received(data) {
			$("#leftPaddle").attr('y', data.y)
		}
	});
	GLOBALVARS.pongChannel = consumer.subscriptions.create("PongChannel", {
		received(data) {
			$("#ball").attr('x', data.x)
			$("#ball").attr('y', data.y)
		}
	});
	// $.ajax({
	// 	url: '/chooseWhoAmI', data: {mynameis: 'right'}, type: 'GET'
	// })
	$("#main").html($("#pongTemplate").html());
	const svgpong = document.getElementById("svgpong")
	const rightPaddle = $("#rightPaddle")
	svgpong.addEventListener("mousemove", function(e){
		const myPos = e.clientY - svgpong.getBoundingClientRect().top - 60
		rightPaddle.attr('y', myPos)
		GLOBALVARS.rightPlayerChannel.perform('sendInfos', {y: myPos})
	});
	$("#start").on('click', function(){
		createIfNeededAndJoinTheOnlyGame('right')
	})
}

function watch(){
	// window.location.hash = "#watch";
	GLOBALVARS.leftPlayerChannel = consumer.subscriptions.create("LeftPlayerChannel", {
		received(data) {
			$("#rightPaddle").attr('y', data.y)
		}
	});
	GLOBALVARS.rightPlayerChannel = consumer.subscriptions.create("RightPlayerChannel", {
		received(data) {
			$("#leftPaddle").attr('y', data.y)
		}
	});
	GLOBALVARS.pongChannel = consumer.subscriptions.create("PongChannel", {
		received(data) {
			$("#ball").attr('x', data.x)
			$("#ball").attr('y', data.y)
		}
	});
	$.ajax({
		url: '/chooseWhoAmI', data: {mynameis: 'watch'}, type: 'GET'
	})
	$("#main").html($("#watchTemplate").html());
}

function root(){
	// window.location.hash = "#root";
	$("#main").html($("#rootTemplate").html());
	$("#buttonPlayerLeft").on("click", function(){window.location.hash = "#playAsLeft"});
	$("#buttonPlayerRight").on("click", function(){window.location.hash = "#playAsRight"});
	$("#buttonToWatch").on("click", function(){window.location.hash = "#watch"});
}

function unsubIfNeeded(){
	if(GLOBALVARS.rightPlayerChannel !== undefined){
		GLOBALVARS.rightPlayerChannel.unsubscribe();
		GLOBALVARS.rightPlayerChannel = undefined;
	}
	if(GLOBALVARS.leftPlayerChannel !== undefined){
		GLOBALVARS.leftPlayerChannel.unsubscribe();
		GLOBALVARS.leftPlayerChannel = undefined;
	}
	if(GLOBALVARS.pongChannel !== undefined){
		GLOBALVARS.pongChannel.unsubscribe();
		GLOBALVARS.pongChannel = undefined;
	}
}

$(window).on('beforeunload', function (e) {
	unsubIfNeeded();
});

$(window).on("hashchange", function() {
	unsubIfNeeded();
	switch (window.location.hash) {
		case "#playAsLeft":
			playAsLeft();
			break;
		case "#playAsRight":
			playAsRight();
			break;
		case "#watch":
			watch();
			break;
		case "#root":
			root();
			break;
	}
});

window.location.hash = "#root"