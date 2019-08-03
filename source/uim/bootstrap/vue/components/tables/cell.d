module uim.bootstrap.vue.components.tables.cell;

import uim.bootstrap.vue;

class DBSVTableCell : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-table-cell";
		_render = initVueVars~
				`content.push(this.$slots.default);`~ 
				createVueElement("td");
	}
}
auto BSVTableCell() { return new DBSVTableCell; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
