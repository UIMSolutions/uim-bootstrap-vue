module uim.bootstrap.vue.components.tables.header;

import uim.bootstrap.vue;

class DBSVTableHeader : DVUEComponent {
	this() {
		super();
		
		_name = "bsv-table-header";
		_props["light"] = "Boolean";
		_props["dark"] = "Boolean";
		_render = initVueVars~
				`content.push(this.$slots.default);`~ 
				jsIf("this.light", "classes.push('table-light');")~
				jsIf("this.dark", "classes.push('table-dark');")~
				createVueElement("thead");
	}
}
auto BSVTableHeader() { return new DBSVTableHeader; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
