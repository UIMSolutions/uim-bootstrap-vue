module uim.bootstrap.vue.components.tables.row;

import uim.bootstrap.vue;

class DBV5TableRow : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-table-row";
		_render = initVueVars~
				`content.push(this.$slots.default);`~ 
				createVueElement("tr");
	}
}
auto BV5TableRow() { return new DBV5TableRow; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
