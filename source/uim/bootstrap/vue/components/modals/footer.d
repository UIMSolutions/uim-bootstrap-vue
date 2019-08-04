module uim.bootstrap.vue.components.modals.footer;

import uim.bootstrap.vue;

class DBSVModalFooter: DVUEComponent {
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

