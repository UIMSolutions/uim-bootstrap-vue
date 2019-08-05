module uim.bootstrap.vue.components.collapses.collapse;

import uim.bootstrap.vue;

class DBV5Collapse : DVUEComponent {
	this() {
		super(); 
		
		_name = "BV5-collapse";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("a", ["collapse"]);
	}
}
auto BV5Collapse() { return new DBV5Collapse; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
