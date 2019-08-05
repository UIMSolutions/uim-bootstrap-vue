module uim.bootstrap.vue.modals.header;

import uim.bootstrap.vue;

class DBV5ModalHeader: DVUEComponent {
	this() {
		super();
		
		_name = "BV5-modal-header";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-header"]);
	}
}
auto BV5ModalHeader() { return new DBV5ModalHeader; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

