module uim.bootstrap.vue.modals.footer;

import uim.bootstrap.vue;

class DBV5ModalFooter: DVUEComponent {
	this() {
		super();
		
		_name = "BV5-modal-footer";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-footer"]);
	}
}
auto BV5ModalFooter() { return new DBV5ModalFooter; }

unittest {
		
}	

