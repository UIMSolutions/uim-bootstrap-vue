module uim.bootstrap.vue.components.modals.modal;

import uim.bootstrap.vue;

class DBV5Modal: DVUEComponent {
	this() {
		super();
		
		_name = "BV5-modal";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["modal"], ["tabindex":"-1", "role":"dialog"]);
	}
}
auto BV5Modal() { return new DBV5Modal; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

