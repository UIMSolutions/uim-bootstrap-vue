module uim.bsv.components.modals.content;

import uim.bsv;

class DBSVModalContent: DBSVComponent {
	this() {
		super();
		
		_name = "bsv-modal-content";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-content"]);
	}
}
auto BSVModalContent() { return new DBSVModalContent; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

