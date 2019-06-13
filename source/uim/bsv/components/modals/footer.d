module uim.bsv.components.modals.footer;

import uim.bsv;

class DBSVModalFooter: DBSVComponent {
	this() {
		super();
		
		_name = "bsv-modal-footer";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-footer"]);
	}
}
auto BSVModalFooter() { return new DBSVModalFooter; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

