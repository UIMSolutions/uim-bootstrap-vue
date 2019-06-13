module uim.bsv.components.navbars.togglericon;

import uim.bsv;

class DBSVNavbarTogglerIcon : DBSVComponent {
	this() {
		super(); 
		
		_name = "bsv-navbar-toggler-icon";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("button", ["navbar-toggler-icon"]);
	}
}
auto BSVNavbarTogglerIcon() { return new DBSVNavbarTogglerIcon; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

