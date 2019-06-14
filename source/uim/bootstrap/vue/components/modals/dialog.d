module uim.bsv.components.modals.dialog;

import uim.bsv;

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

