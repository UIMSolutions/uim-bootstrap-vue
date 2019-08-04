module uim.bootstrap.vue.components.progresses.progress;

import uim.bootstrap.vue;

class DBSVProgress: DVUEComponent {
	this() {
		super();
		
		_name = "bsv-progress";
		_render = initVueVars~
			`content=this.$slots.default;`~ 
				createVueElement("div", ["progress"]);
	}
}
auto BSVProgress() { return new DBSVProgress; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
