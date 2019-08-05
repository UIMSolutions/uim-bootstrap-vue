module uim.bootstrap.vue.navbars.toggler;

import uim.bootstrap.vue;

class DBV5NavbarToggler : DVUEComponent {
	this() {
		super(); 
		
		_name = "BV5-navbar-toggler";
		_render = initVueVars~
			`content.push(this.$slots.default);`~ 
				createVueElement("button", ["navbar-toggler"]);
	}
}
auto BV5NavbarToggler() { return new DBV5NavbarToggler; }

unittest {
	writeln("Testing ", __MODULE__);	
}	

