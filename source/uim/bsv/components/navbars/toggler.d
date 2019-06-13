module uim.bsv.components.navbars.toggler;

import uim.bsv;

class DBSVNavbarToggler : DBSVComponent {
	this() {
		super(); 
		
		_name = "bsv-navbar-toggler";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("button", ["navbar-toggler"]);
	}
}
auto BSVNavbarToggler() { return new DBSVNavbarToggler; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

