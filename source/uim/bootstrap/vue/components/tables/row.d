module uim.bootstrap.vue.components.tables.row;

import uim.bootstrap.vue;

class DBSVTableRow : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-table-row";
		_render = initVueVars~
				`content.push(this.$slots.default);`~ 
				createVueElement("tr");
	}
}
auto BSVTableRow() { return new DBSVTableRow; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
