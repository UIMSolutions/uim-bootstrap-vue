module uim.bsv.components.progresses.progress;

import uim.bsv;

class DBSVProgress: DBSVComponent {
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
