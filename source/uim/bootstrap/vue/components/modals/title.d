module uim.bootstrap.vue.modals.title;

import uim.bootstrap.vue;

class DBV5ModalTitle: DVUEComponent {
	this() {
		super();
		
		_name = "BV5-modal-title";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-title"]);
	}
}
auto BV5ModalTitle() { return new DBV5ModalTitle; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

