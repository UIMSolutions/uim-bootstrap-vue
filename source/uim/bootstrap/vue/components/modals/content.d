module uim.bootstrap.vue.modals.content;

import uim.bootstrap.vue;

class DBV5ModalContent: DVUEComponent {
	this() {
		super();
		
		_name = "BV5-modal-content";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-content"]);
	}
}
auto BV5ModalContent() { return new DBV5ModalContent; }

unittest {
		
}	

