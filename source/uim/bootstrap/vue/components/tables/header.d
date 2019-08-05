module uim.bootstrap.vue.components.tables.header;

import uim.bootstrap.vue;

class DBV5TableHeader : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-table-header";
		_props["light"] = "Boolean";
		_props["dark"] = "Boolean";
		_render = initVueVars~
				`content.push(this.$slots.default);`~ 
				jsIf("this.light", "classes.push('table-light');")~
				jsIf("this.dark", "classes.push('table-dark');")~
				createVueElement("thead");
	}
}
auto BV5TableHeader() { return new DBV5TableHeader; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
