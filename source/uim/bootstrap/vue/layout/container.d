module uim.bsv.layout.container;

import uim.bsv;

class DBSVContainer : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-container";
		_props["textColor"] = VUEProp("textColor", ["String"]);
		_props["bgColor"] = VUEProp("bgColor", ["String"]);
		_props["fluid"] = VUEProp("fluid", ["Boolean"]);
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
