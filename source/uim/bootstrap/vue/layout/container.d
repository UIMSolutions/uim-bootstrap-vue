module uim.bootstrap.vue.layout.container;

import uim.bootstrap.vue;

class DBSVContainer : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-container";
		_props["textColor"] = "String";
		_props["bgColor"] = "String";
		_props["fluid"] = "Boolean";
		_render = initVueVars~
				jsIfElse("this.fluid", "classes.push('container-fluid');", "classes.push('container');")~ 
				jsIf("this.textColor", "classes.push('text-'+this.textColor);")~ 
				jsIf("this.bgColor", "classes.push('bg-'+this.bgColor);")~
				`content.push(this.$slots.default);`~ 
				createVueElement("div");
	}
}
auto BSVContainer() { return new DBSVContainer; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
