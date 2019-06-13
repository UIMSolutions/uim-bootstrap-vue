module uim.bsv.components.modals.header;

import uim.bsv;

class DBSVModalHeader: DBSVComponent {
	this() {
		super();
		
		_name = "bsv-modal-header";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-header"]);
	}
}
auto BSVModalHeader() { return new DBSVModalHeader; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

