module uim.bootstrap.vue.components.progresses.progress;

import uim.bootstrap.vue;

class DBV5Progress: DVUEComponent {
	this() {
		super();
		
		_name = "BV5-progress";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["progress"]);
	}
}
auto BV5Progress() { return new DBV5Progress; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
