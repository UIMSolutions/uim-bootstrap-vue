module uim.bsv.components.modals.modal;

import uim.bsv;

class DBSVModal: DBSVComponent {
	this() {
		super();
		
		_name = "bsv-modal";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal"], ["tabindex":"-1", "role":"dialog"]);
	}
}
auto BSVModal() { return new DBSVModal; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

