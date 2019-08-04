module uim.bootstrap.vue.components.collapses.collapse;

import uim.bootstrap.vue;

class DBSVCollapse : DVUEComponent {
	this() {
		super(); 
		
		_name = "bsv-collapse";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("a", ["collapse"]);
	}
}
auto BSVCollapse() { return new DBSVCollapse; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
