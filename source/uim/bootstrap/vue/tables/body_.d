module uim.bootstrap.vue.tables.body_;

import uim.bootstrap.vue;

class DBV5TableBody : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-table-body";
		_render = initVueVars~
				`content.push(this.$slots.default);`~ 
				createVueElement("tbody");
	}
}
auto BV5TableBody() { return new DBV5TableBody; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
