module uim.bootstrap.vue.components.modals.title;

import uim.bootstrap.vue;

class DBSVModalTitle: DVUEComponent {
	this() {
		super();
		
		_name = "bsv-modal-title";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal-title"]);
	}
}
auto BSVModalTitle() { return new DBSVModalTitle; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

