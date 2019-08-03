module uim.bootstrap.vue.components.tables.body_;

import uim.bootstrap.vue;

class DBSVTableBody : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-table-body";
		_render = initVueVars~
				`content.push(this.$slots.default);`~ 
				createVueElement("tbody");
	}
}
auto BSVTableBody() { return new DBSVTableBody; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
