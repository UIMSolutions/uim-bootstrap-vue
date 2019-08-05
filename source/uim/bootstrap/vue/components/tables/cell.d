module uim.bootstrap.vue.components.tables.cell;

import uim.bootstrap.vue;

class DBV5TableCell : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-table-cell";
		_render = initVueVars~
				`content.push(this.$slots.default);`~ 
				createVueElement("td");
	}
}
auto BV5TableCell() { return new DBV5TableCell; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
