
function cat404(){
	return $('#cat404').html()
}

function popMessage(message){
	var flash = $('#flashMessage')
	flash.stop(true, true)
	flash.html('<h2>' + message + '</h2>')
	flash.show()
	flash.fadeOut(5000)
}

function pop404(){
	popMessage(cat404())
}

function send(url, params){
	$.ajax({
			url: url,
			data: params,
			type: 'POST'
	})
	popMessage('accepted')
}

function popChoice(message, url, params) {
    var flash = $('#flashMessage')
    flash.stop(true, true)
    flash.html('<h2>' + message + '</h2>'+
                "<button id='cancel'>cancel</button><button id='accept'>accept</button"
                )
    $('#flashMessage #accept').on('click', function(){
			// send(url,params)
			console.log('thanks bro')
		})
    $('#flashMessage #cancel').on('click', function(){
			popWindows('refused')
		})
    flash.show()
    flash.fadeOut(7000)
}

$('#button1').on('click', pop404)
$('#button2').on('click', function(){popChoice('Choose please','thisIsANiceUrl.com',{super:'coucou'})})
$('#button3').on('click', function(){popMessage('salut')})