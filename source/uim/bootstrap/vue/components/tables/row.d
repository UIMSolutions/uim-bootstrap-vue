module uim.bsv.components.tables.row;

import uim.bsv;

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
