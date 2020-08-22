
// require('backbone')
// require('')
class MyModel extends Backbone.Model {
	url() {return 'coucou'}
}

async function LoadModule(module) {
	if (!window[module]){
		// dynamic loading
		window[module] = await import(`${module}.js`);
	}	
	return window[module];
}

window.moduleLoader = LoadModule

// When the user clicks on the button, open the modal
var btn = document.getElementById("myBtn");
btn.onclick = async function() {
	let element = document.createElement('div');
	element.innerHTML = '<p>Loading...</p>';
	let modal = new (await window.moduleLoader('Modal')).default({ 
		title: 'Create a new Room', 
		elem: element 
	});
	modal.show();
	let body = ''
	// prepare body...
	body += 'coucou'
	// body prepared.
	element.innerHTML = body;
}
