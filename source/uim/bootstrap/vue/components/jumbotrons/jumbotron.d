module uim.bootstrap.vue.jumbotrons.jumbotron;

import uim.bootstrap.vue;

class DBV5Jumbotron : DVUEComponent {
	this() {
		super(); 
		
		_name = "BV5-jumbotron";
		_props["fluid"] = "Boolean";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				jsIf("this.fluid", "classes.push('jumbotron-fluid');")~
				createVueElement("div", ["jumbotron"]);
	}
}
auto BV5Jumbotron() { return new DBV5Jumbotron; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
