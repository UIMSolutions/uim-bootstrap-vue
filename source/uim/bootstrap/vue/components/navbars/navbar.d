module uim.bootstrap.vue.components.navbars.navbar;

import uim.bootstrap.vue;

class DBSVNavbar : DVUEComponent {
	this() {
		super(); 
		
		_name = "bsv-navbar";
		_props["dark"] = "Boolean";
		_props["light"] = "Boolean";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				jsIf("this.light", "classes.push(this.light)")~
				jsIf("this.dark", "classes.push(this.dark)")~
				createVueElement("nav", ["navbar"]);
	}
}
auto BSVNavbar() { return new DBSVNavbar; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
