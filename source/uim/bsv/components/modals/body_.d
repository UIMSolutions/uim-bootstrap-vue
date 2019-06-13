﻿module uim.bsv.components.modals.body_;

import uim.bsv;

class DBSVModalBody: DBSVComponent {
	this() {
		super();
		
		_name = "bsv-modal-body";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-body"]);
	}
}
auto BSVModalBody() { return new DBSVModalBody; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

