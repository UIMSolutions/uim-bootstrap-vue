module uim.bootstrap.vue.components.tables.head;

import uim.bootstrap.vue;

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
