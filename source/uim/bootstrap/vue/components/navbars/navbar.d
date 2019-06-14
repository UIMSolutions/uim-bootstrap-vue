module uim.bsv.components.navbars.navbar;

import uim.bsv;

class DBSVNavbar : DBSVComponent {
	this() {
		super(); 
		
		_name = "bsv-navbar";
		_props["dark"] = VUEProp("dark", ["Boolean"]);
		_props["light"] = VUEProp("light", ["Boolean"]);
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
