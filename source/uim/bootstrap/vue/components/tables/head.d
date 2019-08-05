module uim.bootstrap.vue.components.tables.head;

import uim.bootstrap.vue;

class DBV5TableHead : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-table-head";
		_render = initVueVars~
				`content.push(this.$slots.default);`~ 
				createVueElement("th");
	}
}
auto BV5TableHead() { return new DBV5TableHead; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
