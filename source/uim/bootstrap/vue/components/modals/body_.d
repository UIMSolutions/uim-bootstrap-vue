module uim.bootstrap.vue.modals.body_;

import uim.bootstrap.vue;

class DBV5ModalBody: DVUEComponent {
	this() {
		super();
		
		_name = "BV5-modal-body";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-body"]);
	}
}
auto BV5ModalBody() { return new DBV5ModalBody; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

