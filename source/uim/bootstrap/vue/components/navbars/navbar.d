module uim.bootstrap.vue.components.navbars.navbar;

import uim.bootstrap.vue;

class DBV5Navbar : DVUEComponent {
	this() {
		super(); 
		
		_name = "BV5-navbar";
		_props["dark"] = "Boolean";
		_props["light"] = "Boolean";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				jsIf("this.light", "classes.push(this.light)")~
				jsIf("this.dark", "classes.push(this.dark)")~
				createVueElement("nav", ["navbar"]);
	}
}
auto BV5Navbar() { return new DBV5Navbar; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
