module uim.bsv.components.tables.header;

import uim.bsv;

class DBSVTableHeader : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-table-header";
		_props["light"] = VUEProp("light", ["Boolean"]);
		_props["dark"] = VUEProp("dark", ["Boolean"]);
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
