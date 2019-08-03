module uim.bootstrap.vue.components.modals.header;

import uim.bootstrap.vue;

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

