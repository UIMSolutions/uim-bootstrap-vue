module uim.bsv.components.tables.cell;

import uim.bsv;

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
