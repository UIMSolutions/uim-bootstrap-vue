module uim.bootstrap.vue.components.modals.dialog;

import uim.bootstrap.vue;

class DBSVModalDialog: DBSVComponent {
	this() {
		super();
		
		_name = "bsv-modal-dialog";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-dialog"], ["role":"document"]);
	}
}
auto BSVModalDialog() { return new DBSVModalDialog; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

