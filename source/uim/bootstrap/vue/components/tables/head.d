module uim.bsv.components.tables.head;

import uim.bsv;

class DBSVTableHead : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-table-head";
		_render = initVueVars~
				`content.push(this.$slots.default);`~ 
				createVueElement("th");
	}
}
auto BSVTableHead() { return new DBSVTableHead; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
