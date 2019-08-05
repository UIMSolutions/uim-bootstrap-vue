module uim.bootstrap.vue.components.modals.dialog;

import uim.bootstrap.vue;

class DBV5ModalDialog: DVUEComponent {
	this() {
		super();
		
		_name = "BV5-modal-dialog";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-dialog"], ["role":"document"]);
	}
}
auto BV5ModalDialog() { return new DBV5ModalDialog; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

