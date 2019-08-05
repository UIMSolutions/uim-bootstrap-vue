module uim.bootstrap.vue.layout.container;

import uim.bootstrap.vue;

class DBV5Container : DVUEComponent {
	this() {
		super();
		
		_name = "BV5-container";
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
auto BV5Container() { return new DBV5Container; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
