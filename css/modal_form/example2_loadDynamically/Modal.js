class Modal extends Backbone.View {

	preinitialize(content) {
		this.uid = Date.now();
		this.content = content;
		this.events = {
			[`click div#modal-${this.uid}`]: 'hide'
		};
	}

	initialize() {
		this.el.innerHTML += /* html */`
			<div id="modal-${this.uid}" class="modal">
				<div class="modal-content">
					<div class="modal-header">
						<h1>${this.content.title}</h1>
					</div>
					<div class="modal-body"></div>
				</div>
			</div>`;
		this.dialog = this.el.querySelector(`div#modal-${this.uid}`);
		this.dialog.querySelector(`div.modal-body`).appendChild(this.content.elem);
		document.body.appendChild(this.el);
	}

	setTitle(title) {
		this.el.querySelector('.modal-header h1').textContent = title;
	}

	getMain() {
		return this.dialog;
	}

	getBody() {
		return this.el.querySelector('.modal-body');
	}

	show() {
		this.dialog.classList.add('show-modal');
	}

	hide(event) {
		if (!event || event.target == this.dialog) {
			this.dialog.classList.remove('show-modal');
			setTimeout(() => {
				this.remove();
			}, 300);
		}
	}
}

export default Modal;
