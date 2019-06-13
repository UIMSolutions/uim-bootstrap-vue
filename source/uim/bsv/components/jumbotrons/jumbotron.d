module uim.bsv.components.jumbotrons.jumbotron;

import uim.bsv;

class DBSVJumbotron : DBSVComponent {
	this() {
		super(); 
		
		_name = "bsv-jumbotron";
		_props["fluid"] = VUEProp("fluid", ["Boolean"]);
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				jsIf("this.fluid", "classes.push('jumbotron-fluid');")~
				createVueElement("div", ["jumbotron"]);
	}
}
auto BSVJumbotron() { return new DBSVJumbotron; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
