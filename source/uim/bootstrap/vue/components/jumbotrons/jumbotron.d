module uim.bootstrap.vue.components.jumbotrons.jumbotron;

import uim.bootstrap.vue;

class DBSVJumbotron : DBSVComponent {
	this() {
		super(); 
		
		_name = "bsv-jumbotron";
		_props["fluid"] = "Boolean";
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
